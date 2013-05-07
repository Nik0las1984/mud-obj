#!/usr/bin/env python


import telnetlib
import threading
import sys

import client
import plugins

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
            self.client.on_data(self.t.read_some())

    def write(self, msg):
        self.t.write(msg)
    

c = client.MudClient()
c.add_out(sys.stdout)
c.add_out(open('mud.log', 'a'))

c.add_plugin(plugins.HourPlugin())
c.add_plugin(plugins.OfftopLogger())
c.add_plugin(plugins.ScreamLogger())
c.add_plugin(plugins.BoltLogger())

m = TelnetTransport('bylins.su', 4000, c)
c.set_transport(m)
m.start()

while True:
    data = raw_input()
    c.command(data)

