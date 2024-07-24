import 'package:agora/common_widgets/appColors.dart';
import 'package:agora/routes/appRouter.gr.dart';
import 'package:agora/services/dioSingleton.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:questions_live/questions_live.dart';
AppBar buildConsultQuestionsAppBar(String text, BuildContext context) {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(
        color: AppColors.mainBackground,
        height: 1.0,
      ),
    ),
    title: Text(
      text,
      style: TextStyle(
        color: AppColors.mainText,
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {
          _showAddQuestionDialog(context);
        },
      ),
    ],
  );
}
void _showAddQuestionDialog(BuildContext context) {
  final TextEditingController questionController = TextEditingController();
  final TextEditingController iconUrlController = TextEditingController();
  final List<TextEditingController> optionControllers = [];
  final List<bool> optionCorrect = [];

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            title: Text('Add New Question'),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: questionController,
                    decoration: const InputDecoration(labelText: 'Question'),
                  ),
                  TextField(
                    controller: iconUrlController,
                    decoration:const InputDecoration(labelText: 'Icon URL'),
                  ),
                  ...List.generate(optionControllers.length, (index) {
                    return Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: optionControllers[index],
                            decoration: InputDecoration(labelText: 'Option ${index + 1}'),
                          ),
                        ),
                        Checkbox(
                          value: optionCorrect[index],
                          onChanged: (bool? value) {
                            setState(() {
                              optionCorrect[index] = value ?? false;
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.remove_circle),
                          onPressed: () {
                            setState(() {
                              optionControllers.removeAt(index);
                              optionCorrect.removeAt(index);
                            });
                          },
                        ),
                      ],
                    );
                  }),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        optionControllers.add(TextEditingController());
                        optionCorrect.add(false);
                      });
                    },
                    child: Text('Add Option'),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Add'),
                onPressed: () async {
                  // Prepare the data
                  final question = questionController.text;
                  final iconUrl = iconUrlController.text;
                  final options = List.generate(optionControllers.length, (index) {
                    return {
                      'choice': optionControllers[index].text,
                      'correct': optionCorrect[index],
                    };
                  });

                  // Send the POST request
                  final dioSingleton = DioSingleton();
                  final dio = dioSingleton.dio;
                  try {
                    final response = await dio.post(
                      '${dio.options.baseUrl}3000/questions',
                      data: {
                        'question': question,
                        'iconUrl': iconUrl,
                        'options': options,
                      },
                    );
                    print('Response: ${response.data}');
                    Navigator.of(context).pop();
                    context.pushRoute(QuestionsRoute());


                  } catch (e) {
                    print('Error: $e');
                  }
                },
              ),
            ],
          );
        },
      );
    },
  );
}
void showQuestionDialog(BuildContext context, Questions question) {
  final TextEditingController questionController = TextEditingController(text: question.question);
  final TextEditingController iconUrlController = TextEditingController(text: question.iconUrl ?? '');
  final List<TextEditingController> optionControllers = question.options?.map((option) {
    return TextEditingController(text: option.asMap['choice']);
  }).toList() ?? [];
  final List optionCorrect = question.options?.map((option) {
    return option.asMap['correct'] ?? false;
  }).toList() ?? [];

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            title: Text('Edit Question'),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: questionController,
                    decoration: InputDecoration(labelText: 'Question'),
                  ),
                  TextField(
                    controller: iconUrlController,
                    decoration: InputDecoration(labelText: 'Icon URL'),
                  ),
                  ...List.generate(optionControllers.length, (index) {
                    return Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: optionControllers[index],
                            decoration: InputDecoration(labelText: 'Option ${index + 1}'),
                          ),
                        ),
                        Checkbox(
                          value: optionCorrect[index],
                          onChanged: (bool? value) {
                            setState(() {
                              optionCorrect[index] = value ?? false;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.remove_circle),
                          onPressed: () {
                            setState(() {
                              optionControllers.removeAt(index);
                              optionCorrect.removeAt(index);
                            });
                          },
                        ),
                      ],
                    );
                  }),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        optionControllers.add(TextEditingController());
                        optionCorrect.add(false);
                      });
                    },
                    child: Text('Add Option'),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Delete'),
                onPressed: () async {
                  // Send the DELETE request
                  final dioSingleton = DioSingleton();
                  final dio = dioSingleton.dio;
                  try {
                    await dio.delete('${dio.options.baseUrl}3000/questions/${question.id}');
                    Navigator.of(context).pop();
                    context.router.popAndPush(const QuestionsRoute()); // Refresh the page
                  } catch (e) {
                    print('Error: $e');
                  }
                },
              ),
              TextButton(
                child: Text('Modify'),
                onPressed: () async {
                  // Prepare the data
                  final updatedQuestion = questionController.text;
                  final updatedIconUrl = iconUrlController.text;
                  final updatedOptions = List.generate(optionControllers.length, (index) {
                    return {
                      'choice': optionControllers[index].text,
                      'correct': optionCorrect[index],
                    };
                  });

                  // Send the PUT request
                  final dioSingleton = DioSingleton();
                  final dio = dioSingleton.dio;
                  try {
                    await dio.put(
                      '${dio.options.baseUrl}3000/questions/${question.id}',
                      data: {
                        'question': updatedQuestion,
                        'iconUrl': updatedIconUrl,
                        'options': updatedOptions,
                      },
                    );
                    Navigator.of(context).pop();
                    context.router.popAndPush(const QuestionsRoute()); // Refresh the page
                  } catch (e) {
                    print('Error: $e');
                  }
                },
              ),
            ],
          );
        },
      );
    },
  );
}




