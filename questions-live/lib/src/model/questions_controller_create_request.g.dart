// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_controller_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionsControllerCreateRequest
    extends QuestionsControllerCreateRequest {
  @override
  final String? question;
  @override
  final String? iconUrl;
  @override
  final BuiltList<QuestionsControllerCreateRequestOptionsInner>? options;

  factory _$QuestionsControllerCreateRequest(
          [void Function(QuestionsControllerCreateRequestBuilder)? updates]) =>
      (new QuestionsControllerCreateRequestBuilder()..update(updates))._build();

  _$QuestionsControllerCreateRequest._(
      {this.question, this.iconUrl, this.options})
      : super._();

  @override
  QuestionsControllerCreateRequest rebuild(
          void Function(QuestionsControllerCreateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsControllerCreateRequestBuilder toBuilder() =>
      new QuestionsControllerCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsControllerCreateRequest &&
        question == other.question &&
        iconUrl == other.iconUrl &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, iconUrl.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionsControllerCreateRequest')
          ..add('question', question)
          ..add('iconUrl', iconUrl)
          ..add('options', options))
        .toString();
  }
}

class QuestionsControllerCreateRequestBuilder
    implements
        Builder<QuestionsControllerCreateRequest,
            QuestionsControllerCreateRequestBuilder> {
  _$QuestionsControllerCreateRequest? _$v;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _iconUrl;
  String? get iconUrl => _$this._iconUrl;
  set iconUrl(String? iconUrl) => _$this._iconUrl = iconUrl;

  ListBuilder<QuestionsControllerCreateRequestOptionsInner>? _options;
  ListBuilder<QuestionsControllerCreateRequestOptionsInner> get options =>
      _$this._options ??=
          new ListBuilder<QuestionsControllerCreateRequestOptionsInner>();
  set options(
          ListBuilder<QuestionsControllerCreateRequestOptionsInner>? options) =>
      _$this._options = options;

  QuestionsControllerCreateRequestBuilder() {
    QuestionsControllerCreateRequest._defaults(this);
  }

  QuestionsControllerCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _iconUrl = $v.iconUrl;
      _options = $v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionsControllerCreateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsControllerCreateRequest;
  }

  @override
  void update(void Function(QuestionsControllerCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionsControllerCreateRequest build() => _build();

  _$QuestionsControllerCreateRequest _build() {
    _$QuestionsControllerCreateRequest _$result;
    try {
      _$result = _$v ??
          new _$QuestionsControllerCreateRequest._(
              question: question, iconUrl: iconUrl, options: _options?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuestionsControllerCreateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
