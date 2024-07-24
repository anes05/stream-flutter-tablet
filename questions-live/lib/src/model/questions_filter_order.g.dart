// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_filter_order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionsFilterOrder extends QuestionsFilterOrder {
  @override
  final OneOf oneOf;

  factory _$QuestionsFilterOrder(
          [void Function(QuestionsFilterOrderBuilder)? updates]) =>
      (new QuestionsFilterOrderBuilder()..update(updates))._build();

  _$QuestionsFilterOrder._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'QuestionsFilterOrder', 'oneOf');
  }

  @override
  QuestionsFilterOrder rebuild(
          void Function(QuestionsFilterOrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsFilterOrderBuilder toBuilder() =>
      new QuestionsFilterOrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsFilterOrder && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'QuestionsFilterOrder')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class QuestionsFilterOrderBuilder
    implements Builder<QuestionsFilterOrder, QuestionsFilterOrderBuilder> {
  _$QuestionsFilterOrder? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  QuestionsFilterOrderBuilder() {
    QuestionsFilterOrder._defaults(this);
  }

  QuestionsFilterOrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionsFilterOrder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsFilterOrder;
  }

  @override
  void update(void Function(QuestionsFilterOrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionsFilterOrder build() => _build();

  _$QuestionsFilterOrder _build() {
    final _$result = _$v ??
        new _$QuestionsFilterOrder._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'QuestionsFilterOrder', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
