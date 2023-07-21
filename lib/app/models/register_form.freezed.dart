// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterForm _$RegisterFormFromJson(Map<String, dynamic> json) {
  return _RegisterForm.fromJson(json);
}

/// @nodoc
mixin _$RegisterForm {
  @RfControl(validators: [RequiredValidator()])
  String? get fullName => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String? get email => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String? get password => throw _privateConstructorUsedError;
  @RfControl(validators: [
    MustMatchValidator('password_confirmation', 'password', true)
  ])
  String? get passwordConfirmation => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredTrueValidator()])
  bool? get acceptLicense => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterFormCopyWith<RegisterForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormCopyWith<$Res> {
  factory $RegisterFormCopyWith(
          RegisterForm value, $Res Function(RegisterForm) then) =
      _$RegisterFormCopyWithImpl<$Res, RegisterForm>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String? fullName,
      @RfControl(validators: [RequiredValidator()]) String? email,
      @RfControl(validators: [RequiredValidator()]) String? password,
      @RfControl(validators: [
        MustMatchValidator('password_confirmation', 'password', true)
      ])
      String? passwordConfirmation,
      @RfControl(validators: [RequiredTrueValidator()]) bool? acceptLicense});
}

/// @nodoc
class _$RegisterFormCopyWithImpl<$Res, $Val extends RegisterForm>
    implements $RegisterFormCopyWith<$Res> {
  _$RegisterFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
    Object? acceptLicense = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordConfirmation: freezed == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptLicense: freezed == acceptLicense
          ? _value.acceptLicense
          : acceptLicense // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterFormCopyWith<$Res>
    implements $RegisterFormCopyWith<$Res> {
  factory _$$_RegisterFormCopyWith(
          _$_RegisterForm value, $Res Function(_$_RegisterForm) then) =
      __$$_RegisterFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String? fullName,
      @RfControl(validators: [RequiredValidator()]) String? email,
      @RfControl(validators: [RequiredValidator()]) String? password,
      @RfControl(validators: [
        MustMatchValidator('password_confirmation', 'password', true)
      ])
      String? passwordConfirmation,
      @RfControl(validators: [RequiredTrueValidator()]) bool? acceptLicense});
}

/// @nodoc
class __$$_RegisterFormCopyWithImpl<$Res>
    extends _$RegisterFormCopyWithImpl<$Res, _$_RegisterForm>
    implements _$$_RegisterFormCopyWith<$Res> {
  __$$_RegisterFormCopyWithImpl(
      _$_RegisterForm _value, $Res Function(_$_RegisterForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
    Object? acceptLicense = freezed,
  }) {
    return _then(_$_RegisterForm(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordConfirmation: freezed == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptLicense: freezed == acceptLicense
          ? _value.acceptLicense
          : acceptLicense // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_RegisterForm implements _RegisterForm {
  _$_RegisterForm(
      {@RfControl(validators: [RequiredValidator()]) this.fullName,
      @RfControl(validators: [RequiredValidator()]) this.email,
      @RfControl(validators: [RequiredValidator()]) this.password,
      @RfControl(validators: [
        MustMatchValidator('password_confirmation', 'password', true)
      ])
      this.passwordConfirmation,
      @RfControl(validators: [RequiredTrueValidator()]) this.acceptLicense});

  factory _$_RegisterForm.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterFormFromJson(json);

  @override
  @RfControl(validators: [RequiredValidator()])
  final String? fullName;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String? email;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String? password;
  @override
  @RfControl(validators: [
    MustMatchValidator('password_confirmation', 'password', true)
  ])
  final String? passwordConfirmation;
  @override
  @RfControl(validators: [RequiredTrueValidator()])
  final bool? acceptLicense;

  @override
  String toString() {
    return 'RegisterForm(fullName: $fullName, email: $email, password: $password, passwordConfirmation: $passwordConfirmation, acceptLicense: $acceptLicense)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterForm &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.acceptLicense, acceptLicense) ||
                other.acceptLicense == acceptLicense));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, email, password,
      passwordConfirmation, acceptLicense);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterFormCopyWith<_$_RegisterForm> get copyWith =>
      __$$_RegisterFormCopyWithImpl<_$_RegisterForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterFormToJson(
      this,
    );
  }
}

abstract class _RegisterForm implements RegisterForm {
  factory _RegisterForm(
      {@RfControl(validators: [RequiredValidator()]) final String? fullName,
      @RfControl(validators: [RequiredValidator()]) final String? email,
      @RfControl(validators: [RequiredValidator()]) final String? password,
      @RfControl(validators: [
        MustMatchValidator('password_confirmation', 'password', true)
      ])
      final String? passwordConfirmation,
      @RfControl(validators: [RequiredTrueValidator()])
      final bool? acceptLicense}) = _$_RegisterForm;

  factory _RegisterForm.fromJson(Map<String, dynamic> json) =
      _$_RegisterForm.fromJson;

  @override
  @RfControl(validators: [RequiredValidator()])
  String? get fullName;
  @override
  @RfControl(validators: [RequiredValidator()])
  String? get email;
  @override
  @RfControl(validators: [RequiredValidator()])
  String? get password;
  @override
  @RfControl(validators: [
    MustMatchValidator('password_confirmation', 'password', true)
  ])
  String? get passwordConfirmation;
  @override
  @RfControl(validators: [RequiredTrueValidator()])
  bool? get acceptLicense;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterFormCopyWith<_$_RegisterForm> get copyWith =>
      throw _privateConstructorUsedError;
}
