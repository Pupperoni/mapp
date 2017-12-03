# Generated by Django 2.0 on 2017-12-03 13:21

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('project', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='accident',
            name='date',
            field=models.DateField(default=datetime.date(2017, 12, 3)),
        ),
        migrations.AddField(
            model_name='project',
            name='end_date',
            field=models.DateField(default=datetime.date(2017, 12, 3)),
        ),
        migrations.AddField(
            model_name='project',
            name='start_date',
            field=models.DateField(default=datetime.date(2017, 12, 3)),
        ),
    ]
