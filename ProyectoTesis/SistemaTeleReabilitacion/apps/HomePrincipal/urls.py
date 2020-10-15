from django.conf.urls import url
from django.urls import path
from apps.HomePrincipal.views import index
app_name='idexHome'

urlpatterns=[
    path(r'',index,name="HomePrincipal")
]