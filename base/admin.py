from django.contrib import admin
from base.models import Auth


class BaseModelAdmin(admin.ModelAdmin):
    pass


@admin.register(Auth)
class AuthAdmin(BaseModelAdmin):
    pass