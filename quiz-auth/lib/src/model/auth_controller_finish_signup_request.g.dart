// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller_finish_signup_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthControllerFinishSignupRequest
    extends AuthControllerFinishSignupRequest {
  @override
  final String email;

  factory _$AuthControllerFinishSignupRequest(
          [void Function(AuthControllerFinishSignupRequestBuilder)? updates]) =>
      (new AuthControllerFinishSignupRequestBuilder()..update(updates))
          ._build();

  _$AuthControllerFinishSignupRequest._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'AuthControllerFinishSignupRequest', 'email');
  }

  @override
  AuthControllerFinishSignupRequest rebuild(
          void Function(AuthControllerFinishSignupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthControllerFinishSignupRequestBuilder toBuilder() =>
      new AuthControllerFinishSignupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthControllerFinishSignupRequest && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthControllerFinishSignupRequest')
          ..add('email', email))
        .toString();
  }
}

class AuthControllerFinishSignupRequestBuilder
    implements
        Builder<AuthControllerFinishSignupRequest,
            AuthControllerFinishSignupRequestBuilder> {
  _$AuthControllerFinishSignupRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  AuthControllerFinishSignupRequestBuilder() {
    AuthControllerFinishSignupRequest._defaults(this);
  }

  AuthControllerFinishSignupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthControllerFinishSignupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthControllerFinishSignupRequest;
  }

  @override
  void update(
      void Function(AuthControllerFinishSignupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthControllerFinishSignupRequest build() => _build();

  _$AuthControllerFinishSignupRequest _build() {
    final _$result = _$v ??
        new _$AuthControllerFinishSignupRequest._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'AuthControllerFinishSignupRequest', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
