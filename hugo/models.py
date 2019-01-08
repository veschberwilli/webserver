from django.db import models

# Create your models here.
class Category(models.Model):
    cat_name = models.CharField('Category', max_length=200, null=True)

    def __str__(self):
        return self.cat_name

class Rezept(models.Model):
    name = models.CharField(max_length=200, null=True)
    category = models.ForeignKey(Category, on_delete=models.CASCADE, null=True, blank=True)
    #zutaten = models.ForeignKey(Zutaten, on_delete=models.CASCADE, null=True, blank=True)
    #zubereitung = models.CharField(max_length=2000)
    img_path = models.CharField(max_length=200, null=True, blank=True)

class Zutaten(models.Model):
    zutat = models.CharField('Zutat', max_length=2000, null=True)
    rezept = models.ForeignKey(Rezept, on_delete=models.CASCADE, null=True, blank=True)

class Zubereitung(models.Model):
    zubereitung = models.CharField('zubereitung', max_length=2000, null=True)
    rezept = models.ForeignKey(Rezept, on_delete=models.CASCADE, null=True, blank=True)

class Geburtstage(models.Model):
    vorname = models.CharField('vorname', max_length=2000, null=True)
    nachname = models.CharField('nachname', max_length=2000, null=True)
    datum = models.DateField('datum', null=True)

    def __str__(self):
        return '%s %s' % (self.vorname, self.nachname)

class Adressen(models.Model):
    name1 = models.CharField('name1', max_length=2000, null=True)
    name2 = models.CharField('name2', max_length=2000, null=True)
    nachname = models.CharField('nachname', max_length=2000, null=True)
    strasse = models.CharField('strasse', max_length=2000, null=True)
    plz = models.CharField('plz', max_length=2000, null=True)
    ort = models.CharField('ort', max_length=2000, null=True)

    def __str__(self):
        return '%s %s %s' % (self.name1, self.name2, self.nachname)
