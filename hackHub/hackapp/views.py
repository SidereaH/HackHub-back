from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import TemplateView


class SliderView(TemplateView):
    template_name = 'slider.html'
