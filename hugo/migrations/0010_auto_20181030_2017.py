# Generated by Django 2.1.2 on 2018-10-30 20:17

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('hugo', '0009_auto_20181030_1905'),
    ]

    operations = [
        migrations.RenameField(
            model_name='zubereitung',
            old_name='rezept_id',
            new_name='rezept',
        ),
        migrations.RenameField(
            model_name='zutaten',
            old_name='rezept_id',
            new_name='rezept',
        ),
    ]
