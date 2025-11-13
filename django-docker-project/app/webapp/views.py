from django.shortcuts import render
from django.http import HttpResponse

def home(request):
    return HttpResponse("Olá! Bem-vindo à aplicação Django em Docker!")
