from django.shortcuts import render
from django.http import HttpResponse

from django.contrib.auth.models import User, auth
from django.contrib import messages
from django.shortcuts import redirect

# Create your views here.

def index1(request):
   return render(request, 'index1.html')


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
             return redirect('register')
          else:
             user = User.objects.create_user(username=username, email =email, password =password)
             user. save();
             return redirect('login')
       else:
          messages.info(request, "The passwords don't match at all.")
          return redirect('register')

   return render(request, 'register.html')

def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username =username, password =password)
        if user is not None:
            auth.login(request, user)
            return redirect('dashboard:dashboard')
        else:
            messages.info(request, "invalid credentials")
            return redirect(login)
    else:

        return render(request, 'login.html')

def logout(request):
    auth.logout(request)
#     this single line will log out the user
    return redirect('/')