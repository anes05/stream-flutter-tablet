// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Questions extends Questions {
  @override
  final String? id;
  @override
  final String question;
  @override
  final BuiltList<JsonObject>? options;
  @override
  final String? iconUrl;

  factory _$Questions([void Function(QuestionsBuilder)? updates]) =>
      (new QuestionsBuilder()..update(updates))._build();

  _$Questions._({this.id, required this.question, this.options, this.iconUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(question, r'Questions', 'question');
  }

  @override
  Questions rebuild(void Function(QuestionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsBuilder toBuilder() => new QuestionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Questions &&
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
    return (newBuiltValueToStringHelper(r'Questions')
          ..add('id', id)
          ..add('question', question)
          ..add('options', options)
          ..add('iconUrl', iconUrl))
        .toString();
  }
}

class QuestionsBuilder implements Builder<Questions, QuestionsBuilder> {
  _$Questions? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  ListBuilder<JsonObject>? _options;
  ListBuilder<JsonObject> get options =>
      _$this._options ??= new ListBuilder<JsonObject>();
  set options(ListBuilder<JsonObject>? options) => _$this._options = options;

  String? _iconUrl;
  String? get iconUrl => _$this._iconUrl;
  set iconUrl(String? iconUrl) => _$this._iconUrl = iconUrl;

  QuestionsBuilder() {
    Questions._defaults(this);
  }

  QuestionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _question = $v.question;
      _options = $v.options?.toBuilder();
      _iconUrl = $v.iconUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Questions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Questions;
  }

  @override
  void update(void Function(QuestionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Questions build() => _build();

  _$Questions _build() {
    _$Questions _$result;
    try {
      _$result = _$v ??
          new _$Questions._(
              id: id,
              question: BuiltValueNullFieldError.checkNotNull(
                  question, r'Questions', 'question'),
              options: _options?.build(),
              iconUrl: iconUrl);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Questions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
