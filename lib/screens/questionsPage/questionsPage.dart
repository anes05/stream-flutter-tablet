import 'package:agora/common_widgets/appColors.dart';
import 'package:agora/common_widgets/commonWidgets.dart';
import 'package:agora/common_widgets/toast.dart';
import 'package:agora/screens/questionsPage/bloc/questions_bloc.dart';
import 'package:agora/screens/questionsPage/widgets.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:questions_live/questions_live.dart';

@RoutePage()
class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          QuestionsBloc()..add(const QuestionsEvent.getAllQuestions()),
      child: Scaffold(
        appBar: buildConsultQuestionsAppBar("Consult Questions", context),
        body: BlocBuilder<QuestionsBloc, QuestionsState>(
          builder: (context, state) {
            return state.when(
                loadingState: () =>
                    const Center(child: CircularProgressIndicator()),
                loadedState: (questionsList) {
                  return ListView.builder(
                    itemCount: questionsList.length,
                    itemBuilder: (_, index) {
                      final Questions? questionModel = questionsList[index];
                      return InkWell(
                        onTap: () {
                          print("You pressed on ${questionModel?.question}");
                          showQuestionDialog(context, questionModel!);

                        },
                        splashColor: AppColors.splashColor,
                        highlightColor: AppColors.highlightColor,
                        child: Card(
                          color: AppColors.cardBackground,
                          elevation: 4,
                          shadowColor: AppColors.blue.withOpacity(0.2),
                          // Subtle shadow effect
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            // Rounded corners
                            side: const BorderSide(
                                color: AppColors.borderColor,
                                width: 1), // Border with subtle color
                          ),
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  questionModel?.question ?? '',
                                  style: const TextStyle(
                                    color: AppColors.mainText,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Wrap(
                                  spacing: 8.0, // Space between items
                                  runSpacing: 4.0, // Space between lines
                                  children: questionModel?.options
                                          ?.map((option) {
                                        final optionMap = option.asMap;
                                        return Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if (optionMap['correct'] == true)
                                              const Icon(Icons.check,
                                                  color: Colors.green),
                                            const SizedBox(width: 4),
                                            Text(
                                              optionMap['choice'],
                                              style: const TextStyle(
                                                color: AppColors.hintText,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        );
                                      }).toList() ??
                                      [],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                errorState: () {
                  toastInfo(msg: "Error loading the results ++ ");
                  return const Center(
                      child: Text("There was an error loading the list"));
                });
          },
        ),
      ),
    );
  }
}
