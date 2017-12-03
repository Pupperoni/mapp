from .models import *
from django import forms

class CreateAtmForm(forms.ModelForm):
    class Meta:
        model = Atm
        fields = [
        'atm_type','location','amount'
        ]

class CreateAccidentForm(forms.ModelForm):
    class Meta:
        model = Accident
        fields = [
        'accident_type', 'report_type', 'status', 'registration', 'craft_type', 'date', 'location'
        ]

class CreateAirportForm(forms.ModelForm):
    class Meta:
        model = Airport
        fields = [
        'location', 'airport_name', 'operator_name'
        ]

class CreateProjectForm(forms.ModelForm):
    class Meta:
        model = Project
        fields = [
        'project_id', 'cost', 'status', 'fs_type', 'implementing_office', 'contractor', 'start_date', 'end_date', 'location'
        ]
