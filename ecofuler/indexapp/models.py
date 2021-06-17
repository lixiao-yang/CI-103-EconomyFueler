from django.db import models

# Create your models here.





class UserType(models.Model):


    title = models.CharField(max_length=32)

    """
        ========  create table UserType(   =========
        ========  title varchar(32)        =========
        ========  );                       =========
    """

class UserInfo(models.Model):
    name = models.CharField(max_length=16)
    age = models.IntegerField()
    ut = models.ForeignKey('UserType',on_delete=models.CASCADE)
    """
            ========  create table UserInfo(   =========
            ========  name varchar(16),        =========
            ========  age int(),               =========
            ========  ut varchar,              =========(foreign key)
            ========  );                       =========
        """


