from django.db import models

# Create your models here.
class Features(models.Model):
    # models.model turn whatever is in the class as model

    name = models.CharField(max_length = 100)
    details = models.CharField(max_length = 500)
# migrate these datas into the database
# python manage.py makemigrations
# python manage.py migrate
# python manage.py createsuperuser .. to create
# the admin logic credentials for serverside access
# for the developers