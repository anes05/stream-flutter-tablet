// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionsFilter extends QuestionsFilter {
  @override
  final int? offset;
  @override
  final int? limit;
  @override
  final int? skip;
  @override
  final QuestionsFilterOrder? order;
  @override
  final QuestionsFields? fields;

  factory _$QuestionsFilter([void Function(QuestionsFilterBuilder)? updates]) =>
      (new QuestionsFilterBuilder()..update(updates))._build();

  _$QuestionsFilter._(
      {this.offset, this.limit, this.skip, this.order, this.fields})
      : super._();

  @override
  QuestionsFilter rebuild(void Function(QuestionsFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsFilterBuilder toBuilder() =>
      new QuestionsFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsFilter &&
        offset == other.offset &&
        limit == other.limit &&
        skip == other.skip &&
        order == other.order &&
        fields == other.fields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, skip.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionsFilter')
          ..add('offset', offset)
          ..add('limit', limit)
          ..add('skip', skip)
          ..add('order', order)
          ..add('fields', fields))
        .toString();
  }
}

class QuestionsFilterBuilder
    implements Builder<QuestionsFilter, QuestionsFilterBuilder> {
  _$QuestionsFilter? _$v;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  QuestionsFilterOrderBuilder? _order;
  QuestionsFilterOrderBuilder get order =>
      _$this._order ??= new QuestionsFilterOrderBuilder();
  set order(QuestionsFilterOrderBuilder? order) => _$this._order = order;

  QuestionsFieldsBuilder? _fields;
  QuestionsFieldsBuilder get fields =>
      _$this._fields ??= new QuestionsFieldsBuilder();
  set fields(QuestionsFieldsBuilder? fields) => _$this._fields = fields;

  QuestionsFilterBuilder() {
    QuestionsFilter._defaults(this);
  }

  QuestionsFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _offset = $v.offset;
      _limit = $v.limit;
      _skip = $v.skip;
      _order = $v.order?.toBuilder();
      _fields = $v.fields?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionsFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsFilter;
  }

  @override
  void update(void Function(QuestionsFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionsFilter build() => _build();

  _$QuestionsFilter _build() {
    _$QuestionsFilter _$result;
    try {
      _$result = _$v ??
          new _$QuestionsFilter._(
              offset: offset,
              limit: limit,
              skip: skip,
              order: _order?.build(),
              fields: _fields?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'order';
        _order?.build();
        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuestionsFilter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
