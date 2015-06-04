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
	except:
		raise Http404
	for i in ques:
		cv=i.no
		cid=Cordinates.objects.get(value=cv)
	 	if up.waf.filter(value=i.no).exists():
 			q=Question.objects.get(id=i.id+25)
 			break
	 	else:
	 		q=i
	 		break

	if request.POST and 'answer' in request.POST:
		data=request.POST
		c=Cordinates.objects.get(value=q.no)
		if data['answer'].lower()==q.answer:
			up.qu.add(c)
			if up.waf.filter(pk=c.id).exists():
				up.waf.remove(c)
			up.save()
			resp={}
			resp['status']=1
			resp['score']=up.score
			resp['qno']=q.no	
			json = simplejson.dumps(resp)
			return HttpResponse(json, mimetype='application/json')
		elif data['answer'].lower() is not q.answer :
		 	if not up.waf.filter(pk=c.id).exists():
		 		up.waf.add(c)
		 		up.score -=2
		 	elif up.waf.filter(pk=c.id).exists():
		 		up.waf.remove(c)
		 		up.was.add(c)
				up.score-=6
			up.save()
			resp={}
			resp['status']=0
			resp['score']=up.score
			resp['qno']=q.no
			json = simplejson.dumps(resp)
			return HttpResponse(json, mimetype='application/json')

	else :
		resp={}
		resp['status']=1
		resp['content']=q.content
		json = simplejson.dumps(resp)
		return HttpResponse(json, mimetype='application/json')
@csrf_exempt
@login_required
def claimword(request):
	u=request.user
	up=UserProfile.objects.get(user=u)
	resp={}
	if request.POST:
		word=request.POST
		try:
			w=Words.objects.get(word=word['word'])
		except ObjectDoesNotExist:
			w=''
		if w:
			if up.words.filter(word=w.word).exists():
				resp['status']=2
				resp['score']=up.score
				resp['word']=word['word']
				json = simplejson.dumps(resp)
				return HttpResponse(json, mimetype='application/json')
			else:
				up.words.add(w)
				if(w.points==3):
					up.score +=15
				elif(w.points==4):
					up.score +=25
				elif(w.points==5):
					up.score +=40
				elif(w.points==12):
					up.score +=60
				elif(w.points==14):
					up.score +=90
				elif(w.points==16):
					up.score +=120
				elif(w.points==27):
					up.score +=180
				up.save()
				resp['status']=1
				resp['score']=up.score
				resp['word']=word['word']
				json = simplejson.dumps(resp)
				return HttpResponse(json, mimetype='application/json')
		
		else:
			resp['status']=0
			resp['score']=up.score
			json = simplejson.dumps(resp)
			return HttpResponse(json, mimetype='application/json')
	else:
		json = simplejson.dumps(resp)
		return HttpResponse(json, mimetype='application/json')	

@csrf_exempt
@login_required
def buy(request):
	u=request.user
	up=UserProfile.objects.get(user=u)
	resp={}
	if request.POST:
		co=request.POST
		c=Cordinates.objects.get(id=co['cords'])
		if up.waf.filter(pk=c.id).exists():
			up.waf.remove(c)
		if up.was.filter(pk=c.id).exists():
			up.was.remove(c)
		up.qu.add(c)
		up.buy+=1
		up.score -= 2**(up.buy)
		up.save()
		resp['status']=1
		resp['place']=co['cords']
		resp['score']=up.score
		json = simplejson.dumps(resp)
		return HttpResponse(json, mimetype='application/json')
	else:
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
	resp['score']=up.score
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
@csrf_exempt
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
			m='Try filling all the details of atleast 1 member'
			return render_to_response('REGIShtml.html',{'message':m},context_instance=RequestContext(request))
	else:
		form=RegistrationForm()
		return render_to_response('REGIShtml.html',{'form':form},context_instance=RequestContext(request))
@csrf_exempt
@login_required
def logout(request):
    auth.logout(request)
    return HttpResponseRedirect("/login/")

def rulebook(request):
	 return render_to_response('rulebook.html',context_instance=RequestContext(request))

# def leader(request):
# 	resp = {}
# 	up=UserProfile.objects.all().order_by('-score')
# 	u=User.objects.all()
# 	# for i in up:
# 	# 	u=User.objects.get(pk=i.user_id)
# 	# 	resp[u.username]=i.score
# 	# # return HttpResponse(l)
# 	#print resp
# #	sort(resp)
# #	resp=sorted(resp.iteritems())

# 	return render_to_response('leader.html',{'resp':up,'u':u},context_instance=RequestContext(request))
