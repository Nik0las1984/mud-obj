# coding=utf-8

class EchoCommand():
    def __init__(self):
        pass
    
    def on_command(self, c):
        com = c[c.index(' ') + 1:]
        self.client.command(com)
    
    def set_client(self, c):
        self.client = c

class ExitCommand():
    def on_command(self, c):
        self.client.exit()
    
    def set_client(self, c):
        self.client = c
