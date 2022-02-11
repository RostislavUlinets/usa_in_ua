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

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  UserNameChanged userNameChanged(String userName) {
    return UserNameChanged(
      userName,
    );
  }

  VerifyPhoneNumber verifyPhoneNumber() {
    return const VerifyPhoneNumber();
  }

  VerifyOTP verifyOTP(String otpCode) {
    return VerifyOTP(
      otpCode,
    );
  }

  LinkEmailWithPhone linkEmailWithPhone() {
    return const LinkEmailWithPhone();
  }

  SignInWithPhoneNumberAndPasswordPressed
      signInWithPhoneNumberAndPasswordPressed() {
    return const SignInWithPhoneNumberAndPasswordPressed();
  }

  SignInWithGooglePressed signInWithGooglePressed() {
    return const SignInWithGooglePressed();
  }

  RestorePassword restorePassword(String contactInfo) {
    return RestorePassword(
      contactInfo,
    );
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() verifyPhoneNumber,
    required TResult Function(String otpCode) verifyOTP,
    required TResult Function() linkEmailWithPhone,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String contactInfo) restorePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(VerifyOTP value) verifyOTP,
    required TResult Function(LinkEmailWithPhone value) linkEmailWithPhone,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RestorePassword value) restorePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
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
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() verifyPhoneNumber,
    required TResult Function(String otpCode) verifyOTP,
    required TResult Function() linkEmailWithPhone,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String contactInfo) restorePassword,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(VerifyOTP value) verifyOTP,
    required TResult Function(LinkEmailWithPhone value) linkEmailWithPhone,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RestorePassword value) restorePassword,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
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
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() verifyPhoneNumber,
    required TResult Function(String otpCode) verifyOTP,
    required TResult Function() linkEmailWithPhone,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String contactInfo) restorePassword,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(VerifyOTP value) verifyOTP,
    required TResult Function(LinkEmailWithPhone value) linkEmailWithPhone,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RestorePassword value) restorePassword,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements AuthEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
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
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() verifyPhoneNumber,
    required TResult Function(String otpCode) verifyOTP,
    required TResult Function() linkEmailWithPhone,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String contactInfo) restorePassword,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(VerifyOTP value) verifyOTP,
    required TResult Function(LinkEmailWithPhone value) linkEmailWithPhone,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RestorePassword value) restorePassword,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
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
abstract class $UserNameChangedCopyWith<$Res> {
  factory $UserNameChangedCopyWith(
          UserNameChanged value, $Res Function(UserNameChanged) then) =
      _$UserNameChangedCopyWithImpl<$Res>;
  $Res call({String userName});
}

/// @nodoc
class _$UserNameChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $UserNameChangedCopyWith<$Res> {
  _$UserNameChangedCopyWithImpl(
      UserNameChanged _value, $Res Function(UserNameChanged) _then)
      : super(_value, (v) => _then(v as UserNameChanged));

  @override
  UserNameChanged get _value => super._value as UserNameChanged;

  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(UserNameChanged(
      userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserNameChanged implements UserNameChanged {
  const _$UserNameChanged(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'AuthEvent.userNameChanged(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserNameChanged &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  $UserNameChangedCopyWith<UserNameChanged> get copyWith =>
      _$UserNameChangedCopyWithImpl<UserNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() verifyPhoneNumber,
    required TResult Function(String otpCode) verifyOTP,
    required TResult Function() linkEmailWithPhone,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String contactInfo) restorePassword,
  }) {
    return userNameChanged(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
  }) {
    return userNameChanged?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(VerifyOTP value) verifyOTP,
    required TResult Function(LinkEmailWithPhone value) linkEmailWithPhone,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RestorePassword value) restorePassword,
  }) {
    return userNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
  }) {
    return userNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(this);
    }
    return orElse();
  }
}

abstract class UserNameChanged implements AuthEvent {
  const factory UserNameChanged(String userName) = _$UserNameChanged;

