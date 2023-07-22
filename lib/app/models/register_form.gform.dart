// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'register_form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveRegisterFormFormConsumer extends StatelessWidget {
  const ReactiveRegisterFormFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, RegisterFormForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRegisterFormForm.of(context);

    if (formModel is! RegisterFormForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class RegisterFormFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const RegisterFormFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final RegisterFormForm form;
}

class ReactiveRegisterFormForm extends StatelessWidget {
  const ReactiveRegisterFormForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final RegisterFormForm form;

  final WillPopCallback? onWillPop;

  static RegisterFormForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              RegisterFormFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        RegisterFormFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as RegisterFormFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return RegisterFormFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class RegisterFormFormBuilder extends StatefulWidget {
  const RegisterFormFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final RegisterForm? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, RegisterFormForm formModel, Widget? child) builder;

  final void Function(BuildContext context, RegisterFormForm formModel)?
      initState;

  @override
  _RegisterFormFormBuilderState createState() =>
      _RegisterFormFormBuilderState();
}

class _RegisterFormFormBuilderState extends State<RegisterFormFormBuilder> {
  late RegisterFormForm _formModel;

  @override
  void initState() {
    _formModel =
        RegisterFormForm(RegisterFormForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant RegisterFormFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          RegisterFormForm(RegisterFormForm.formElements(widget.model), null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }

      widget.initState?.call(context, _formModel);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveRegisterFormForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class RegisterFormForm implements FormModel<RegisterForm> {
  RegisterFormForm(
    this.form,
    this.path,
  );

  static const String fullNameControlName = "fullName";

  static const String emailControlName = "email";

  static const String passwordControlName = "password";

  static const String passwordConfirmationControlName = "passwordConfirmation";

  static const String acceptLicenseControlName = "acceptLicense";

  final FormGroup form;

  final String? path;

  String fullNameControlPath() => pathBuilder(fullNameControlName);
  String emailControlPath() => pathBuilder(emailControlName);
  String passwordControlPath() => pathBuilder(passwordControlName);
  String passwordConfirmationControlPath() =>
      pathBuilder(passwordConfirmationControlName);
  String acceptLicenseControlPath() => pathBuilder(acceptLicenseControlName);
  String? get _fullNameValue => fullNameControl?.value;
  String? get _emailValue => emailControl?.value;
  String? get _passwordValue => passwordControl?.value;
  String? get _passwordConfirmationValue => passwordConfirmationControl?.value;
  bool? get _acceptLicenseValue => acceptLicenseControl?.value;
  bool get containsFullName {
    try {
      form.control(fullNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPassword {
    try {
      form.control(passwordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPasswordConfirmation {
    try {
      form.control(passwordConfirmationControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAcceptLicense {
    try {
      form.control(acceptLicenseControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get fullNameErrors => fullNameControl?.errors;
  Object? get emailErrors => emailControl?.errors;
  Object? get passwordErrors => passwordControl?.errors;
  Object? get passwordConfirmationErrors => passwordConfirmationControl?.errors;
  Object? get acceptLicenseErrors => acceptLicenseControl?.errors;
  void get fullNameFocus => form.focus(fullNameControlPath());
  void get emailFocus => form.focus(emailControlPath());
  void get passwordFocus => form.focus(passwordControlPath());
  void get passwordConfirmationFocus =>
      form.focus(passwordConfirmationControlPath());
  void get acceptLicenseFocus => form.focus(acceptLicenseControlPath());
  void fullNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsFullName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          fullNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            fullNameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void emailRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsEmail) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          emailControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            emailControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void passwordRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPassword) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          passwordControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            passwordControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void passwordConfirmationRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPasswordConfirmation) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          passwordConfirmationControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            passwordConfirmationControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void acceptLicenseRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsAcceptLicense) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          acceptLicenseControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            acceptLicenseControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void fullNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fullNameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordConfirmationValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordConfirmationControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void acceptLicenseValueUpdate(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    acceptLicenseControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fullNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fullNameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordConfirmationValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordConfirmationControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void acceptLicenseValuePatch(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    acceptLicenseControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fullNameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fullNameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void emailValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void passwordValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      passwordControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void passwordConfirmationValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      passwordConfirmationControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void acceptLicenseValueReset(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      acceptLicenseControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String>? get fullNameControl => containsFullName
      ? form.control(fullNameControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get emailControl => containsEmail
      ? form.control(emailControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get passwordControl => containsPassword
      ? form.control(passwordControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get passwordConfirmationControl =>
      containsPasswordConfirmation
          ? form.control(passwordConfirmationControlPath())
              as FormControl<String>?
          : null;
  FormControl<bool>? get acceptLicenseControl => containsAcceptLicense
      ? form.control(acceptLicenseControlPath()) as FormControl<bool>?
      : null;
  void fullNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fullNameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fullNameControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void emailSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void passwordSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      passwordControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      passwordControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void passwordConfirmationSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      passwordConfirmationControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      passwordConfirmationControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void acceptLicenseSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      acceptLicenseControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      acceptLicenseControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  RegisterForm get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'RegisterFormForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return RegisterForm(
        fullName: _fullNameValue,
        email: _emailValue,
        password: _passwordValue,
        passwordConfirmation: _passwordConfirmationValue,
        acceptLicense: _acceptLicenseValue);
  }

  void submit({
    required void Function(RegisterForm model) onValid,
    void Function()? onNotValid,
  }) {
    form.markAllAsTouched();
    if (form.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  @override
  void updateValue(
    RegisterForm value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(RegisterFormForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    RegisterForm? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(RegisterForm? registerForm) => FormGroup({
        fullNameControlName: FormControl<String>(
            value: registerForm?.fullName,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: registerForm?.email,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: registerForm?.password,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordConfirmationControlName: FormControl<String>(
            value: registerForm?.passwordConfirmation,
            validators: [
              RequiredValidator(),
              MustMatchValidatorZ('password', 'passwordConfirmation', true)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        acceptLicenseControlName: FormControl<bool>(
            value: registerForm?.acceptLicense,
            validators: [RequiredTrueValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveRegisterFormFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveRegisterFormFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(RegisterFormForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      RegisterFormForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, RegisterFormForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRegisterFormForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveRegisterFormFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveRegisterFormFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      RegisterFormForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      RegisterFormForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, RegisterFormForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRegisterFormForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <V>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
