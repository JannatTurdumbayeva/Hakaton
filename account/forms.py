from django import forms
from django.contrib.auth import get_user_model

from account.models import User


class RegistrationForm(forms.ModelForm):
    password = forms.CharField(min_length=1, required=True, widget=forms.PasswordInput)
    password_confirmation = forms.CharField(min_length=1, required=True, widget=forms.PasswordInput)

    def clean(self):
        data = self.cleaned_data
        password = data.get('password')
        password_confirm = data.pop('password_confirmation')
        if password != password_confirm:
            raise forms.ValidationError('Password mismatch!')
        else:
            return data

    def clean_username(self):
        username = self.cleaned_data.get('username')
        if User.objects.filter(username=username).exists():
            raise forms.ValidationError('A user with the same name already exists')
        return username

    def save(self, commit=True):
        user = User.objects.create_user(**self.cleaned_data)
        return user

    class Meta:
        model = get_user_model()
        fields = ('username', 'email', 'password', 'password_confirmation')
