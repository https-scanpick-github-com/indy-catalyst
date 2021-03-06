# Generated by Django 2.2 on 2019-12-13 17:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('icat_hooks', '0003_auto_20190412_1916'),
    ]

    operations = [
        migrations.AddField(
            model_name='subscription',
            name='error_count',
            field=models.IntegerField(blank=True, default=0, null=True),
        ),
        migrations.AddField(
            model_name='subscription',
            name='last_error_date',
            field=models.DateTimeField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='subscription',
            name='last_sent_date',
            field=models.DateTimeField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='subscription',
            name='subscription_expiry',
            field=models.DateField(blank=True, null=True),
        ),
    ]
