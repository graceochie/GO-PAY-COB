from django.shortcuts import render
from .models import SalesData

def dashboard_view(request):
    sales_data = SalesData.objects.all()
    context = {
        'sales_data': sales_data,
    }
    return render(request, 'dashboard/dashboard.html', context)
