"""ask URL Configuration
The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import include, url


from qa.views import test, question_list, question_detail, popular
from qa.views import question_ask, question_answer
from qa.views import user_signup, user_login, user_logout

urlpatterns = [
	url(r'^$', question_list, name='question_list'),
	url(r'^login/', user_login, name='login'),
	url(r'^signup/', user_signup, name='signup'),
	url(r'^logout/', user_logout, name='logout'),
	url(r'^question/(?P<pk>\d+)/', question_detail, 
					name='question_detail'),
	url(r'^ask/', question_ask, name='question_ask'),
	url(r'^answer/', question_answer, name='question_answer'),
	url(r'^popular/', popular, name='popular'),	
	url(r'^new/', test, name='new'),	
]
