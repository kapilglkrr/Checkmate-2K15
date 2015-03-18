from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Question(models.Model):
	no=models.IntegerField()
	content=models.CharField(max_length=5000)
	answer=models.CharField(max_length=50)

class UserProfile(models.Model):
	user=models.ForeignKey(User,unique=True)
	score=models.IntegerField(default=0)
	name1=models.CharField(max_length=200)
	name2=models.CharField(max_length=200,blank=True,null=True)
	phone1=models.BigIntegerField(null=True)
	phone2=models.BigIntegerField(blank=True,null=True)
	email1=models.EmailField()
	email2=models.EmailField(blank=True,null=True)
	password=models.CharField(max_length=50)
	qu=models.ManyToManyField('Cordinates',related_name='qu')#storing list of coordinates unlocked
	waf=models.ManyToManyField('Cordinates',related_name='waf') #storing list of wrong attempted coordinates on first attempt
	was=models.ManyToManyField('Cordinates',related_name='was') #storing list of wrong attempted coordinates on second attempt
	words=models.ManyToManyField('Words',related_name='words') #storing list of words made
	def __unicode__(self):
		return self.user.username

class Words(models.Model):
	word=models.CharField(max_length=15)
	points=models.IntegerField()

class Cordinates(models.Model):
	value=models.IntegerField()