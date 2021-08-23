from django.urls import path

from . import views
urlpatterns =[
    path('', views.index, name='index'),
    path('about/', views.about, name='about'),

    path('services/', views.services, name='services'),

    path('contact/', views.contact, name='contact'),

    path('counter/', views.counter, name='counter'),

    path('register/', views.register, name='register'),
    path('login/', views.login, name='login'),
    path('logout/', views.logout, name='logout'),
    path('post/<str:pk>', views.post, name='post'),

]