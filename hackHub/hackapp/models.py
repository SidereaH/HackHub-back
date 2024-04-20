from django.db import models

class Teams(models.Model):
    id_t = models.AutoField(primary_key=True, null=False)
    name_t = models.CharField(max_length=15,null=False)
    banner_t = models.CharField(max_length=100,null=False)
    login_t = models.CharField(max_length=40,null=False)
    password_t = models.CharField(max_length=100,null=False)

    def __str__(self):
        return f'{self.id_t} {self.name_t} '


class ContactsPortfolio(models.Model):
    id = models.AutoField(primary_key=True, null=False)
    telegram = models.CharField(max_length=30, null=False)
    git_hub_link = models.CharField(max_length=50, null=False)
    cv = models.TextField()

    def __str__(self):
        return f'{self.pk} {self.telegram} '

class StackTech(models.Model):
    id_st = models.AutoField(primary_key = True)
    stack = models.TextField(null=False)

    def __str__(self):
        return f'{self.pk} {self.stack}'

class Supervisors(models.Model):
    id_sup = models.AutoField(primary_key = True)
    surname_sup = models.CharField(max_length=30, null=False)
    name_sup = models.CharField(max_length=30,null=False)
    secondname_sup = models.CharField(max_length=30,null=False)
    age_sup = models.IntegerField(null=False)
    date_of_birth_sup = models.DateField(null=False)
    teams_sup = models.ForeignKey(Teams, on_delete=models.CASCADE)

    def __str__(self):
        return f'{self.pk} {self.surname_sup} {self.name_sup} '

class Participants(models.Model):
    id_p = models.AutoField(primary_key = True)
    surname_p = models.CharField(max_length=30,null=False)
    name_p = models.CharField(max_length=30,null=False)
    secondname_p = models.CharField(max_length=30, null=True)
    age_p = models.IntegerField(null=False)
    date_of_birth_p = models.DateField(null=False)
    team = models.ForeignKey(Teams, on_delete=models.CASCADE)
    supervisor = models.ForeignKey(Supervisors, null=True, on_delete=models.SET_NULL)
    contacts = models.ForeignKey(ContactsPortfolio, on_delete=models.CASCADE)
    stack_tech = models.ForeignKey(StackTech, on_delete=models.CASCADE)

    def __str__(self):
        return f'{self.pk} {self.surname_p} {self.name_p} '

