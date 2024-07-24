//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'questions_fields_one_of.g.dart';

/// QuestionsFieldsOneOf
///
/// Properties:
/// * [id] 
/// * [question] 
/// * [options] 
/// * [iconUrl] 
@BuiltValue()
abstract class QuestionsFieldsOneOf implements Built<QuestionsFieldsOneOf, QuestionsFieldsOneOfBuilder> {
  @BuiltValueField(wireName: r'id')
  bool? get id;

  @BuiltValueField(wireName: r'question')
  bool? get question;

  @BuiltValueField(wireName: r'options')
  bool? get options;

  @BuiltValueField(wireName: r'iconUrl')
  bool? get iconUrl;

  QuestionsFieldsOneOf._();

  factory QuestionsFieldsOneOf([void updates(QuestionsFieldsOneOfBuilder b)]) = _$QuestionsFieldsOneOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionsFieldsOneOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionsFieldsOneOf> get serializer => _$QuestionsFieldsOneOfSerializer();
}

class _$QuestionsFieldsOneOfSerializer implements PrimitiveSerializer<QuestionsFieldsOneOf> {
  @override
  final Iterable<Type> types = const [QuestionsFieldsOneOf, _$QuestionsFieldsOneOf];

  @override
  final String wireName = r'QuestionsFieldsOneOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionsFieldsOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(bool),
      );
    }
    if (object.question != null) {
      yield r'question';
      yield serializers.serialize(
        object.question,
        specifiedType: const FullType(bool),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(bool),
      );
    }
    if (object.iconUrl != null) {
      yield r'iconUrl';
      yield serializers.serialize(
        object.iconUrl,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionsFieldsOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuestionsFieldsOneOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.id = valueDes;
          break;
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.question = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.options = valueDes;
          break;
        case r'iconUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
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
  QuestionsFieldsOneOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionsFieldsOneOfBuilder();
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

