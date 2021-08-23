from django.shortcuts import render
from django.http import HttpResponse
from .models import Features
from django.contrib.auth.models import User, auth
from django.contrib import messages
from django.shortcuts import redirect

# Create your views here.


def index(request):
   # call an object for the class
   feture =Features.objects.all()
   # turns into a list of all object of the model , that we edited from the website itself.





   return render(request, 'index.html', {"features": feture})
def register(request):
   if request.method == 'POST':
       username = request.POST['username']
       email = request.POST['email']
       password = request.POST['password']
       password2 = request.POST['password2']
       if password ==password2:
          if User.objects.filter(email=email).exists():
             messages.info(request, 'Email ALready Used')
             return redirect('register')
          elif User.objects.filter(username=username).exists():
             messages.info(request, "Username already used.")
             return redirect('/new/register')
          else:
             user = User.objects.create_user(username=username, email =email, password =password)
             user. save();
             return redirect('/new/login')
       else:
          messages.info(request, "The passwords don't match at all.")
          return redirect('/new/register')

   return render(request, 'register.html')

def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username =username, password =password)
        if user is not None:
            auth.login(request, user)
            return redirect('/new')
        else:
            messages.info(request, "invalid credentials")
            return redirect('/new/login')
    else:

        return render(request, 'login.html')

def logout(request):
    auth.logout(request)
#     this single line will log out the user
    return redirect('/new')

def counter(request):
   posts = [1, 3, 7,3 ,777, 2,3 , 'asdfa', 'asdsd', 'Hello']
   return render(request, 'counter.html', {'posts': posts})
def post(request, pk):
    return render(request, 'post.html', {'pk': pk})

def about(request):
   # call an object for the class
   feture =Features.objects.all()
   # turns into a list of all object of the model , that we edited from the website itself.





   return render(request, 'about.html', {"features": feture})

def services(request):
   # call an object for the class
   feture =Features.objects.all()
   # turns into a list of all object of the model , that we edited from the website itself.





   return render(request, 'services.html', {"features": feture})
def contact(request):
   # call an object for the class
   feture =Features.objects.all()
   # turns into a list of all object of the model , that we edited from the website itself.





   return render(request, 'contact.html', {"features": feture})