//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:questions_live/src/model/questions_fields_one_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'questions_fields.g.dart';

/// QuestionsFields
///
/// Properties:
/// * [id] 
/// * [question] 
/// * [options] 
/// * [iconUrl] 
@BuiltValue()
abstract class QuestionsFields implements Built<QuestionsFields, QuestionsFieldsBuilder> {
  /// One Of [BuiltSet<String>], [QuestionsFieldsOneOf]
  OneOf get oneOf;

  QuestionsFields._();

  factory QuestionsFields([void updates(QuestionsFieldsBuilder b)]) = _$QuestionsFields;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionsFieldsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionsFields> get serializer => _$QuestionsFieldsSerializer();
}

class _$QuestionsFieldsSerializer implements PrimitiveSerializer<QuestionsFields> {
  @override
  final Iterable<Type> types = const [QuestionsFields, _$QuestionsFields];

  @override
  final String wireName = r'QuestionsFields';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionsFields object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionsFields object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  QuestionsFields deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionsFieldsBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(QuestionsFieldsOneOf), FullType(BuiltSet, [FullType(String)]), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

