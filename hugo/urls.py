from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('rezepte', views.rezept, name='rezepte'),
    path('<int:rezept_id>/rezept_sicht', views.rezept_sicht, name='rezept_sicht'),
    path('geburtstage', views.geburtstage, name='geburtstage'),
    path('adressen', views.adressen, name='adressen'),
    path('wetter', views.wetter, name='wetter'),
    path('speed', views.speed, name='speed'),
]
