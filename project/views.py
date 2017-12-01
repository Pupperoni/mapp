from django.shortcuts import render
from django.views import generic
from django.urls import reverse_lazy
from django.views.generic import View

from . import populate
from .models import *
from .forms import *
from pygeocoder import Geocoder

'''
CREATE
'''
class CreateAtmFormView(View):
    form_class = CreateAtmForm
    template_name = 'project/createform.html'

    def get(self, request):
        form = self.form_class(None)
        return render(request,self.template_name, {'form':form})

    def post(self, request):
        form = self.form_class(request.POST)
        if form.is_valid():
            atm = form.save(commit=False)
            result = Geocoder.geocode(form.cleaned_data['location'])
            lat,lon = results.coordinates
            atm.save()
            return reverse('atmdetail', kwargs={'pk': self.pk})
        return render(request,self.template_name,{"form":form})

class CreateAccidentFormView(View):
    model = Accident
    template_name = 'project/createform.html'

    def get(self, request):
        form = self.form_class(None)
        return render(request,self.template_name, {'form':form})

    def post(self, request):
        form = self.form_class(request.POST)
        if form.is_valid():
            atm = form.save(commit=False)
            result = Geocoder.geocode("4207 N Washington Ave, Douglas, AZ 85607")
            lat,lon = results.coordinates
            atm.save()
            return reverse('atmdetail', kwargs={'pk': self.pk})
        return render(request,self.template_name,{"form":form})

class CreateProjectFormView(View):
    model = Project
    template_name = 'project/createform.html'

    def get(self, request):
        form = self.form_class(None)
        return render(request,self.template_name, {'form':form})

    def post(self, request):
        form = self.form_class(request.POST)
        if form.is_valid():
            atm = form.save(commit=False)
            result = Geocoder.geocode("4207 N Washington Ave, Douglas, AZ 85607")
            lat,lon = results.coordinates
            atm.save()
            return reverse('atmdetail', kwargs={'pk': self.pk})
        return render(request,self.template_name,{"form":form})

class CreateAirportFormView(generic.edit.CreateView):
    model = Airport
    template_name = 'project/createform.html'

    def get(self, request):
        form = self.form_class(None)
        return render(request,self.template_name, {'form':form})

    def post(self, request):
        form = self.form_class(request.POST)
        if form.is_valid():
            atm = form.save(commit=False)
            result = Geocoder.geocode("4207 N Washington Ave, Douglas, AZ 85607")
            lat,lon = results.coordinates
            atm.save()
            return reverse('atmdetail', kwargs={'pk': self.pk})
        return render(request,self.template_name,{"form":form})

'''
READ
'''
class AtmDetailView(generic.DetailView):
    model = Atm
    context_object_name = 'atm'
    template_name = 'project/atmdetail.html'

class AccidentDetailView(generic.DetailView):
    model = Accident
    context_object_name = 'accident'
    template_name = 'project/accidentdetail.html'

class ProjectDetailView(generic.DetailView):
    model = Project
    context_object_name = 'project'
    template_name = 'project/projectdetail.html'

class AirportDetailView(generic.DetailView):
    model = Airport
    context_object_name = 'airport'
    template_name = 'project/airportdtail.html'

'''
EDIT
'''
class UpdateAtm(generic.edit.UpdateView):
    model = Atm
    template_name = 'project/updateform.html'
    fields = [
    'atm_type', 'location', 'amount'
    ]
class UpdateAccident(generic.edit.UpdateView):
    model = Accident
    template_name = 'project/updateform.html'
    fields = [
    'accident_type', 'report_type', 'status', 'registration', 'craft_type', 'location'
    ]

class UpdateProject(generic.edit.UpdateView):
    model = Project
    template_name = 'project/updateform.html'
    fields = [
    'project_id', 'cost', 'status', 'fs_type', 'implementing_office', 'contractor', 'location'
    ]

class UpdateAirport(generic.edit.UpdateView):
    model = Airport
    template_name = 'project/updateform.html'
    fields = [
    'location', 'airport_name', 'operator_name'
    ]

'''
DESTROY
'''
class DeleteAtm(generic.edit.DeleteView):
    model = Atm
    template_name = 'project/atmdelete.html'
    success_url = reverse_lazy('atmlist')

class DeleteAccident(generic.edit.DeleteView):
    model = Accident
    template_name = 'project/accidentdelete.html'
    success_url = reverse_lazy('accidentlist')

class DeleteProject(generic.edit.DeleteView):
    model = Project
    template_name = 'project/projectdelete.html'
    success_url = reverse_lazy('projectlist')

class DeleteAirport(generic.edit.DeleteView):
    model = Airport
    template_name = 'project/airportdelete.html'
    success_url = reverse_lazy('airportlist')

def updatedb(request):
    populate.populatedb()
    atms = Atm.objects.all()
    accidents = Accident.objects.all()
    airports = Airport.objects.all()
    projects = Project.objects.all()
    return render(request,'project/test.html',{'atms':atms, 'accidents':accidents, 'airports':airports, 'projects':projects})

def atm_list(request):
    atms = Atm.objects.all()
    return render(request,'project/atmindex.html',{'atms':atms})

def accident_list(request):
    accidents = Accident.objects.all()
    return render(request,'project/accidentindex.html',{'accidents':accidents})

def airport_list(request):
    airports= Airport.objects.all()
    return render(request,'project/airportindex.html',{'airports':airports})

def project_list(request):
    projects = Project.objects.all()
    return render(request,'project/projectindex.html',{'projects':projects})