  String get userName;
  @JsonKey(ignore: true)
  $UserNameChangedCopyWith<UserNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPhoneNumberCopyWith<$Res> {
  factory $VerifyPhoneNumberCopyWith(
          VerifyPhoneNumber value, $Res Function(VerifyPhoneNumber) then) =
      _$VerifyPhoneNumberCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyPhoneNumberCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $VerifyPhoneNumberCopyWith<$Res> {
  _$VerifyPhoneNumberCopyWithImpl(
      VerifyPhoneNumber _value, $Res Function(VerifyPhoneNumber) _then)
      : super(_value, (v) => _then(v as VerifyPhoneNumber));

  @override
  VerifyPhoneNumber get _value => super._value as VerifyPhoneNumber;
}

/// @nodoc

class _$VerifyPhoneNumber implements VerifyPhoneNumber {
  const _$VerifyPhoneNumber();

  @override
  String toString() {
    return 'AuthEvent.verifyPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is VerifyPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() verifyPhoneNumber,
    required TResult Function(String otpCode) verifyOTP,
    required TResult Function() linkEmailWithPhone,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String contactInfo) restorePassword,
  }) {
    return verifyPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
  }) {
    return verifyPhoneNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(VerifyOTP value) verifyOTP,
    required TResult Function(LinkEmailWithPhone value) linkEmailWithPhone,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RestorePassword value) restorePassword,
  }) {
    return verifyPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
  }) {
    return verifyPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class VerifyPhoneNumber implements AuthEvent {
  const factory VerifyPhoneNumber() = _$VerifyPhoneNumber;
}

/// @nodoc
abstract class $VerifyOTPCopyWith<$Res> {
  factory $VerifyOTPCopyWith(VerifyOTP value, $Res Function(VerifyOTP) then) =
      _$VerifyOTPCopyWithImpl<$Res>;
  $Res call({String otpCode});
}

/// @nodoc
class _$VerifyOTPCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $VerifyOTPCopyWith<$Res> {
  _$VerifyOTPCopyWithImpl(VerifyOTP _value, $Res Function(VerifyOTP) _then)
      : super(_value, (v) => _then(v as VerifyOTP));

  @override
  VerifyOTP get _value => super._value as VerifyOTP;

  @override
  $Res call({
    Object? otpCode = freezed,
  }) {
    return _then(VerifyOTP(
      otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOTP implements VerifyOTP {
  const _$VerifyOTP(this.otpCode);

  @override
  final String otpCode;

  @override
  String toString() {
    return 'AuthEvent.verifyOTP(otpCode: $otpCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyOTP &&
            const DeepCollectionEquality().equals(other.otpCode, otpCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(otpCode));

  @JsonKey(ignore: true)
  @override
  $VerifyOTPCopyWith<VerifyOTP> get copyWith =>
      _$VerifyOTPCopyWithImpl<VerifyOTP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() verifyPhoneNumber,
    required TResult Function(String otpCode) verifyOTP,
    required TResult Function() linkEmailWithPhone,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String contactInfo) restorePassword,
  }) {
    return verifyOTP(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
  }) {
    return verifyOTP?.call(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(VerifyOTP value) verifyOTP,
    required TResult Function(LinkEmailWithPhone value) linkEmailWithPhone,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RestorePassword value) restorePassword,
  }) {
    return verifyOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
  }) {
    return verifyOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(this);
    }
    return orElse();
  }
}

abstract class VerifyOTP implements AuthEvent {
  const factory VerifyOTP(String otpCode) = _$VerifyOTP;

  String get otpCode;
  @JsonKey(ignore: true)
  $VerifyOTPCopyWith<VerifyOTP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkEmailWithPhoneCopyWith<$Res> {
  factory $LinkEmailWithPhoneCopyWith(
          LinkEmailWithPhone value, $Res Function(LinkEmailWithPhone) then) =
      _$LinkEmailWithPhoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$LinkEmailWithPhoneCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $LinkEmailWithPhoneCopyWith<$Res> {
  _$LinkEmailWithPhoneCopyWithImpl(
      LinkEmailWithPhone _value, $Res Function(LinkEmailWithPhone) _then)
      : super(_value, (v) => _then(v as LinkEmailWithPhone));

  @override
  LinkEmailWithPhone get _value => super._value as LinkEmailWithPhone;
}

/// @nodoc

class _$LinkEmailWithPhone implements LinkEmailWithPhone {
  const _$LinkEmailWithPhone();

  @override
  String toString() {
    return 'AuthEvent.linkEmailWithPhone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LinkEmailWithPhone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() verifyPhoneNumber,
    required TResult Function(String otpCode) verifyOTP,
    required TResult Function() linkEmailWithPhone,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String contactInfo) restorePassword,
  }) {
    return linkEmailWithPhone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
  }) {
    return linkEmailWithPhone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
    required TResult orElse(),
  }) {
    if (linkEmailWithPhone != null) {
      return linkEmailWithPhone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(VerifyOTP value) verifyOTP,
    required TResult Function(LinkEmailWithPhone value) linkEmailWithPhone,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RestorePassword value) restorePassword,
  }) {
    return linkEmailWithPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
  }) {
    return linkEmailWithPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
    required TResult orElse(),
  }) {
    if (linkEmailWithPhone != null) {
      return linkEmailWithPhone(this);
    }
    return orElse();
  }
}

