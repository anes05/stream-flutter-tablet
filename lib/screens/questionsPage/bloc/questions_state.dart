part of 'questions_bloc.dart';

@freezed
class QuestionsState with _$QuestionsState {
  const factory QuestionsState.loadingState() = _LoadingState;
  const factory QuestionsState.loadedState(List<Questions?> questionsList) = _LoadedState;
  const factory QuestionsState.errorState() = _ErrorState;
}
