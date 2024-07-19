part of 'login_page_bloc.dart';

@freezed
class LoginPageState with _$LoginPageState {
  const factory LoginPageState.initial() = _Initial;
  const factory LoginPageState.loading() = _Loading;
  const factory LoginPageState.success() = _Success;
  const factory LoginPageState.failure() = _Failure;
}
