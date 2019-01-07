from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('rezepte', views.rezept, name='rezepte'),
    path('<int:rezept_id>/rezept_sicht', views.rezept_sicht, name='rezept_sicht'),
]
