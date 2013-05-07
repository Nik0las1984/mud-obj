#!/usr/bin/env python

import sys
import fileinput

import client
import plugins

c = client.MudClient()
c.add_plugin(plugins.HourPlugin())
c.add_plugin(plugins.OfftopLogger())

c.set_transport(sys.stdout)
#c.add_out(sys.stdout)

for line in fileinput.input():
    c.on_data(line)
