import 'dart:convert';

import 'package:questions_live/questions_live.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

webSocketSend({required String sUrl,required String msg , required String sender, required String receiver,required String token, required Questions? question }) async {
  try {
    sUrl= "$sUrl?token=$token&store=$sender";
    var questionJson = jsonEncode(serializers.serializeWith(Questions.serializer, question));
    print("question body : $questionJson end of body /////////////////////// ");
    print(sUrl);
    final data={
      "store":receiver,
      "question":questionJson,
    };
    print(" this is the data: $data");
    print(JsonEncoder().convert(data));
    final wsUrl = Uri.parse(sUrl);
    final channel = WebSocketChannel.connect(wsUrl);
    print("connected");
    channel.sink.add(JsonEncoder().convert(data));
    channel.sink.close(status.goingAway);
  } on Exception catch (e) {
    print(e);
  }
}


webSocketListen(String sUrl, String token, String store) async {
  try {
    sUrl = "$sUrl?token=$token&store=$store";
    final wsUrl = Uri.parse(sUrl);
    final channel = WebSocketChannel.connect(wsUrl);
    print("Listening for messages...");
    channel.stream.listen(
          (message) {
        print("Received: $message");
        // Decode the incoming message
        final decodedMessage = jsonDecode(message);
        print("Decoded message: $decodedMessage");
        // Process the decoded message as needed
      },
      onDone: () {
        print("WebSocket closed");
      },
      onError: (error) {
        print("Error: $error");
      },
    );
  } on Exception catch (e) {
    print(e);
  }
}