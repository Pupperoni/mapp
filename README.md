# mapp
## Project for a Database Systems course
Django requires Python, so install python3 if you haven't already.
```
  $ sudo apt-get update

  $ sudo apt-get install python3.6
```
Next, install pip. Check if you have pip3 installed:
```
  $ pip3 -V
``` 
If you don't have pip3, run this in the terminal:
```
  $ sudo apt-get install python3-pip
```
Once you have pip3, update it:
```
  $ pip3 install --upgrade pip
 ``` 
Now, you need to download virtualenv from pip:
```
  $ pip3 install virtualenv
 ``` 
After that, use virtualenv to create a virtual environment to isolate this project to other environments.
```
  $ virtualenv <name>
```  
Replace <name> with your desired name for your virtual environment.
  
Then to activate the virtual environment, run:
```
  $ source <name>/bin/activate
```  
To deactivate, just type
```
  $ deactivate
```  
While the virtual environment is active, install Django:
```
  $ pip3 install django
```
We'll also need the Geocoder to convert location strings into latitude and longitude coordinates
```
  $ pip3 install pygeocoder
```
Once you are done setting up, go to the main project directory where manage.py is located (make sure your virtual environment is activated):
```
  $ cd mapp
```  
Then to run the server, type:
```
  $ python3 manage.py runserver
```  
