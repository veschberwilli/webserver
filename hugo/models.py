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