abstract class LinkEmailWithPhone implements AuthEvent {
  const factory LinkEmailWithPhone() = _$LinkEmailWithPhone;
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
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() verifyPhoneNumber,
    required TResult Function(String otpCode) verifyOTP,
    required TResult Function() linkEmailWithPhone,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String contactInfo) restorePassword,
  }) {
    return signInWithPhoneNumberAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
  }) {
    return signInWithPhoneNumberAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(VerifyOTP value) verifyOTP,
    required TResult Function(LinkEmailWithPhone value) linkEmailWithPhone,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RestorePassword value) restorePassword,
  }) {
    return signInWithPhoneNumberAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
  }) {
    return signInWithPhoneNumberAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
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
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() verifyPhoneNumber,
    required TResult Function(String otpCode) verifyOTP,
    required TResult Function() linkEmailWithPhone,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String contactInfo) restorePassword,
  }) {
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
  }) {
    return signInWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(VerifyOTP value) verifyOTP,
    required TResult Function(LinkEmailWithPhone value) linkEmailWithPhone,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RestorePassword value) restorePassword,
  }) {
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
  }) {
    return signInWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
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
abstract class $RestorePasswordCopyWith<$Res> {
  factory $RestorePasswordCopyWith(
          RestorePassword value, $Res Function(RestorePassword) then) =
      _$RestorePasswordCopyWithImpl<$Res>;
  $Res call({String contactInfo});
}

/// @nodoc
class _$RestorePasswordCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $RestorePasswordCopyWith<$Res> {
  _$RestorePasswordCopyWithImpl(
      RestorePassword _value, $Res Function(RestorePassword) _then)
      : super(_value, (v) => _then(v as RestorePassword));

  @override
  RestorePassword get _value => super._value as RestorePassword;

  @override
  $Res call({
    Object? contactInfo = freezed,
  }) {
    return _then(RestorePassword(
      contactInfo == freezed
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RestorePassword implements RestorePassword {
  const _$RestorePassword(this.contactInfo);

  @override
  final String contactInfo;

  @override
  String toString() {
    return 'AuthEvent.restorePassword(contactInfo: $contactInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestorePassword &&
            const DeepCollectionEquality()
                .equals(other.contactInfo, contactInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(contactInfo));

  @JsonKey(ignore: true)
  @override
  $RestorePasswordCopyWith<RestorePassword> get copyWith =>
      _$RestorePasswordCopyWithImpl<RestorePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() verifyPhoneNumber,
    required TResult Function(String otpCode) verifyOTP,
    required TResult Function() linkEmailWithPhone,
    required TResult Function() signInWithPhoneNumberAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String contactInfo) restorePassword,
  }) {
    return restorePassword(contactInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
  }) {
    return restorePassword?.call(contactInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? verifyPhoneNumber,
    TResult Function(String otpCode)? verifyOTP,
    TResult Function()? linkEmailWithPhone,
    TResult Function()? signInWithPhoneNumberAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String contactInfo)? restorePassword,
    required TResult orElse(),
  }) {
    if (restorePassword != null) {
      return restorePassword(contactInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(VerifyOTP value) verifyOTP,
    required TResult Function(LinkEmailWithPhone value) linkEmailWithPhone,
    required TResult Function(SignInWithPhoneNumberAndPasswordPressed value)
        signInWithPhoneNumberAndPasswordPressed,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RestorePassword value) restorePassword,
  }) {
    return restorePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
  }) {
    return restorePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(VerifyOTP value)? verifyOTP,
    TResult Function(LinkEmailWithPhone value)? linkEmailWithPhone,
    TResult Function(SignInWithPhoneNumberAndPasswordPressed value)?
        signInWithPhoneNumberAndPasswordPressed,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RestorePassword value)? restorePassword,
    required TResult orElse(),
  }) {
    if (restorePassword != null) {
      return restorePassword(this);
    }
    return orElse();
  }
}

abstract class RestorePassword implements AuthEvent {
  const factory RestorePassword(String contactInfo) = _$RestorePassword;

  String get contactInfo;
  @JsonKey(ignore: true)
  $RestorePasswordCopyWith<RestorePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {required PhoneNumber phoneNumber,
      required Password password,
      required EmailAddress emailAddress,
      required UserName userName,
      required bool showErrorMessages,
      required bool isSubmitting,
      required String verificationId,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _AuthState(
      phoneNumber: phoneNumber,
      password: password,
      emailAddress: emailAddress,
      userName: userName,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      verificationId: verificationId,
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
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  UserName get userName => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  String get verificationId => throw _privateConstructorUsedError;
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
      EmailAddress emailAddress,
      UserName userName,
      bool showErrorMessages,
      bool isSubmitting,
      String verificationId,
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
    Object? emailAddress = freezed,
    Object? userName = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? verificationId = freezed,
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
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
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
      EmailAddress emailAddress,
      UserName userName,
      bool showErrorMessages,
      bool isSubmitting,
      String verificationId,
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
    Object? emailAddress = freezed,
    Object? userName = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? verificationId = freezed,
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
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
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
      required this.emailAddress,
      required this.userName,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.verificationId,
      required this.authFailureOrSuccessOption});

  @override
  final PhoneNumber phoneNumber;
  @override
  final Password password;
  @override
  final EmailAddress emailAddress;
  @override
  final UserName userName;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final String verificationId;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'AuthState(phoneNumber: $phoneNumber, password: $password, emailAddress: $emailAddress, userName: $userName, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, verificationId: $verificationId, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
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
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(verificationId),
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
      required EmailAddress emailAddress,
      required UserName userName,
      required bool showErrorMessages,
      required bool isSubmitting,
      required String verificationId,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_AuthState;

  @override
  PhoneNumber get phoneNumber;
  @override
  Password get password;
  @override
  EmailAddress get emailAddress;
  @override
  UserName get userName;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  String get verificationId;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
