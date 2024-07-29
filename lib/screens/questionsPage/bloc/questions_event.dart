part of 'questions_bloc.dart';

@freezed
class QuestionsEvent with _$QuestionsEvent {
  const factory QuestionsEvent.getAllQuestions() = _GetAllQuestions;
  const factory QuestionsEvent.searchQuestions(String query) = _SearchQuestions;
}
