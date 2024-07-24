// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_controller_find200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionsControllerFind200Response
    extends QuestionsControllerFind200Response {
  @override
  final BuiltList<QuestionsWithRelations>? data;

  factory _$QuestionsControllerFind200Response(
          [void Function(QuestionsControllerFind200ResponseBuilder)?
              updates]) =>
      (new QuestionsControllerFind200ResponseBuilder()..update(updates))
          ._build();

  _$QuestionsControllerFind200Response._({this.data}) : super._();

  @override
  QuestionsControllerFind200Response rebuild(
          void Function(QuestionsControllerFind200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsControllerFind200ResponseBuilder toBuilder() =>
      new QuestionsControllerFind200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsControllerFind200Response && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionsControllerFind200Response')
          ..add('data', data))
        .toString();
  }
}

class QuestionsControllerFind200ResponseBuilder
    implements
        Builder<QuestionsControllerFind200Response,
            QuestionsControllerFind200ResponseBuilder> {
  _$QuestionsControllerFind200Response? _$v;

  ListBuilder<QuestionsWithRelations>? _data;
  ListBuilder<QuestionsWithRelations> get data =>
      _$this._data ??= new ListBuilder<QuestionsWithRelations>();
  set data(ListBuilder<QuestionsWithRelations>? data) => _$this._data = data;

  QuestionsControllerFind200ResponseBuilder() {
    QuestionsControllerFind200Response._defaults(this);
  }

  QuestionsControllerFind200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionsControllerFind200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsControllerFind200Response;
  }

  @override
  void update(
      void Function(QuestionsControllerFind200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionsControllerFind200Response build() => _build();

  _$QuestionsControllerFind200Response _build() {
    _$QuestionsControllerFind200Response _$result;
    try {
      _$result = _$v ??
          new _$QuestionsControllerFind200Response._(data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuestionsControllerFind200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
