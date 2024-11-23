from pathlib import Path


# SECURITY WARNING: don't run with debug turned on in production!

DEBUG = True

# Database
# https://docs.djangoproject.com/en/3.2/ref/settings/#databases

BASE_DIR = Path(__file__).resolve().parent.parent
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'HOST': '39.105.215.35',
        'PORT': '3306',
        'USER': 'root',
        'PASSWORD': 'N4apjxjrsn',
        'NAME': 'erp-db',
        'OPTIONS': {'charset': 'utf8mb4'},
    }
}

# Tencent 短信参数
SECRET_ID = ''
SECRET_KEY = ''
SMS_SDK_APP_ID = ''
TEMPLATE_ID = ''
SIGN_NAME = ''
REGION = ''  


# 系统接口

CRM_URL = None

