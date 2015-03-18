from django.shortcuts import render_to_response,render
from django.template import RequestContext
from django.http import HttpResponseRedirect,Http404,HttpResponse
from django.contrib import auth
from django.contrib.auth.models import User
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.auth import authenticate, login
from main.models import *
from django.views.decorators.csrf import csrf_protect
from django.contrib.auth.decorators import login_required
from main.forms import *
from django.db import IntegrityError
from django.utils import simplejson
from django.views.decorators.csrf import csrf_exempt
from django.core import serializers
import json
@csrf_exempt
#@csrf_protect
@login_required
def question(request):
	if request.POST:
		no = int(request.POST['no'])
	if request.GET:
		no=int(request.GET['no'])
	u=request.user
	try:
		up=UserProfile.objects.get(user=u)
	except ObjectDoesNotExist:
		raise Http404
	try:
		ques=Question.objects.filter(no=no)
		q=ques
	except:
		raise Http404
	for i in ques:
		cv=i.no
		cid=Cordinates.objects.get(value=cv)
	 	if up.qu.filter(cordinates_id=cid.id).exists():
	 		q=''
	 		break
	 	elif up.waf.filter(cordinates_id=cid.id).exists():
	 		if up.was.filter(cordinates_id=cid.id).exists():
	 			q=''
	 			break
	 		else:
	 			q=Question.objects.get(id=i.id+25)
	 	else:
	 		q=i

	if request.POST and 'answer' in request.POST:
		data=request.POST
		if data['answer']==q.answer:
			c=Cordinates.objects.get(value=q.no)
			up.qu.add(c)
			up.save()
			resp={}
			resp['status']=1
			resp['score']=up.score
			resp['qno']=q.no
			json = simplejson.dumps(resp)
			return HttpResponse(json, mimetype='application/json')
		elif data['answer'] is not q.answer :
		 	if up.waf.filter(cordinates_id=c.id).exists():
	 			if up.was.filter(cordinates_id=c.id).exists():
			up.wa.add(q)
			up.score-=2
			resp={}
			resp['status']=0
			resp['score']=up.score
			resp['qno']=q.no
			json = simplejson.dumps(resp)
			return HttpResponse(json, mimetype='application/json')

	if request.POST and 'word' in request.POST:
		word=request.POST
		w=Words.objects.get(word=word['word'])
		if w:
			up.words += word
			up.score=w.points
			u.save()
			resp={}
			resp['status']=1
			resp['score']=up.score
			resp['qno']=q.no
			json = simplejson.dumps(resp)
			return HttpResponse(json, mimetype='application/json')
		
		else:
			resp={}
			resp['status']=0
			resp['score']=up.score
			resp['qno']=q.no
			json = simplejson.dumps(resp)
			return HttpResponse(json, mimetype='application/json')	
	# elif request.POST:
	# 	raise Http404
	else :
		resp={}
		resp['status']=1
		resp['content']=q.content
		json = simplejson.dumps(resp)
		return HttpResponse(json, mimetype='application/json')

@login_required
def main(request):
	u=request.user
	up=UserProfile.objects.get(user=u)
	return render_to_response('index.html', {'u':u,'up':up,},context_instance=RequestContext(request))
@login_required
def initialize(request):
	u=request.user
	up=UserProfile.objects.get(user=u)
	resp={}
	resp['unlocked']=serializers.serialize("json",up.qu.all())
	resp['waf']=serializers.serialize("json",up.waf.all())
	resp['was']=serializers.serialize("json",up.was.all())
	resp['words']=serializers.serialize("json",up.words.all())
	json=simplejson.dumps(resp)
	return HttpResponse(json, mimetype='application/json')
@csrf_protect
def login(request):
	if request.user.is_authenticated():
		return HttpResponseRedirect('/')
	if request.POST:
		form=LoginForm(request.POST)
		if form.is_valid():	
			data=form.cleaned_data
			username = data['username']
			password = data['password']
			user = authenticate(username=username, password=password)
			if user is not None:
				if user.is_active:
					auth.login(request, user)
					return HttpResponseRedirect('/')
					
				else:
					state = "Your account is not active, please contact the site admin."
					return render_to_response('LOGINhtml.html', {'form':form,'state':state},context_instance=RequestContext(request))
					
			else:
				state = "Your username and/or password were incorrect."
				return render_to_response('LOGINhtml.html', {'form':form,'state':state},context_instance=RequestContext(request))
		else:
			return render_to_response('LOGINhtml.html', {'form':form},context_instance=RequestContext(request))
			
	else:
		form=LoginForm()
		return render_to_response('LOGINhtml.html', {'form':form},context_instance=RequestContext(request))
@csrf_protect
def register(request):
	m=''
	if request.user.is_authenticated():
		return HttpResponseRedirect('/main/')
	if request.POST:

		form=RegistrationForm(request.POST)
		if form.is_valid():
			
			data=form.cleaned_data
			u=User()
			up=UserProfile()
			u.username=data['username']
			up.password=data['password']
			u.set_password(data['password'])
			u.email=data['email1']
			try:
				u.save()
			except IntegrityError:
				m='Username already exists'
				return render_to_response('REGIShtml.html',{'message':m},context_instance=RequestContext(request))
			up.name1=data['name1']
			up.name2=data['name2']
			up.phone1=data['phone1']
			up.phone2=data['phone2']
			up.email1=data['email1']
			up.email2=data['email2']
			up.user=u
			up.save()
			return HttpResponseRedirect('/login/')
		else:
			return render_to_response('REGIShtml.html',{'message':m},context_instance=RequestContext(request))
	else:
		form=RegistrationForm()
		return render_to_response('REGIShtml.html',{'form':form},context_instance=RequestContext(request))

@login_required
def logout(request):
    auth.logout(request)
    return HttpResponseRedirect("/login/")

def rulebook(request):
	 return render_to_response('rulebook.html',context_instance=RequestContext(request))