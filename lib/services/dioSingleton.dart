import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioSingleton {
  static final DioSingleton _instance = DioSingleton._internal();
  final Dio _dioInstance = Dio(); // dio initialization
  factory DioSingleton() => _instance;

  DioSingleton._internal(){
    _dioInstance.options.baseUrl="http://10.0.2.2:";

    _dioInstance.interceptors.add(InterceptorsWrapper(
        onRequest: (options,handler) async {
          SharedPreferences prefs= await SharedPreferences.getInstance();
          String? token= prefs.getString('auth_token');
          if (token != null) {
            options.headers['Authorization']= 'Bearer $token';
          }

          return handler.next(options);
        }
    ));
    _dioInstance.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,
        filter: (options, args){
          // don't print requests with uris containing '/posts'
          /*  if(options.path.contains('/posts')){
            return false;
          }*/
          // don't print responses with unit8 list data
          return !args.isResponse || !args.hasUint8ListData;
        }
    )
    );


  }

  Dio get dio => _dioInstance; // Getter to access Dio instance
}



/* to use dio as singleton i hsould be using htis class and then use these two lines :
final dioSingleton = DioSingleton();
final dio = dioSingleton.dio;

 */