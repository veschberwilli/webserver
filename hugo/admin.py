from django.contrib import admin
from .models import Rezept, Category, Zutaten, Zubereitung, Adressen, Geburtstage

# +++++++++++++++++++++++++++++++
# Category
#
admin.site.register(Category)

# +++++++++++++++++++++++++++++++
# Zutaten
#
admin.site.register(Zutaten)

# +++++++++++++++++++++++++++++++
# Zubereitung
#
admin.site.register(Zubereitung)

# +++++++++++++++++++++++++++++++
# Rezept
#
class ZutatenInline(admin.StackedInline):
    model = Zutaten
    extra = 1

class ZubereitungInline(admin.StackedInline):
    model = Zubereitung
    extra = 1

class RezeptAdmin(admin.ModelAdmin):
    inlines = [ZutatenInline, ZubereitungInline]

    list_display = ('name', 'category')
    search_fields = ['name', 'category']

admin.site.register(Rezept, RezeptAdmin)

# +++++++++++++++++++++++++++++++
# Adressen
#
admin.site.register(Adressen)

# +++++++++++++++++++++++++++++++
# Geburtstage
#
admin.site.register(Geburtstage)