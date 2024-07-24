// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_fields_one_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionsFieldsOneOf extends QuestionsFieldsOneOf {
  @override
  final bool? id;
  @override
  final bool? question;
  @override
  final bool? options;
  @override
  final bool? iconUrl;

  factory _$QuestionsFieldsOneOf(
          [void Function(QuestionsFieldsOneOfBuilder)? updates]) =>
      (new QuestionsFieldsOneOfBuilder()..update(updates))._build();

  _$QuestionsFieldsOneOf._({this.id, this.question, this.options, this.iconUrl})
      : super._();

  @override
  QuestionsFieldsOneOf rebuild(
          void Function(QuestionsFieldsOneOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsFieldsOneOfBuilder toBuilder() =>
      new QuestionsFieldsOneOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsFieldsOneOf &&
        id == other.id &&
        question == other.question &&
        options == other.options &&
        iconUrl == other.iconUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, iconUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionsFieldsOneOf')
          ..add('id', id)
          ..add('question', question)
          ..add('options', options)
          ..add('iconUrl', iconUrl))
        .toString();
  }
}

class QuestionsFieldsOneOfBuilder
    implements Builder<QuestionsFieldsOneOf, QuestionsFieldsOneOfBuilder> {
  _$QuestionsFieldsOneOf? _$v;

  bool? _id;
  bool? get id => _$this._id;
  set id(bool? id) => _$this._id = id;

  bool? _question;
  bool? get question => _$this._question;
  set question(bool? question) => _$this._question = question;

  bool? _options;
  bool? get options => _$this._options;
  set options(bool? options) => _$this._options = options;

  bool? _iconUrl;
  bool? get iconUrl => _$this._iconUrl;
  set iconUrl(bool? iconUrl) => _$this._iconUrl = iconUrl;

  QuestionsFieldsOneOfBuilder() {
    QuestionsFieldsOneOf._defaults(this);
  }

  QuestionsFieldsOneOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _question = $v.question;
      _options = $v.options;
      _iconUrl = $v.iconUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionsFieldsOneOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsFieldsOneOf;
  }

  @override
  void update(void Function(QuestionsFieldsOneOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionsFieldsOneOf build() => _build();

  _$QuestionsFieldsOneOf _build() {
    final _$result = _$v ??
        new _$QuestionsFieldsOneOf._(
            id: id, question: question, options: options, iconUrl: iconUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
