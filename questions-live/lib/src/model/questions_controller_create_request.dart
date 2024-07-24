//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:questions_live/src/model/questions_controller_create_request_options_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'questions_controller_create_request.g.dart';

/// QuestionsControllerCreateRequest
///
/// Properties:
/// * [question] 
/// * [iconUrl] 
/// * [options] 
@BuiltValue()
abstract class QuestionsControllerCreateRequest implements Built<QuestionsControllerCreateRequest, QuestionsControllerCreateRequestBuilder> {
  @BuiltValueField(wireName: r'question')
  String? get question;

  @BuiltValueField(wireName: r'iconUrl')
  String? get iconUrl;

  @BuiltValueField(wireName: r'options')
  BuiltList<QuestionsControllerCreateRequestOptionsInner>? get options;

  QuestionsControllerCreateRequest._();

  factory QuestionsControllerCreateRequest([void updates(QuestionsControllerCreateRequestBuilder b)]) = _$QuestionsControllerCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionsControllerCreateRequestBuilder b) => b
      ..question = 'string'
      ..iconUrl = 'string';

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionsControllerCreateRequest> get serializer => _$QuestionsControllerCreateRequestSerializer();
}

class _$QuestionsControllerCreateRequestSerializer implements PrimitiveSerializer<QuestionsControllerCreateRequest> {
  @override
  final Iterable<Type> types = const [QuestionsControllerCreateRequest, _$QuestionsControllerCreateRequest];

  @override
  final String wireName = r'QuestionsControllerCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionsControllerCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.question != null) {
      yield r'question';
      yield serializers.serialize(
        object.question,
        specifiedType: const FullType(String),
      );
    }
    if (object.iconUrl != null) {
      yield r'iconUrl';
      yield serializers.serialize(
        object.iconUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(BuiltList, [FullType(QuestionsControllerCreateRequestOptionsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionsControllerCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuestionsControllerCreateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.question = valueDes;
          break;
        case r'iconUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.iconUrl = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QuestionsControllerCreateRequestOptionsInner)]),
          ) as BuiltList<QuestionsControllerCreateRequestOptionsInner>;
          result.options.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuestionsControllerCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionsControllerCreateRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

