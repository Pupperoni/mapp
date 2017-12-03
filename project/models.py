from django.db import models
from django.urls import reverse
import datetime


class Atm(models.Model):
    ATM_TYPE_CHOICES = (
        ('0', 'universal'),
        ('1', 'thrift'),
        ('2', 'rural'),
    )
    atm_type = models.CharField(max_length=1,choices=ATM_TYPE_CHOICES)
    location = models.CharField(max_length=200)
    amount = models.IntegerField()
    lat = models.DecimalField(max_digits=8,decimal_places=4)
    lon = models.DecimalField(max_digits=8,decimal_places=4)

    def get_absolute_url(self):
        return reverse('atmdetail', kwargs={'pk': self.pk})

class Accident(models.Model):
    accident_type = models.CharField(max_length=200)
    report_type = models.CharField(max_length=200)
    status = models.CharField(max_length=200)
    registration = models.CharField(max_length=200)
    craft_type = models.CharField(max_length=200)
    location = models.CharField(max_length=200)
    lat = models.DecimalField(max_digits=8,decimal_places=4)
    lon = models.DecimalField(max_digits=8,decimal_places=4)
    date = models.DateField(default=datetime.date.today())

    def get_absolute_url(self):
        return reverse('accidentdetail', kwargs={'pk': self.pk})

class Project(models.Model):
    project_id = models.CharField(max_length=200,primary_key=True)
    cost = models.IntegerField()
    status = models.CharField(max_length=200)
    fs_type = models.CharField(max_length=200)
    implementing_office = models.CharField(max_length=200)
    contractor = models.CharField(max_length=200)
    location = models.CharField(max_length=200)
    lat = models.DecimalField(max_digits=8,decimal_places=4)
    lon = models.DecimalField(max_digits=8,decimal_places=4)
    start_date = models.DateField(default=datetime.date.today())
    end_date = models.DateField(default=datetime.date.today())
    def get_absolute_url(self):
        return reverse('projectdetail', kwargs={'pk': self.pk})

class Airport(models.Model):
    location = models.CharField(max_length=200)
    lat = models.DecimalField(max_digits=8,decimal_places=4)
    lon = models.DecimalField(max_digits=8,decimal_places=4)
    airport_name = models.CharField(max_length=200)
    operator_name = models.CharField(max_length=200)
    def get_absolute_url(self):
        return reverse('airportdetail', kwargs={'pk': self.pk})
