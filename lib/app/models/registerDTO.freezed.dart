// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registerDTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterDTO _$RegisterDTOFromJson(Map<String, dynamic> json) {
  return _RegisterDTO.fromJson(json);
}

/// @nodoc
mixin _$RegisterDTO {
  String? get full_name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get password_confirmation => throw _privateConstructorUsedError;
  bool? get is_agree => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDTOCopyWith<RegisterDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDTOCopyWith<$Res> {
  factory $RegisterDTOCopyWith(
          RegisterDTO value, $Res Function(RegisterDTO) then) =
      _$RegisterDTOCopyWithImpl<$Res, RegisterDTO>;
  @useResult
  $Res call(
      {String? full_name,
      String? email,
      String? password,
      String? password_confirmation,
      bool? is_agree});
}

/// @nodoc
class _$RegisterDTOCopyWithImpl<$Res, $Val extends RegisterDTO>
    implements $RegisterDTOCopyWith<$Res> {
  _$RegisterDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? full_name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? password_confirmation = freezed,
    Object? is_agree = freezed,
  }) {
    return _then(_value.copyWith(
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      password_confirmation: freezed == password_confirmation
          ? _value.password_confirmation
          : password_confirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      is_agree: freezed == is_agree
          ? _value.is_agree
          : is_agree // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterDTOCopyWith<$Res>
    implements $RegisterDTOCopyWith<$Res> {
  factory _$$_RegisterDTOCopyWith(
          _$_RegisterDTO value, $Res Function(_$_RegisterDTO) then) =
      __$$_RegisterDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? full_name,
      String? email,
      String? password,
      String? password_confirmation,
      bool? is_agree});
}

/// @nodoc
class __$$_RegisterDTOCopyWithImpl<$Res>
    extends _$RegisterDTOCopyWithImpl<$Res, _$_RegisterDTO>
    implements _$$_RegisterDTOCopyWith<$Res> {
  __$$_RegisterDTOCopyWithImpl(
      _$_RegisterDTO _value, $Res Function(_$_RegisterDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? full_name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? password_confirmation = freezed,
    Object? is_agree = freezed,
  }) {
    return _then(_$_RegisterDTO(
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      password_confirmation: freezed == password_confirmation
          ? _value.password_confirmation
          : password_confirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      is_agree: freezed == is_agree
          ? _value.is_agree
          : is_agree // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_RegisterDTO implements _RegisterDTO {
  _$_RegisterDTO(
      {this.full_name,
      this.email,
      this.password,
      this.password_confirmation,
      this.is_agree});

  factory _$_RegisterDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterDTOFromJson(json);

  @override
  final String? full_name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? password_confirmation;
  @override
  final bool? is_agree;

  @override
  String toString() {
    return 'RegisterDTO(full_name: $full_name, email: $email, password: $password, password_confirmation: $password_confirmation, is_agree: $is_agree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterDTO &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.password_confirmation, password_confirmation) ||
                other.password_confirmation == password_confirmation) &&
            (identical(other.is_agree, is_agree) ||
                other.is_agree == is_agree));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, full_name, email, password, password_confirmation, is_agree);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterDTOCopyWith<_$_RegisterDTO> get copyWith =>
      __$$_RegisterDTOCopyWithImpl<_$_RegisterDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterDTOToJson(
      this,
    );
  }
}

abstract class _RegisterDTO implements RegisterDTO {
  factory _RegisterDTO(
      {final String? full_name,
      final String? email,
      final String? password,
      final String? password_confirmation,
      final bool? is_agree}) = _$_RegisterDTO;

  factory _RegisterDTO.fromJson(Map<String, dynamic> json) =
      _$_RegisterDTO.fromJson;

  @override
  String? get full_name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get password_confirmation;
  @override
  bool? get is_agree;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterDTOCopyWith<_$_RegisterDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
