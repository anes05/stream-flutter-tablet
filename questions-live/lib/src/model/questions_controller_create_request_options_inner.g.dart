// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_controller_create_request_options_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionsControllerCreateRequestOptionsInner
    extends QuestionsControllerCreateRequestOptionsInner {
  @override
  final String? choice;
  @override
  final bool? correct;

  factory _$QuestionsControllerCreateRequestOptionsInner(
          [void Function(QuestionsControllerCreateRequestOptionsInnerBuilder)?
              updates]) =>
      (new QuestionsControllerCreateRequestOptionsInnerBuilder()
            ..update(updates))
          ._build();

  _$QuestionsControllerCreateRequestOptionsInner._({this.choice, this.correct})
      : super._();

  @override
  QuestionsControllerCreateRequestOptionsInner rebuild(
          void Function(QuestionsControllerCreateRequestOptionsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsControllerCreateRequestOptionsInnerBuilder toBuilder() =>
      new QuestionsControllerCreateRequestOptionsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsControllerCreateRequestOptionsInner &&
        choice == other.choice &&
        correct == other.correct;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, choice.hashCode);
    _$hash = $jc(_$hash, correct.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'QuestionsControllerCreateRequestOptionsInner')
          ..add('choice', choice)
          ..add('correct', correct))
        .toString();
  }
}

class QuestionsControllerCreateRequestOptionsInnerBuilder
    implements
        Builder<QuestionsControllerCreateRequestOptionsInner,
            QuestionsControllerCreateRequestOptionsInnerBuilder> {
  _$QuestionsControllerCreateRequestOptionsInner? _$v;

  String? _choice;
  String? get choice => _$this._choice;
  set choice(String? choice) => _$this._choice = choice;

  bool? _correct;
  bool? get correct => _$this._correct;
  set correct(bool? correct) => _$this._correct = correct;

  QuestionsControllerCreateRequestOptionsInnerBuilder() {
    QuestionsControllerCreateRequestOptionsInner._defaults(this);
  }

  QuestionsControllerCreateRequestOptionsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _choice = $v.choice;
      _correct = $v.correct;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionsControllerCreateRequestOptionsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsControllerCreateRequestOptionsInner;
  }

  @override
  void update(
      void Function(QuestionsControllerCreateRequestOptionsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionsControllerCreateRequestOptionsInner build() => _build();

  _$QuestionsControllerCreateRequestOptionsInner _build() {
    final _$result = _$v ??
        new _$QuestionsControllerCreateRequestOptionsInner._(
            choice: choice, correct: correct);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
