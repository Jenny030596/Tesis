from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def index(request):
    data={}
    return render(request, 'Home/login.html',data)