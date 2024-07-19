// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller_login_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthControllerLoginRequest extends AuthControllerLoginRequest {
  @override
  final String email;
  @override
  final String password;

  factory _$AuthControllerLoginRequest(
          [void Function(AuthControllerLoginRequestBuilder)? updates]) =>
      (new AuthControllerLoginRequestBuilder()..update(updates))._build();

  _$AuthControllerLoginRequest._({required this.email, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'AuthControllerLoginRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'AuthControllerLoginRequest', 'password');
  }

  @override
  AuthControllerLoginRequest rebuild(
          void Function(AuthControllerLoginRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthControllerLoginRequestBuilder toBuilder() =>
      new AuthControllerLoginRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthControllerLoginRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthControllerLoginRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class AuthControllerLoginRequestBuilder
    implements
        Builder<AuthControllerLoginRequest, AuthControllerLoginRequestBuilder> {
  _$AuthControllerLoginRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  AuthControllerLoginRequestBuilder() {
    AuthControllerLoginRequest._defaults(this);
  }

  AuthControllerLoginRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthControllerLoginRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthControllerLoginRequest;
  }

  @override
  void update(void Function(AuthControllerLoginRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthControllerLoginRequest build() => _build();

  _$AuthControllerLoginRequest _build() {
    final _$result = _$v ??
        new _$AuthControllerLoginRequest._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'AuthControllerLoginRequest', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'AuthControllerLoginRequest', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
