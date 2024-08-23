from django.shortcuts import render
from django.http import HttpResponse

def home(request):
    return render(request, 'main.html')

def Me(request):
    return render(request,"about-me.html")

def exp(request):
    return render(request,"exp.html")

def projects(request):
    return render(request,"project.html")