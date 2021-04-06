from .models import User
from django.contrib.auth.views import LoginView
from django.urls import reverse_lazy
from django.views.generic import CreateView
from .forms import RegistrationForm


class RegisterView(CreateView):
    model = User
    template_name = 'account/registration.html'
    form_class = RegistrationForm
    success_url = reverse_lazy('home')


class SighInView(LoginView):
    template_name = 'account/login.html'
    success_url = reverse_lazy('home')


from django.contrib.auth import authenticate, login
from django.http import HttpResponseRedirect
from django.shortcuts import render
from django.urls import reverse
from account.forms import RegistrationForm


def registration_view(request):
    form = RegistrationForm(request.POST or None)

    if form.is_valid():
        new_user = form.save(commit=False)
        new_user.username = form.cleaned_data['username']
        new_user.set_password(form.cleaned_data['password'])
        new_user.email = form.cleaned_data['email']
        new_user.first_name = form.cleaned_data['first_name']
        new_user.last_name = form.cleaned_data['last_name']
        new_user.save()

        login_user = authenticate(request, username=form.cleaned_data['username'], password=form.cleaned_data['password'])

        if login_user:
            login(request, login_user)
            return HttpResponseRedirect(reverse('account'))


    context = {
        'form': form,
    }
    return render(request, 'account/registration.html', context)
