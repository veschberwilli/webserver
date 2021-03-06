from django.http import HttpResponse
from django.template import loader
from django.db import connection
from django.shortcuts import render, get_object_or_404

from .models import Rezept, Zubereitung, Zutaten, Category, Geburtstage, Adressen



def index(request):

    # +++++++++++++++++++++++++++++++
    # load template
    #
    template = loader.get_template('hugo/hugo.html')

    # +++++++++++++++++++++++++++++++
    # fill context
    #
    context = {}

    # ++++++++++++++++++++++++++++++++
    # return http response
    #
    return HttpResponse(template.render(context, request))


def rezept(request):

    # +++++++++++++++++++++++++++++++
    # load template
    #
    template = loader.get_template('hugo/rezepte.html')

    # +++++++++++++++++++++++++++++++
    # get Rezepte and Kategorie
    #
    rezepte_list = Rezept.objects.all()

    category_list = []
    for rezept in rezepte_list:
        category_list.append(rezept.category)

    category_list = list(set(category_list))

    # +++++++++++++++++++++++++++++++
    # fill context
    #
    context = {
        'rezepte_list': rezepte_list,
        'category_list': category_list,
    }

    # ++++++++++++++++++++++++++++++++
    # return http response
    #
    return HttpResponse(template.render(context, request))

def rezept_sicht(request, rezept_id):

    # +++++++++++++++++++++++++++++++
    # load template
    #
    template = loader.get_template('hugo/rezept_sicht.html')

    # +++++++++++++++++++++++++++++++
    # get Rezepte
    #
    rezepte_list_tmp = get_object_or_404(Rezept, pk=rezept_id)

    rezepte_id = Rezept.objects.get(pk=rezepte_list_tmp.id).id
    print('rezept_id: %s' % (rezepte_id))

    # +++++++++++++++++++++++++++++++
    # get the relevant stuff - zutaten
    #
    with connection.cursor() as cursor:
        sql_stat = """SELECT zutat FROM hugo_zutaten WHERE rezept_id = %s"""
        cursor.execute(sql_stat, (rezepte_id,))
        tmp = cursor.fetchall()

    zutaten_list = []
    for i,_ in enumerate(tmp):
        zutaten_list.append(tmp[i][0])

    # +++++++++++++++++++++++++++++++
    # get the relevant stuff - zubereitung
    #
    with connection.cursor() as cursor:
        sql_stat = """SELECT zubereitung FROM hugo_zubereitung WHERE rezept_id = %s"""
        cursor.execute(sql_stat, (rezepte_id,))
        tmp = cursor.fetchall()

    zubereitung_list = []
    for i, _ in enumerate(tmp):
        zubereitung_list.append(tmp[i][0])

    # +++++++++++++++++++++++++++++++
    # get the relevant stuff - name, img_path
    #
    with connection.cursor() as cursor:
        sql_stat = """SELECT name, img_path FROM hugo_rezept WHERE id = %s"""
        cursor.execute(sql_stat, (rezepte_id,))
        tmp = cursor.fetchall()[0]

    print(tmp)
    name = tmp[0]
    img_path = tmp[1]
    #name= 'dummy'
    category = 'dummy'
    #img_path = 'dummy'
    
    # +++++++++++++++++++++++++++++++
    # fill context
    #
    context = {
        'name': name,
        'category': category,
        'zutaten_list': zutaten_list,
        'zubereitung_list': zubereitung_list,
        'img_path': img_path,
    }
    print(zutaten_list)
    # ++++++++++++++++++++++++++++++++
    # return http response
    #
    return HttpResponse(template.render(context, request))
    #template_name = 'hugo/rezept_sicht.html'

    #return render(request, template_name, context)


def geburtstage(request):

    # +++++++++++++++++++++++++++++++
    # load template
    #
    template = loader.get_template('hugo/geburtstage.html')

    # +++++++++++++++++++++++++++++++
    # get Geburtstage
    #
    #geburtstag_list = Geburtstage.objects.all()
    geburtstag_list = Geburtstage.objects.order_by('datum')

    # +++++++++++++++++++++++++++++++
    # fill context
    #
    context = {
        'geburtstag_list': geburtstag_list,
    }

    # ++++++++++++++++++++++++++++++++
    # return http response
    #
    return HttpResponse(template.render(context, request))


def adressen(request):

    # +++++++++++++++++++++++++++++++
    # load template
    #
    template = loader.get_template('hugo/adressen.html')

    # +++++++++++++++++++++++++++++++
    # get Adressen
    #
    adresse_list = Adressen.objects.all()

    # +++++++++++++++++++++++++++++++
    # fill context
    #
    context = {
        'adresse_list': adresse_list,
    }

    # ++++++++++++++++++++++++++++++++
    # return http response
    #
    return HttpResponse(template.render(context, request))


def wetter(request):

    # +++++++++++++++++++++++++++++++
    # load template
    #
    template = loader.get_template('hugo/wetter.html')

    # +++++++++++++++++++++++++++++++
    # fill context
    #
    context = {}

    # ++++++++++++++++++++++++++++++++
    # return http response
    #
    return HttpResponse(template.render(context, request))


def speed(request):

    # +++++++++++++++++++++++++++++++
    # load template
    #
    template = loader.get_template('hugo/speed.html')

    # +++++++++++++++++++++++++++++++
    # fill context
    #
    context = {}

    # ++++++++++++++++++++++++++++++++
    # return http response
    #
    return HttpResponse(template.render(context, request))