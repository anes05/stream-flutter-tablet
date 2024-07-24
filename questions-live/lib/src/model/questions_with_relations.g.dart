// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_with_relations.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionsWithRelations extends QuestionsWithRelations {
  @override
  final String? id;
  @override
  final String question;
  @override
  final BuiltList<JsonObject>? options;
  @override
  final String? iconUrl;

  factory _$QuestionsWithRelations(
          [void Function(QuestionsWithRelationsBuilder)? updates]) =>
      (new QuestionsWithRelationsBuilder()..update(updates))._build();

  _$QuestionsWithRelations._(
      {this.id, required this.question, this.options, this.iconUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        question, r'QuestionsWithRelations', 'question');
  }

  @override
  QuestionsWithRelations rebuild(
          void Function(QuestionsWithRelationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsWithRelationsBuilder toBuilder() =>
      new QuestionsWithRelationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsWithRelations &&
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
    return (newBuiltValueToStringHelper(r'QuestionsWithRelations')
          ..add('id', id)
          ..add('question', question)
          ..add('options', options)
          ..add('iconUrl', iconUrl))
        .toString();
  }
}

class QuestionsWithRelationsBuilder
    implements Builder<QuestionsWithRelations, QuestionsWithRelationsBuilder> {
  _$QuestionsWithRelations? _$v;

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

  QuestionsWithRelationsBuilder() {
    QuestionsWithRelations._defaults(this);
  }

  QuestionsWithRelationsBuilder get _$this {
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
  void replace(QuestionsWithRelations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsWithRelations;
  }

  @override
  void update(void Function(QuestionsWithRelationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionsWithRelations build() => _build();

  _$QuestionsWithRelations _build() {
    _$QuestionsWithRelations _$result;
    try {
      _$result = _$v ??
          new _$QuestionsWithRelations._(
              id: id,
              question: BuiltValueNullFieldError.checkNotNull(
                  question, r'QuestionsWithRelations', 'question'),
              options: _options?.build(),
              iconUrl: iconUrl);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuestionsWithRelations', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
