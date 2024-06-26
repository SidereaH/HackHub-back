# Generated by Django 3.2.25 on 2024-04-20 10:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('hackapp', '0003_auto_20240420_1327'),
    ]

    operations = [
        migrations.CreateModel(
            name='ContactsPortfolio',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('telegram', models.CharField(max_length=30)),
                ('git_hub_link', models.CharField(max_length=50)),
                ('cv', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='StackTech',
            fields=[
                ('id_st', models.AutoField(primary_key=True, serialize=False)),
                ('stack', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Teams',
            fields=[
                ('id_t', models.AutoField(primary_key=True, serialize=False)),
                ('name_t', models.CharField(max_length=15)),
                ('banner_t', models.CharField(max_length=100)),
                ('login_t', models.CharField(max_length=40)),
                ('password_t', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Supervisors',
            fields=[
                ('id_sup', models.AutoField(primary_key=True, serialize=False)),
                ('name_sup', models.CharField(max_length=30)),
                ('surname_sup', models.CharField(max_length=30)),
                ('secondname_sup', models.CharField(max_length=30)),
                ('age_sup', models.IntegerField()),
                ('date_of_birth_sup', models.DateField()),
                ('teams_sup', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hackapp.teams')),
            ],
        ),
        migrations.CreateModel(
            name='Participants',
            fields=[
                ('id_p', models.AutoField(primary_key=True, serialize=False)),
                ('surname_p', models.CharField(max_length=30)),
                ('name_p', models.CharField(max_length=30)),
                ('secondname_p', models.CharField(max_length=30)),
                ('age_p', models.IntegerField()),
                ('date_of_birth_p', models.DateField()),
                ('contacts', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hackapp.contactsportfolio')),
                ('stack_tech', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hackapp.stacktech')),
                ('supervisor', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hackapp.supervisors')),
                ('team', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hackapp.teams')),
            ],
        ),
    ]
