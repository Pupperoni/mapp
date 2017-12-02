import csv
import glob
from .models import *
from pygeocoder import Geocoder

def populatedb():
    '''
    Reading csv files for projects
    files = glob.glob('project/lib/infrastructure/*.csv')
    for x in files:
        csvfile = open(x,'r')
        read = csv.reader(csvfile)
        next(read, None)
        for row in read:
            try:
                project_id = row[0]
                status = row[1]
                cost = row[2]
                if cost == "":
                    cost = '0'
                #start_date = row[3]
                fs_type = row[4]
                location = row[5]
                try:
                    results = Geocoder.geocode(location)
                    lat,lon = results.coordinates
                except:
                    lat = 0
                    lon = 0
                implementing_office = row[6]
                contractor = row[7]
                #end_date = row[10] + '/' + row[11] + '/01'
                project = Project(project_id=project_id, cost=cost, status=status, fs_type=fs_type, implementing_office=implementing_office, contractor=contractor, location=location, lat=lat, lon=lon)
                project.save()
            except:
                pass
        csvfile.close()
    '''
    '''
    Reading csv files for accidents
    '''
    files = glob.glob('project/lib/accidents/*.csv')
    for x in files:
        csvfile = open(x,'r')
        read = csv.reader(csvfile)
        next(read, None)  # skip the headers
        for row in read:
            #date = row[0]
            registration = row[1]
            craft_type = row[2]
            accident_type = row[3]
            location = row[4]
            try:
                results = Geocoder.geocode(location)
                lat,lon = results.coordinates
            except:
                lat = 0
                lon = 0
            status = row[5]
            report_type = row[6]
            accident = Accident(accident_type=accident_type, report_type=report_type, status=status, registration=registration, craft_type=craft_type, location=location, lat=lat, lon=lon)
            accident.save()
        csvfile.close()

    '''
    Reading csv files for atms
    '''
    files = glob.glob('project/lib/atms/*.csv')
    for x in files:
        csvfile = open(x,'r')
        read = csv.reader(csvfile)
        next(read, None)
        for row in read:
            location = row[0]
            try:
                results = Geocoder.geocode(location)
                lat,lon = results.coordinates
            except:
                lat = 0
                lon = 0
            amount = row[1]
            if row[2] == 'universal':
                atm_type = 0
            elif row[2] == 'thrift':
                atm_type = 1
            else:
                atm_type = 2
            atm = Atm(atm_type=atm_type,location=location, lat=lat, lon=lon, amount=amount)
            atm.save()
        csvfile.close()
    '''
    Reading csv files for airports
    '''
    files = glob.glob('project/lib/cargo-freight/*.csv')
    for x in files:
        csvfile = open(x,'r')
        read = csv.reader(csvfile)
        next(read, None)
        for row in read:
            location = row[0]
            try:
                results = Geocoder.geocode(location)
                lat,lon = results.coordinates
            except:
                lat = 0
                lon = 0
            airport_name = row[1]
            operator_name = row[2]
            airport = Airport(location=location, lat=lat, lon=lon,  airport_name=airport_name, operator_name=operator_name)
            airport.save()
        csvfile.close()

if __name__ == '__main__':
    populatedb()
