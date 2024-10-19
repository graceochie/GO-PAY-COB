from django.db import models

class SalesData(models.Model):
    date = models.DateField()
    revenue = models.DecimalField(max_digits=10, decimal_places=2)
    product = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.date} - {self.product}"
