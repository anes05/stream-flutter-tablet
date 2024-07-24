// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_filter1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionsFilter1 extends QuestionsFilter1 {
  @override
  final int? offset;
  @override
  final int? limit;
  @override
  final int? skip;
  @override
  final QuestionsFilterOrder? order;
  @override
  final BuiltMap<String, JsonObject?>? where;
  @override
  final QuestionsFields? fields;

  factory _$QuestionsFilter1(
          [void Function(QuestionsFilter1Builder)? updates]) =>
      (new QuestionsFilter1Builder()..update(updates))._build();

  _$QuestionsFilter1._(
      {this.offset, this.limit, this.skip, this.order, this.where, this.fields})
      : super._();

  @override
  QuestionsFilter1 rebuild(void Function(QuestionsFilter1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsFilter1Builder toBuilder() =>
      new QuestionsFilter1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsFilter1 &&
        offset == other.offset &&
        limit == other.limit &&
        skip == other.skip &&
        order == other.order &&
        where == other.where &&
        fields == other.fields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, skip.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionsFilter1')
          ..add('offset', offset)
          ..add('limit', limit)
          ..add('skip', skip)
          ..add('order', order)
          ..add('where', where)
          ..add('fields', fields))
        .toString();
  }
}

class QuestionsFilter1Builder
    implements Builder<QuestionsFilter1, QuestionsFilter1Builder> {
  _$QuestionsFilter1? _$v;

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

  MapBuilder<String, JsonObject?>? _where;
  MapBuilder<String, JsonObject?> get where =>
      _$this._where ??= new MapBuilder<String, JsonObject?>();
  set where(MapBuilder<String, JsonObject?>? where) => _$this._where = where;

  QuestionsFieldsBuilder? _fields;
  QuestionsFieldsBuilder get fields =>
      _$this._fields ??= new QuestionsFieldsBuilder();
  set fields(QuestionsFieldsBuilder? fields) => _$this._fields = fields;

  QuestionsFilter1Builder() {
    QuestionsFilter1._defaults(this);
  }

  QuestionsFilter1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _offset = $v.offset;
      _limit = $v.limit;
      _skip = $v.skip;
      _order = $v.order?.toBuilder();
      _where = $v.where?.toBuilder();
      _fields = $v.fields?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionsFilter1 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsFilter1;
  }

  @override
  void update(void Function(QuestionsFilter1Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionsFilter1 build() => _build();

  _$QuestionsFilter1 _build() {
    _$QuestionsFilter1 _$result;
    try {
      _$result = _$v ??
          new _$QuestionsFilter1._(
              offset: offset,
              limit: limit,
              skip: skip,
              order: _order?.build(),
              where: _where?.build(),
              fields: _fields?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'order';
        _order?.build();
        _$failedField = 'where';
        _where?.build();
        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuestionsFilter1', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
