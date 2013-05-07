from django.db import models

class User(models.Model):
    name = models.TextField()
    
    @staticmethod
    def has_user(name):
        return User.objects.filter(name__iexact = name).count() > 0
    
    @staticmethod
    def get_user(name):
        return User.objects.get(name__iexact = name)
    
    def __unicode__(self):
        return self.name
    
    @staticmethod
    def get_or_create(name):
        if not User.has_user(name):
            u = User()
            u.name = name
            u.save()
        return User.get_user(name)
