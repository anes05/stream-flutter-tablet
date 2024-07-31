import 'dart:convert';

import 'package:agora/models/jsQuestion.dart';
import 'package:questions_live/questions_live.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

List<Map<String, dynamic>>? convertOptions(BuiltList<JsonObject>? options) {
  return options?.map((jsonObject) {
    final map = jsonObject.asMap;
    return {
      "choice": map['choice'] as String,
      "correct": map['correct'] as bool,
    };
  }).toList();
}
webSocketSend({
  required String sUrl,
    required String msg,
    required String sender,
    required String receiver,
    required String token,
    required Questions? question}) async {
  try {
    print(question);
    sUrl = "$sUrl?token=$token&store=$sender";

    //var questionJson =serializers.serializeWith(Questions.serializer, question);

    var questionJson={
      "id": question?.id,
      "question": question?.question,
      "options": convertOptions(question?.options),
      "iconUrl": question?.iconUrl
    };
    print("question body : $questionJson");
/*    questionStrin = questionJson.toString();
    print("question string : $questionJson");*/
    print(sUrl);
    final data = {
      "store": receiver,
      "question": questionJson,
    };
    print(" this is the data: $data");
/*    final dataJson = const JsonEncoder().convert(data);
    print(dataJson);*/

    final wsUrl = Uri.parse(sUrl);
    final channel = WebSocketChannel.connect(wsUrl);
    print("connected");
    print("this is the json of the data : $data /////////////////////////// ");
    String dataToString= data.toString();
    print("this is data to String :  $dataToString");

    print(data.runtimeType);
    channel.sink.add(jsonEncode(data));
    channel.sink.close(status.goingAway);
  } on Exception catch (e) {
    print(e);
  }
}