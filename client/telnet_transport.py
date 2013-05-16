# coding=utf-8
#!/usr/bin/env python


import telnetlib
import threading
import sys

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
  
        self.t = telnetlib.Telnet(host, port)

    def run(self):
        while self.active:
            if self.t.sock_avail():
                self.client.on_data(self.t.read_eager())

    def write(self, msg):
        self.t.write(msg)
    
    def exit(self):
        self.active = False
        self.t.get_socket().close()
        self.t.close()

c = client.MudClient()
c.add_out(sys.stdout)
c.add_out(open('mud.log', 'a'))

c.add_plugin(plugins.HourPlugin())
c.add_plugin(plugins.OfftopLogger())
c.add_plugin(plugins.ScreamLogger())
c.add_plugin(plugins.BoltLogger())

c.add_plugin(plugins.BoardsLogger())

c.set_command("echo", commands.EchoCommand())
c.set_command("exit", commands.ExitCommand())

for p in config.plugins:
    c.add_plugin(p)

m = TelnetTransport('bylins.su', 4000, c)
c.set_transport(m)
m.start()

print c.commands
print c.plugins

if config.auto_login:
    c.login(config.user, config.password)

while m.active:
    data = raw_input()
    c.command(data)

