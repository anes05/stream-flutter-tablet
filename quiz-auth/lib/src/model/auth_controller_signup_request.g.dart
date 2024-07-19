// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller_signup_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthControllerSignupRequest extends AuthControllerSignupRequest {
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;

  factory _$AuthControllerSignupRequest(
          [void Function(AuthControllerSignupRequestBuilder)? updates]) =>
      (new AuthControllerSignupRequestBuilder()..update(updates))._build();

  _$AuthControllerSignupRequest._(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.confirmPassword})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'AuthControllerSignupRequest', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'AuthControllerSignupRequest', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        email, r'AuthControllerSignupRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'AuthControllerSignupRequest', 'password');
    BuiltValueNullFieldError.checkNotNull(
        confirmPassword, r'AuthControllerSignupRequest', 'confirmPassword');
  }

  @override
  AuthControllerSignupRequest rebuild(
          void Function(AuthControllerSignupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthControllerSignupRequestBuilder toBuilder() =>
      new AuthControllerSignupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthControllerSignupRequest &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        password == other.password &&
        confirmPassword == other.confirmPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, confirmPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthControllerSignupRequest')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class AuthControllerSignupRequestBuilder
    implements
        Builder<AuthControllerSignupRequest,
            AuthControllerSignupRequestBuilder> {
  _$AuthControllerSignupRequest? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _confirmPassword;
  String? get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String? confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  AuthControllerSignupRequestBuilder() {
    AuthControllerSignupRequest._defaults(this);
  }

  AuthControllerSignupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _password = $v.password;
      _confirmPassword = $v.confirmPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthControllerSignupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthControllerSignupRequest;
  }

  @override
  void update(void Function(AuthControllerSignupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthControllerSignupRequest build() => _build();

  _$AuthControllerSignupRequest _build() {
    final _$result = _$v ??
        new _$AuthControllerSignupRequest._(
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'AuthControllerSignupRequest', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'AuthControllerSignupRequest', 'lastName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'AuthControllerSignupRequest', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'AuthControllerSignupRequest', 'password'),
            confirmPassword: BuiltValueNullFieldError.checkNotNull(
                confirmPassword,
                r'AuthControllerSignupRequest',
                'confirmPassword'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
