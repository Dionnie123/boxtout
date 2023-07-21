// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterForm _$$_RegisterFormFromJson(Map<String, dynamic> json) =>
    _$_RegisterForm(
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      passwordConfirmation: json['password_confirmation'] as String?,
      acceptLicense: json['accept_license'] as bool?,
    );

Map<String, dynamic> _$$_RegisterFormToJson(_$_RegisterForm instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
      'accept_license': instance.acceptLicense,
    };
