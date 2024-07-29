import 'package:agora/common_widgets/toast.dart';
import 'package:agora/services/dioSingleton.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';
import 'package:questions_live/questions_live.dart';

part 'questions_event.dart';
part 'questions_state.dart';
part 'questions_bloc.freezed.dart';

class QuestionsBloc extends Bloc<QuestionsEvent, QuestionsState> {
  final Dio _dio;
  List<Questions?> listQuestions = [];
  QuestionsBloc() :_dio = DioSingleton().dio, super(const QuestionsState.loadingState()) {
    on<QuestionsEvent>((event, emit) async{
      await event.when(getAllQuestions: () async {
        emit(const QuestionsState.loadingState());
        try {
          final response = await _dio.get(
              '${_dio.options.baseUrl}3023/api/question-service/questions',
              options: Options(
                  contentType: Headers.jsonContentType,
                  responseType: ResponseType.json
              ));
          print("this is the response : $response");
          if (response.statusCode == 200) {
            final data = response.data['data'] as List<dynamic>;
            print("this is the data $data");
            final List<Questions?>listQuestions = data.map((item) {
              return standardSerializers.deserializeWith(
                Questions.serializer,
                item as Map<String, dynamic>,
              );
            }).toList();
            emit(QuestionsState.loadedState(listQuestions));
          }else{
            emit(const QuestionsState.errorState());
            toastInfo(msg: "there's an error loading the List");
            print("there's an error loading the List, errCode:${response.statusCode}");
          }
        }catch (e){
          print(e);
          emit(const QuestionsState.errorState());
          toastInfo(msg: "there's an error !!!!!!!!!!!! -------------------------- ");

        }


      },
        searchQuestions: (query) async {
          emit(const QuestionsState.loadingState());
          final response = await _dio.get(
            '${_dio.options.baseUrl}3023/api/question-service/questions',
            options: Options(
              contentType: Headers.jsonContentType,
              responseType: ResponseType.json,
            ),
          );
          final data = response.data['data'] as List<dynamic>;
          listQuestions=data.map((item) {
            return standardSerializers.deserializeWith(
              Questions.serializer,
              item as Map<String, dynamic>,
            );
          }).toList();
          final lowerQuery = query.toLowerCase();
          final filteredQuestions = listQuestions.where((question) {
            final questionText = question?.question.toLowerCase() ?? '';
            return questionText.contains(lowerQuery);
          }).toList();
          print(filteredQuestions);
          emit(QuestionsState.loadedState(filteredQuestions));
        },
      );
    });
  }
}
