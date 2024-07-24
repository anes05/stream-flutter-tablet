// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_fields.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionsFields extends QuestionsFields {
  @override
  final OneOf oneOf;

  factory _$QuestionsFields([void Function(QuestionsFieldsBuilder)? updates]) =>
      (new QuestionsFieldsBuilder()..update(updates))._build();

  _$QuestionsFields._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(oneOf, r'QuestionsFields', 'oneOf');
  }

  @override
  QuestionsFields rebuild(void Function(QuestionsFieldsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsFieldsBuilder toBuilder() =>
      new QuestionsFieldsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsFields && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionsFields')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class QuestionsFieldsBuilder
    implements Builder<QuestionsFields, QuestionsFieldsBuilder> {
  _$QuestionsFields? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  QuestionsFieldsBuilder() {
    QuestionsFields._defaults(this);
  }

  QuestionsFieldsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionsFields other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsFields;
  }

  @override
  void update(void Function(QuestionsFieldsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionsFields build() => _build();

  _$QuestionsFields _build() {
    final _$result = _$v ??
        new _$QuestionsFields._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'QuestionsFields', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
