from rest_framework import serializers

from hackapp.models import Participants
from hackapp.models import Teams


class ParticSerializer(serializers.ModelSerializer):
    class Meta:
        model = Participants
        fields = '__all__'

class TeamsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Teams
        fields = '__all__'