from django.contrib import admin

from hackapp.models import Participants
from hackapp.models import Supervisors
from hackapp.models import StackTech
from hackapp.models import ContactsPortfolio
from hackapp.models import Teams


admin.site.register(Participants)
admin.site.register(Supervisors)
admin.site.register(StackTech)
admin.site.register(ContactsPortfolio)
admin.site.register(Teams)