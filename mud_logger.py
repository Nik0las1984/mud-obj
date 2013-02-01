#!/usr/bin/env python
# -*- coding: UTF-8 -*-

import asyncore
import socket
import sys
import datetime

MUD_HOST = 'localhost'
MUD_PORT = 4000
LOCAL_PORT = 4005

f = open(sys.argv[1], 'aw')

def append_time(a): return a.replace('\n', '\n%s ' % datetime.datetime.now())

class Mud(asyncore.dispatcher):
    
    def __init__(self, host, port, client):
        asyncore.dispatcher.__init__(self)
        self.create_socket(socket.AF_INET, socket.SOCK_STREAM)
        self.connect((host, port))
        self.client = client
        self.client.mud = self

    def handle_close(self):
        self.client.close()
        self.close()

    def handle_read(self):
        data = self.recv(8192)
        if len(data) > 0:
            sys.stdout.write(data)
            f.write(append_time(data))
            f.flush()
            self.client.send(data)


class MudHandler(asyncore.dispatcher_with_send):
    def handle_read(self):
        data = self.recv(8192)
        sys.stdout.write(data)
        f.write(append_time(data))
        f.flush()
        self.mud.send(data)
        
class LocalMud(asyncore.dispatcher):
    def __init__(self, port):
        asyncore.dispatcher.__init__(self)
        self.create_socket(socket.AF_INET, socket.SOCK_STREAM)
        self.set_reuse_addr()
        self.bind(('', port))
        self.listen(0xA)
    def handle_close(self):
        self.mud.close()
        self.close()
    def handle_accept(self):
        sock, (host, port) = self.accept()
        #print 'new client from %s:%d' % (host, port)
        self.mud = Mud(MUD_HOST, MUD_PORT, MudHandler(sock))

lm = LocalMud(LOCAL_PORT)
asyncore.loop()

