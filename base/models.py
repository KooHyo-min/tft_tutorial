from django.db.models import Model as DjangoModel
from django.contrib.auth.models import AbstractUser


class BaseModel(DjangoModel):
    class Meta:
        abstract = True


class Auth(BaseModel, AbstractUser):
    pass