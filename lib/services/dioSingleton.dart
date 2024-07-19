import 'package:dio/dio.dart';

class DioSingleton {
  static final DioSingleton _instance = DioSingleton._internal();
  final Dio _dioInstance = Dio(); // dio initialization
  factory DioSingleton() => _instance;

  DioSingleton._internal(){
    _dioInstance.options.baseUrl="http://10.0.2.2:3020/api/auth-service";
  }

  Dio get dio => _dioInstance; // Getter to access Dio instance
}



/* to use dio as singleton i hsould be using htis class and then use these two lines :
final dioSingleton = DioSingleton();
final dio = dioSingleton.dio;

 */