//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'questions_with_relations.g.dart';

/// (tsType: QuestionsWithRelations, schemaOptions: { includeRelations: true })
///
/// Properties:
/// * [id] 
/// * [question] 
/// * [options] 
/// * [iconUrl] 
@BuiltValue()
abstract class QuestionsWithRelations implements Built<QuestionsWithRelations, QuestionsWithRelationsBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'question')
  String get question;

  @BuiltValueField(wireName: r'options')
  BuiltList<JsonObject>? get options;

  @BuiltValueField(wireName: r'iconUrl')
  String? get iconUrl;

  QuestionsWithRelations._();

  factory QuestionsWithRelations([void updates(QuestionsWithRelationsBuilder b)]) = _$QuestionsWithRelations;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionsWithRelationsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionsWithRelations> get serializer => _$QuestionsWithRelationsSerializer();
}

class _$QuestionsWithRelationsSerializer implements PrimitiveSerializer<QuestionsWithRelations> {
  @override
  final Iterable<Type> types = const [QuestionsWithRelations, _$QuestionsWithRelations];

  @override
  final String wireName = r'QuestionsWithRelations';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionsWithRelations object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'question';
    yield serializers.serialize(
      object.question,
      specifiedType: const FullType(String),
    );
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      );
    }
    if (object.iconUrl != null) {
      yield r'iconUrl';
      yield serializers.serialize(
        object.iconUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionsWithRelations object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuestionsWithRelationsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.question = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.options.replace(valueDes);
          break;
        case r'iconUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.iconUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuestionsWithRelations deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionsWithRelationsBuilder();
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

