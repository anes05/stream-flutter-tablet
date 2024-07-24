// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_partial.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionsPartial extends QuestionsPartial {
  @override
  final String? id;
  @override
  final String? question;
  @override
  final BuiltList<JsonObject>? options;
  @override
  final String? iconUrl;

  factory _$QuestionsPartial(
          [void Function(QuestionsPartialBuilder)? updates]) =>
      (new QuestionsPartialBuilder()..update(updates))._build();

  _$QuestionsPartial._({this.id, this.question, this.options, this.iconUrl})
      : super._();

  @override
  QuestionsPartial rebuild(void Function(QuestionsPartialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsPartialBuilder toBuilder() =>
      new QuestionsPartialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsPartial &&
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
    return (newBuiltValueToStringHelper(r'QuestionsPartial')
          ..add('id', id)
          ..add('question', question)
          ..add('options', options)
          ..add('iconUrl', iconUrl))
        .toString();
  }
}

class QuestionsPartialBuilder
    implements Builder<QuestionsPartial, QuestionsPartialBuilder> {
  _$QuestionsPartial? _$v;

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

  QuestionsPartialBuilder() {
    QuestionsPartial._defaults(this);
  }

  QuestionsPartialBuilder get _$this {
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
  void replace(QuestionsPartial other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsPartial;
  }

  @override
  void update(void Function(QuestionsPartialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionsPartial build() => _build();

  _$QuestionsPartial _build() {
    _$QuestionsPartial _$result;
    try {
      _$result = _$v ??
          new _$QuestionsPartial._(
              id: id,
              question: question,
              options: _options?.build(),
              iconUrl: iconUrl);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuestionsPartial', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
