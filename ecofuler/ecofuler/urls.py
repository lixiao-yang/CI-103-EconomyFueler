"""ecofuler URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from indexapp import views
from django.conf.urls import include
from login import views_login

urlpatterns = [
    path('admin/', admin.site.urls),
    path('pagedivede/',views.pagedivide),
    path('edit/?P<a1>(\w+).html',views.edit),
    path('test/',views.test),
    path('custom/',views.custom),
    path('background_index/',views.background_index),
    path('background_index/user_manage/',views_login.user_manage),
    path('background_index/database_manage/',views.database_manage),
    path('search_info/',views.search_info),
    path('初步分析1/初步分析2/',views.initial_analysis2),
    path('初步分析1/初步分析2/result/',views.result),
    path("贷款分析1/贷款分析2/",views.loan_analyse2),
    path("贷款分析1/贷款分析2/loan_result/",views.loan_result),
    path("nin/",views.nin),
    path("ini_errtest/",views.ini_errtest),
    path("loan_errtest/",views.loan_errtest),
    path("loan_errcontent/",views.loan_errcontent),
    path("ini_contenterr/",views.ini_contenterr),
    path("model_add/",views.model_add),
    path("func_choose/",views.func_choose),
    path(r'login/', views_login.login),
    path(r'register/', views_login.register),
    path(r'logout/', views_login.logout),
    path(r'captcha/', include('captcha.urls')),
    path(r'confirm/', views_login.user_confirm),
    path(r'index/',views_login.index),
    path(r'联系我们/',views.contact),
]
