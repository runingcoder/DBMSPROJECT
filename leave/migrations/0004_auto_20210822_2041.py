# Generated by Django 2.1.7 on 2021-08-22 14:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('leave', '0003_alter_leave_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='leave',
            name='id',
            field=models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]
