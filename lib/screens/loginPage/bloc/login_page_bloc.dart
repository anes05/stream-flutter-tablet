import 'package:agora/services/dioSingleton.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_page_event.dart';
part 'login_page_state.dart';
part 'login_page_bloc.freezed.dart';

class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  final Dio _dio;
  LoginPageBloc() :_dio = DioSingleton().dio, super(const LoginPageState.initial()) {
    on<LoginPageEvent>((event, emit) async {
      await event.when(
          loginButtonPressed: (email,password) async {
            emit(const LoginPageState.loading());
            try{
              final response= await _dio.post('${_dio.options.baseUrl}3020/api/auth-service/auth/login',data: {
                'email':email,
                'password':password,
              });
              if (response.statusCode==200){
                final String role= response.data['user']['role'];
                final token = response.data['token'];
                final prefs=await SharedPreferences.getInstance();
                await prefs.setString('auth_token',token);
                print('Token: $token');
                print(role);
                emit(const LoginPageState.success());

              }else{
                emit(const LoginPageState.failure());
              }
            }catch(e){
              print(e);
            };
          }
      );
    });
  }
}
