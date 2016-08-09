# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-08-02 07:55
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='GitFile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('giturl', models.URLField(max_length=1000)),
                ('gitFile', models.FileField(upload_to='Git/%Y/%m/%d')),
                ('newFile', models.FilePathField(path='Git/%Y/%m/%d', recursive=True)),
            ],
        ),
        migrations.CreateModel(
            name='Upload',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Lddfile', models.FileField(upload_to='Files/%Y/%m/%d')),
            ],
        ),
    ]