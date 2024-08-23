from django.urls import path
from django.http import HttpResponse
from .import views




urlpatterns = [
    path('', views.home, name='home'),
    path("about_me/",views.Me,name = "ME"),
    path("exp/",views.exp,name="exp"),
    path("project/",views.projects,name="project"),
]
    


