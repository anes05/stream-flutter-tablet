// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loopback_count.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoopbackCount extends LoopbackCount {
  @override
  final num? count;

  factory _$LoopbackCount([void Function(LoopbackCountBuilder)? updates]) =>
      (new LoopbackCountBuilder()..update(updates))._build();

  _$LoopbackCount._({this.count}) : super._();

  @override
  LoopbackCount rebuild(void Function(LoopbackCountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoopbackCountBuilder toBuilder() => new LoopbackCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoopbackCount && count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoopbackCount')..add('count', count))
        .toString();
  }
}

class LoopbackCountBuilder
    implements Builder<LoopbackCount, LoopbackCountBuilder> {
  _$LoopbackCount? _$v;

  num? _count;
  num? get count => _$this._count;
  set count(num? count) => _$this._count = count;

  LoopbackCountBuilder() {
    LoopbackCount._defaults(this);
  }

  LoopbackCountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoopbackCount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoopbackCount;
  }

  @override
  void update(void Function(LoopbackCountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoopbackCount build() => _build();

  _$LoopbackCount _build() {
    final _$result = _$v ?? new _$LoopbackCount._(count: count);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
