from rest_framework import serializers
from django.contrib.auth import get_user_model
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from .models import University

User = get_user_model()

class UserSerializer(serializers.ModelSerializer):
    university_name = serializers.CharField(source='university.name', read_only=True)
    avatar = serializers.ImageField(required=False)

    class Meta:
        model = User
        fields = ('id', 'email', 'full_name', 'country_code', 'university', 'university_name', 'preferred_lang', 'role', 'arrival_date', 'bio', 'phone_number', 'avatar')
        read_only_fields = ('id', 'role', 'email')

class SignupSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True)
    university_id = serializers.UUIDField(required=False, allow_null=True)

    class Meta:
        model = User
        fields = ('email', 'password', 'full_name', 'country_code', 'university_id')

    def create(self, validated_data):
        university_id = validated_data.pop('university_id', None)
        password = validated_data.pop('password')
        
        user = User(**validated_data)
        user.set_password(password)
        
        if university_id:
            try:
                user.university = University.objects.get(id=university_id)
            except University.DoesNotExist:
                pass 
        
        user.save()
        return user

    def to_representation(self, instance):
        refresh = RefreshToken.for_user(instance)
        return {
            'accessToken': str(refresh.access_token),
            'refreshToken': str(refresh),
            'user': UserSerializer(instance).data
        }

class CustomTokenObtainPairSerializer(TokenObtainPairSerializer):
    def validate(self, attrs):
        data = super().validate(attrs)
        data['accessToken'] = data.pop('access')
        data['refreshToken'] = data.pop('refresh')
        data['user'] = UserSerializer(self.user).data
        return data
