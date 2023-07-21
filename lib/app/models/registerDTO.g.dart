// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registerDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterDTO _$$_RegisterDTOFromJson(Map<String, dynamic> json) =>
    _$_RegisterDTO(
      full_name: json['full_name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      password_confirmation: json['password_confirmation'] as String?,
      is_agree: json['is_agree'] as bool?,
    );

Map<String, dynamic> _$$_RegisterDTOToJson(_$_RegisterDTO instance) =>
    <String, dynamic>{
      'full_name': instance.full_name,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.password_confirmation,
      'is_agree': instance.is_agree,
    };
