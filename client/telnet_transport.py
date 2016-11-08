# coding=utf-8
#!/usr/bin/env python


import telnetlib
import threading
import sys
import time
import errno
from socket import error as socket_error

import client
import plugins
import commands

import config

class TelnetTransport(threading.Thread):
    def __init__(self, host, port, client):
        super(TelnetTransport, self).__init__()
        self.host = host
        self.port = port
        self.active = True
        self.client = client
        self.connected = False
  
        self.conn()

    def run(self):
        while self.active:
            if not self.connected:
                self.reconnect()
                continue
            try:
                if self.t.sock_avail():
                    self.client.on_data(self.t.read_eager())
            except EOFError as e:
                print "EOFError: %s" % e
                self.connected = False
                self.reconnect()
                

    def write(self, msg):
        if self.connected:
            self.t.write(msg)
    
    def exit(self):
        self.active = False
        self.t.get_socket().close()
        self.t.close()
        self.connected = False
    
    def reconnect(self, delay = 30):
        print 'Reconnecting after %s seconds' % delay
        for i in range(delay):
            sys.stdout.write('%s\r' % (i+1))
            sys.stdout.flush()
            time.sleep(1)
        print ''
        self.conn()
    
    def conn(self):
        try:
            self.t = telnetlib.Telnet(self.host, self.port)
            self.active = True
            self.connected = True
        except socket_error as e:
            print 'Connection error: [%s] %s' % (e.errno, e)
            self.connected = False
            

c = client.MudClient()
c.add_out(sys.stdout)
c.add_out(open('mud.log', 'a'))

c.add_plugin(plugins.HourPlugin())
c.add_plugin(plugins.OfftopLogger())
c.add_plugin(plugins.ScreamLogger())
c.add_plugin(plugins.BoltLogger())
if config.auto_login:
    c.add_plugin(plugins.LoginPlugin(config.user, config.password))

c.add_plugin(plugins.BoardsLogger())

c.set_command("echo", commands.EchoCommand())
c.set_command("exit", commands.ExitCommand())

for p in config.plugins:
    c.add_plugin(p)

m = TelnetTransport('bylins.su', 4000, c)
#m = TelnetTransport('188.93.213.215', 4000, c)
#m = TelnetTransport('localhost', 4000, c)

c.set_transport(m)
m.start()

print c.commands
print c.plugins



while m.active:
    try:
        data = raw_input()
        c.command(data)
    except:
        m.active = False

