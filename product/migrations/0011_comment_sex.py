# Generated by Django 3.1 on 2021-04-08 03:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0010_auto_20210407_0950'),
    ]

    operations = [
        migrations.AddField(
            model_name='comment',
            name='sex',
            field=models.CharField(choices=[('male', 'Male'), ('female', 'Female')], default=0, max_length=20),
            preserve_default=False,
        ),
    ]
