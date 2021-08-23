from django.urls import path, include

from . import views

urlpatterns =[
    path('', views.index1, name='index1'),
    path('login/', views.login, name='login'),
    path('logout/', views.logout, name='logout'),
path('register', views.register, name='register'),
path('accounts/', include('accounts.urls', namespace='accounts')),
    path('dashboard/', include('dashboard.urls', namespace='dashboard')),
]
