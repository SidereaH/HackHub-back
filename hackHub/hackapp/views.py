from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import TemplateView, ListView

from hackapp.models import Participants
from hackapp.models import Supervisors
from hackapp.models import StackTech
from hackapp.models import ContactsPortfolio
from hackapp.models import Teams
from rest_framework import viewsets

from hackapp.serializers import ParticSerializer


class MainView(ListView):
    template_name  = 'slider.html'
    model = Participants
    ordering = {"-id_p"}


#-----контроллеры для рест апи-----------
class ParticipantApiView(viewsets.ModelViewSet):
    queryset = Participants.objects.all()
    serializer_class = ParticSerializer
    http_method_names = ['get']



