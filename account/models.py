from django.conf import settings
from django.db import models

# stripe.api_key = settings.STRIPE_SECRET_KEY


class Profile(models.Model):
    user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    # ebooks = models.ManyToManyField(Product, blank=True)
    # stripe_id = models.CharField(max_length=200, null=True, blank=True)

    def __str__(self):
        return self.user.username