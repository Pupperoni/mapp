from django.shortcuts import render, redirect
from django.views import generic
from django.urls import reverse_lazy
from django.views.generic import View

from . import populate
from .models import *
from .forms import *
from pygeocoder import Geocoder

'''
MAIN
'''
def main(request):
    atms = Atm.objects.all()
    accidents = Accident.objects.all()
    airports= Airport.objects.all()
    projects = Project.objects.all()
    return render(request,'project/main.html', {'atms':atms, 'accidents':accidents, 'airports':airports, 'projects':projects})

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
            atm.amount = form.cleaned_data['amount']
            results = Geocoder.geocode(form.cleaned_data['location'])
            atm.lat,atm.lon = results.coordinates
            atm.save()
            return redirect(reverse('atmlist'))
        return render(request,self.template_name,{"form":form})

class CreateAccidentFormView(View):
    form_class = CreateAccidentForm
    template_name = 'project/createform.html'

    def get(self, request):
        form = self.form_class(None)
        return render(request,self.template_name, {'form':form})

    def post(self, request):
        form = self.form_class(request.POST)
        if form.is_valid():
            accident = form.save(commit=False)
            results = Geocoder.geocode(form.cleaned_data['location'])
            accident.lat,accident.lon = results.coordinates
            accident.save()
            return redirect(reverse('accidentlist'))
        return render(request,self.template_name,{"form":form})

class CreateProjectFormView(View):
    form_class = CreateProjectForm
    template_name = 'project/createform.html'

    def get(self, request):
        form = self.form_class(None)
        return render(request,self.template_name, {'form':form})

    def post(self, request):
        form = self.form_class(request.POST)
        if form.is_valid():
            project = form.save(commit=False)
            results = Geocoder.geocode(form.cleaned_data['location'])
            project.lat,project.lon = results.coordinates
            project.save()
            return redirect(reverse('projectlist'))
        return render(request,self.template_name,{"form":form})

class CreateAirportFormView(generic.edit.CreateView):
    form_class = CreateAirportForm
    template_name = 'project/createform.html'

    def get(self, request):
        form = self.form_class(None)
        return render(request,self.template_name, {'form':form})

    def post(self, request):
        form = self.form_class(request.POST)
        if form.is_valid():
            airport= form.save(commit=False)
            results = Geocoder.geocode(form.cleaned_data['location'])
            airport.lat,airport.lon = results.coordinates
            airport.save()
            return redirect(reverse('airportlist'))
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
    form_class = CreateAtmForm
    template_name = 'project/updateform.html'

    def get(self, request, **kwargs):
        self.object = Atm.objects.get(pk=self.kwargs['pk'])
        form_class = self.get_form_class()
        form = self.get_form(form_class)
        context = self.get_context_data(object=self.object, form=form)
        return self.render_to_response(context)

    def put(self, request):
        form = self.form_class(request.PUT)
        if form.is_valid():
            atm = form.save(commit=False)
            results = Geocoder.geocode(form.cleaned_data['location'])
            atm.lat,atm.lon = results.coordinates
            atm.save()
            return redirect(reverse('atmlist'))
        return render(request,self.template_name,{"form":form})

    def get_object(self, queryset=None):
        obj = Atm.objects.get(pk=self.kwargs['pk'])
        return obj

class UpdateAccident(generic.edit.UpdateView):
    model = Accident
    template_name = 'project/updateform.html'
    form_class = CreateAccidentForm

    def get(self, request, **kwargs):
        self.object = Accident.objects.get(pk=self.kwargs['pk'])
        form_class = self.get_form_class()
        form = self.get_form(form_class)
        context = self.get_context_data(object=self.object, form=form)
        return self.render_to_response(context)

    def put(self, request):
        form = self.form_class(request.PUT)
        if form.is_valid():
            accident = form.save(commit=False)
            results = Geocoder.geocode(form.cleaned_data['location'])
            accident.lat,accident.lon = results.coordinates
            accident.save()
            return redirect(reverse('accidentlist'))
        return render(request,self.template_name,{"form":form})

    def get_object(self, queryset=None):
        obj = Accident.objects.get(pk=self.kwargs['pk'])
        return obj

class UpdateProject(generic.edit.UpdateView):
    model = Project
    template_name = 'project/updateform.html'
    form_class = CreateProjectForm

    def get(self, request, **kwargs):
        self.object = Project.objects.get(pk=self.kwargs['pk'])
        form_class = self.get_form_class()
        form = self.get_form(form_class)
        context = self.get_context_data(object=self.object, form=form)
        return self.render_to_response(context)

    def put(self, request):
        form = self.form_class(request.PUT)
        if form.is_valid():
            project = form.save(commit=False)
            results = Geocoder.geocode(form.cleaned_data['location'])
            project.lat,project.lon = results.coordinates
            project.save()
            return redirect(reverse('projectlist'))
        return render(request,self.template_name,{"form":form})

    def get_object(self, queryset=None):
        obj = Project.objects.get(pk=self.kwargs['pk'])
        return obj

class UpdateAirport(generic.edit.UpdateView):
    model = Airport
    template_name = 'project/updateform.html'
    form_class = CreateAirportForm

    def get(self, request, **kwargs):
        self.object = Airport.objects.get(pk=self.kwargs['pk'])
        form_class = self.get_form_class()
        form = self.get_form(form_class)
        context = self.get_context_data(object=self.object, form=form)
        return self.render_to_response(context)

    def put(self, request):
        form = self.form_class(request.PUT)
        if form.is_valid():
            airport = form.save(commit=False)
            results = Geocoder.geocode(form.cleaned_data['location'])
            airport.lat,airport.lon = results.coordinates
            airport.save()
            return redirect(reverse('airportlist'))
        return render(request,self.template_name,{"form":form})

    def get_object(self, queryset=None):
        obj = Airport.objects.get(pk=self.kwargs['pk'])
        return obj

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
