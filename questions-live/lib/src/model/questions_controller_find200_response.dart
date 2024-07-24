//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:questions_live/src/model/questions_with_relations.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'questions_controller_find200_response.g.dart';

/// QuestionsControllerFind200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class QuestionsControllerFind200Response implements Built<QuestionsControllerFind200Response, QuestionsControllerFind200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<QuestionsWithRelations>? get data;

  QuestionsControllerFind200Response._();

  factory QuestionsControllerFind200Response([void updates(QuestionsControllerFind200ResponseBuilder b)]) = _$QuestionsControllerFind200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionsControllerFind200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionsControllerFind200Response> get serializer => _$QuestionsControllerFind200ResponseSerializer();
}

class _$QuestionsControllerFind200ResponseSerializer implements PrimitiveSerializer<QuestionsControllerFind200Response> {
  @override
  final Iterable<Type> types = const [QuestionsControllerFind200Response, _$QuestionsControllerFind200Response];

  @override
  final String wireName = r'QuestionsControllerFind200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionsControllerFind200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(QuestionsWithRelations)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionsControllerFind200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuestionsControllerFind200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QuestionsWithRelations)]),
          ) as BuiltList<QuestionsWithRelations>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuestionsControllerFind200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionsControllerFind200ResponseBuilder();
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

