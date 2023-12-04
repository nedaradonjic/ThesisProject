from django.shortcuts import get_object_or_404, render
from .models import Product

def product(request, slug):
    product = get_object_or_404(Product,slug=slug)
    return render(request,'product/product.html', {'product': product})
# Create your views here.
