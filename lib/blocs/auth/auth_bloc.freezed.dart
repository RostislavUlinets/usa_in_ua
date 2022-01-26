// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  PhoneNumberChanged phoneNumberChanged(String phoneNumber) {
    return PhoneNumberChanged(
      phoneNumber,
    );
  }

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  RegisterWithPhoneNumberPressed registerWithPhoneNumberPressed() {
    return const RegisterWithPhoneNumberPressed();
  }

  SignInWithPhoneNumberAndPasswordPressed
      signInWithPhoneNumberAndPasswordPressed() {
    return const SignInWithPhoneNumberAndPasswordPressed();
  }

  SignInWithGooglePressed signInWithGooglePressed() {
    return const SignInWithGooglePressed();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithPhoneNumberPressed,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithPhoneNumberPressed,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithPhoneNumberPressed,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithPhoneNumberPressed value)
        registerWithPhoneNumberPressed,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithPhoneNumberPressed value)?
        registerWithPhoneNumberPressed,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithPhoneNumberPressed value)?
        registerWithPhoneNumberPressed,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithPhoneNumberPressed,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithPhoneNumberPressed,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithPhoneNumberPressed,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithPhoneNumberPressed value)
        registerWithPhoneNumberPressed,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithPhoneNumberPressed value)?
        registerWithPhoneNumberPressed,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithPhoneNumberPressed value)?
        registerWithPhoneNumberPressed,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements AuthEvent {
  const factory PhoneNumberChanged(String phoneNumber) = _$PhoneNumberChanged;

  String get phoneNumber;
  @JsonKey(ignore: true)
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithPhoneNumberPressed,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithPhoneNumberPressed,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithPhoneNumberPressed,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithPhoneNumberPressed value)
        registerWithPhoneNumberPressed,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithPhoneNumberPressed value)?
        registerWithPhoneNumberPressed,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithPhoneNumberPressed value)?
        registerWithPhoneNumberPressed,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AuthEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterWithPhoneNumberPressedCopyWith<$Res> {
  factory $RegisterWithPhoneNumberPressedCopyWith(
          RegisterWithPhoneNumberPressed value,
          $Res Function(RegisterWithPhoneNumberPressed) then) =
      _$RegisterWithPhoneNumberPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterWithPhoneNumberPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $RegisterWithPhoneNumberPressedCopyWith<$Res> {
  _$RegisterWithPhoneNumberPressedCopyWithImpl(
      RegisterWithPhoneNumberPressed _value,
      $Res Function(RegisterWithPhoneNumberPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithPhoneNumberPressed));

  @override
  RegisterWithPhoneNumberPressed get _value =>
      super._value as RegisterWithPhoneNumberPressed;
}

/// @nodoc

class _$RegisterWithPhoneNumberPressed
    implements RegisterWithPhoneNumberPressed {
  const _$RegisterWithPhoneNumberPressed();

  @override
  String toString() {
    return 'AuthEvent.registerWithPhoneNumberPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterWithPhoneNumberPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithPhoneNumberPressed,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
  }) {
    return registerWithPhoneNumberPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithPhoneNumberPressed,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
  }) {
    return registerWithPhoneNumberPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithPhoneNumberPressed,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (registerWithPhoneNumberPressed != null) {
      return registerWithPhoneNumberPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithPhoneNumberPressed value)
        registerWithPhoneNumberPressed,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return registerWithPhoneNumberPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithPhoneNumberPressed value)?
        registerWithPhoneNumberPressed,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return registerWithPhoneNumberPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithPhoneNumberPressed value)?
        registerWithPhoneNumberPressed,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (registerWithPhoneNumberPressed != null) {
      return registerWithPhoneNumberPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithPhoneNumberPressed implements AuthEvent {
  const factory RegisterWithPhoneNumberPressed() =
      _$RegisterWithPhoneNumberPressed;
}

/// @nodoc
abstract class $SignInWithPhoneNumberAndPasswordPressedCopyWith<$Res> {
  factory $SignInWithPhoneNumberAndPasswordPressedCopyWith(
          SignInWithPhoneNumberAndPasswordPressed value,
          $Res Function(SignInWithPhoneNumberAndPasswordPressed) then) =
      _$SignInWithPhoneNumberAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithPhoneNumberAndPasswordPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $SignInWithPhoneNumberAndPasswordPressedCopyWith<$Res> {
  _$SignInWithPhoneNumberAndPasswordPressedCopyWithImpl(
      SignInWithPhoneNumberAndPasswordPressed _value,
      $Res Function(SignInWithPhoneNumberAndPasswordPressed) _then)
      : super(
            _value, (v) => _then(v as SignInWithPhoneNumberAndPasswordPressed));

  @override
  SignInWithPhoneNumberAndPasswordPressed get _value =>
      super._value as SignInWithPhoneNumberAndPasswordPressed;
}

/// @nodoc

class _$SignInWithPhoneNumberAndPasswordPressed
    implements SignInWithPhoneNumberAndPasswordPressed {
  const _$SignInWithPhoneNumberAndPasswordPressed();

  @override
  String toString() {
    return 'AuthEvent.signInWithPhoneNumberAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInWithPhoneNumberAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithPhoneNumberPressed,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
  }) {
    return signInWithPhoneNumberAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithPhoneNumberPressed,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
  }) {
    return signInWithPhoneNumberAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithPhoneNumberPressed,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithPhoneNumberAndPasswordPressed != null) {
      return signInWithPhoneNumberAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithPhoneNumberPressed value)
        registerWithPhoneNumberPressed,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return signInWithPhoneNumberAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithPhoneNumberPressed value)?
        registerWithPhoneNumberPressed,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return signInWithPhoneNumberAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithPhoneNumberPressed value)?
        registerWithPhoneNumberPressed,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithPhoneNumberAndPasswordPressed != null) {
      return signInWithPhoneNumberAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithPhoneNumberAndPasswordPressed implements AuthEvent {
  const factory SignInWithPhoneNumberAndPasswordPressed() =
      _$SignInWithPhoneNumberAndPasswordPressed;
}

/// @nodoc
abstract class $SignInWithGooglePressedCopyWith<$Res> {
  factory $SignInWithGooglePressedCopyWith(SignInWithGooglePressed value,
          $Res Function(SignInWithGooglePressed) then) =
      _$SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $SignInWithGooglePressedCopyWith<$Res> {
  _$SignInWithGooglePressedCopyWithImpl(SignInWithGooglePressed _value,
      $Res Function(SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as SignInWithGooglePressed));

  @override
  SignInWithGooglePressed get _value => super._value as SignInWithGooglePressed;
}

/// @nodoc

class _$SignInWithGooglePressed implements SignInWithGooglePressed {
  const _$SignInWithGooglePressed();

  @override
  String toString() {
    return 'AuthEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithPhoneNumberPressed,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
  }) {
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithPhoneNumberPressed,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
  }) {
    return signInWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithPhoneNumberPressed,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithPhoneNumberPressed value)
        registerWithPhoneNumberPressed,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithPhoneNumberPressed value)?
        registerWithPhoneNumberPressed,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return signInWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithPhoneNumberPressed value)?
        registerWithPhoneNumberPressed,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements AuthEvent {
  const factory SignInWithGooglePressed() = _$SignInWithGooglePressed;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {required PhoneNumber phoneNumber,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _AuthState(
      phoneNumber: phoneNumber,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {PhoneNumber phoneNumber,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PhoneNumber phoneNumber,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_AuthState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.phoneNumber,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final PhoneNumber phoneNumber;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'AuthState(phoneNumber: $phoneNumber, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required PhoneNumber phoneNumber,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_AuthState;

  @override
  PhoneNumber get phoneNumber;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
