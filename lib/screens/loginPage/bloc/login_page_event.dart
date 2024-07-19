part of 'login_page_bloc.dart';

@freezed
class LoginPageEvent with _$LoginPageEvent {

  const factory LoginPageEvent.loginButtonPressed({required String email, required String password}) = _LoginButtonPressed;

}
