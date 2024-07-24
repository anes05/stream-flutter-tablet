import 'package:test/test.dart';
import 'package:questions_live/questions_live.dart';


/// tests for QuestionsControllerApi
void main() {
  final instance = QuestionsLive().getQuestionsControllerApi();

  group(QuestionsControllerApi, () {
    //Future<LoopbackCount> questionsControllerCount({ BuiltMap<String, JsonObject> where }) async
    test('test questionsControllerCount', () async {
      // TODO
    });

    //Future<Questions> questionsControllerCreate(QuestionsControllerCreateRequest questionsControllerCreateRequest) async
    test('test questionsControllerCreate', () async {
      // TODO
    });

    //Future<JsonObject> questionsControllerDeleteById(String id) async
    test('test questionsControllerDeleteById', () async {
      // TODO
    });

    //Future<QuestionsControllerFind200Response> questionsControllerFind({ QuestionsFilter1 filter }) async
    test('test questionsControllerFind', () async {
      // TODO
    });

    //Future<QuestionsWithRelations> questionsControllerFindById(String id, { QuestionsFilter filter }) async
    test('test questionsControllerFindById', () async {
      // TODO
    });

    //Future<JsonObject> questionsControllerReplaceById(String id, { Questions questions }) async
    test('test questionsControllerReplaceById', () async {
      // TODO
    });

    //Future<LoopbackCount> questionsControllerUpdateAll({ BuiltMap<String, JsonObject> where, QuestionsPartial questionsPartial }) async
    test('test questionsControllerUpdateAll', () async {
      // TODO
    });

    //Future<JsonObject> questionsControllerUpdateById(String id, { QuestionsPartial questionsPartial }) async
    test('test questionsControllerUpdateById', () async {
      // TODO
    });

  });
}
