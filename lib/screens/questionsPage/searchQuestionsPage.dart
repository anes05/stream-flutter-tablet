import 'package:agora/common_widgets/appColors.dart';
import 'package:agora/screens/questionsPage/bloc/questions_bloc.dart';
import 'package:agora/screens/questionsPage/widgets.dart';
import 'package:agora/utils/webSocket.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:questions_live/questions_live.dart';

@RoutePage()
class SearchQuestionsPage extends StatelessWidget {
  const SearchQuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Questions'),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) =>
        QuestionsBloc()
          ..add(const QuestionsEvent.getAllQuestions()),
        child: const SearchQuestionsBody(),
      ),
    );
  }
}

class SearchQuestionsBody extends StatelessWidget {
  const SearchQuestionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (query) {
              print(query);
              context.read<QuestionsBloc>().add(
                  QuestionsEvent.searchQuestions(query));
            },
            decoration: const InputDecoration(
              labelText: 'Search questions...',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          child: BlocBuilder<QuestionsBloc, QuestionsState>(
            builder: (context, state) {
              return state.when(
                loadingState: () =>
                const Center(child: CircularProgressIndicator()),
                loadedState: (questionsList) {
                  return ListView.builder(
                    itemCount: questionsList.length,
                    itemBuilder: (context, index) {
                      final question = questionsList[index];
                      return InkWell(
                        onTap: () {
                          print("You pressed on ${question?.question}");
                          showQuestionDialog(context, question!);
                        },
                        child: ListTile(
                          title: Text(question?.question ?? 'No Question'),
                          trailing: IconButton(
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(
                                  const Size(24, 24)),
                              backgroundColor: MaterialStateProperty.all(
                                  AppColors.blue),
                              foregroundColor: MaterialStateProperty.all(
                                  AppColors.mainBackground),

                            ),
                            icon: const Icon(Icons.send),
                            onPressed: () {
                              String strUrl = "ws://164.132.53.68:8888/";
                              String sender = 'channel01';
                              String reciever = 'channel01';
                              String msgData = '{"store": "live01", "msg": "hello" }';
                              webSocketSend(sUrl: strUrl,
                                  msg: msgData,
                                  sender: sender,
                                  receiver: reciever,
                                  token: 'lazjea',
                                  question: question);
                            },
                          ),
                        ),
                      );
                    },
                  );
                },
                errorState: () =>
                const Center(child: Text('Failed to load questions')),
              );
            },
          ),
        ),
      ],
    );
  }
}