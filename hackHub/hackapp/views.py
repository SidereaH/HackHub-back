from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import TemplateView, ListView

from hackapp.models import Participants, Supervisors, StackTech, ContactsPortfolio, Teams

from rest_framework import viewsets

from hackapp.serializers import ParticSerializer, TeamsSerializer, ContactsPortSerializer, SupervisorsSerializer, StackTechSerializer


class MainView(ListView):
    template_name  = 'slider.html'
    model = Participants
    ordering = {"-id_p"}


#-----контроллеры для рест апи-----------
class ParticipantApiView(viewsets.ModelViewSet):
    queryset = Participants.objects.all()
    serializer_class = ParticSerializer
    http_method_names = ['get']

class TeamsApi(viewsets.ModelViewSet):
    queryset = Teams.objects.all()
    serializer_class = TeamsSerializer

class ContactsPortfolioApi(viewsets.ModelViewSet):
    queryset = ContactsPortfolio.objects.all()
    serializer_class = ContactsPortSerializer





