"""mapp URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^populate/$',views.updatedb,name='populate'), # dont run this!!

    url(r'^atms/$',views.atm_list,name='atmlist'),
    url(r'^accidents/$',views.accident_list,name='accidentlist'),
    url(r'^projects/$',views.project_list,name='projectlist'),
    url(r'^airports/$',views.airport_list,name='airportlist'),

    url(r'^atms/create/$',views.CreateAtmFormView.as_view(),name='atmcreate'),
    url(r'^accidents/create/$',views.CreateAccidentFormView.as_view(),name='accidentcreate'),
    url(r'^projects/create/$',views.CreateProjectFormView.as_view(),name='projectcreate'),
    url(r'^airports/create/$',views.CreateAirportFormView.as_view(),name='airportcreate'),

    url(r'^atms/(?P<pk>[0-9]+)/$',views.AtmDetailView.as_view(),name='atmdetail'),
    url(r'^accidents/(?P<pk>[0-9]+)/$',views.AccidentDetailView.as_view(),name='accidentdetail'),
    url(r'^projects/(?P<pk>[^/s]+)/$',views.ProjectDetailView.as_view(),name='projectdetail'),
    url(r'^airports/(?P<pk>[0-9]+)/$',views.AirportDetailView.as_view(),name='airportdetail'),

    url(r'^atms/update/(?P<pk>[0-9]+)/$',views.UpdateAtm.as_view(),name='atmupdate'),
    url(r'^accidents/(?P<pk>[0-9]+)/$',views.UpdateAccident.as_view(),name='accidentupdate'),
    url(r'^projects/(?P<pk>[^/s]+)/$',views.UpdateProject.as_view(),name='projectupdate'),
    url(r'^airports/(?P<pk>[0-9]+)/$',views.UpdateAirport.as_view(),name='airportupdate'),

    url(r'^atms/delete/(?P<pk>[0-9]+)/$',views.DeleteAtm.as_view(),name='atmdelete'),
    url(r'^accidents/delete/(?P<pk>[0-9]+)/$',views.DeleteAccident.as_view(),name='accidentdelete'),
    url(r'^projects/delete/(?P<pk>[^/s]+)/$',views.DeleteProject.as_view(),name='projectdelete'),
    url(r'^airports/delete/(?P<pk>[0-9]+)/$',views.DeleteAirport.as_view(),name='airportdelete'),

    url(r'^$',views.main,name='main'),

]
