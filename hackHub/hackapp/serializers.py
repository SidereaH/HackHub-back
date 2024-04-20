from rest_framework import serializers

from hackapp.models import Participants, Supervisors, StackTech, ContactsPortfolio, Teams


class ParticSerializer(serializers.ModelSerializer):
    class Meta:
        model = Participants
        fields = '__all__'

class TeamsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Teams
        fields = '__all__'

class ContactsPortSerializer(serializers.ModelSerializer):
    class Meta:
        model = ContactsPortfolio
        fields = '__all__'

class SupervisorsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Supervisors
        fields = '__all__'

class StackTechSerializer(serializers.ModelSerializer):
    class Meta:
        model = StackTech
        fields = '__all__'