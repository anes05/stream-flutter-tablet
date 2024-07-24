//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'questions_filter_order.g.dart';

/// QuestionsFilterOrder
@BuiltValue()
abstract class QuestionsFilterOrder implements Built<QuestionsFilterOrder, QuestionsFilterOrderBuilder> {
  /// One Of [BuiltList<String>], [String]
  OneOf get oneOf;

  QuestionsFilterOrder._();

  factory QuestionsFilterOrder([void updates(QuestionsFilterOrderBuilder b)]) = _$QuestionsFilterOrder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionsFilterOrderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionsFilterOrder> get serializer => _$QuestionsFilterOrderSerializer();
}

class _$QuestionsFilterOrderSerializer implements PrimitiveSerializer<QuestionsFilterOrder> {
  @override
  final Iterable<Type> types = const [QuestionsFilterOrder, _$QuestionsFilterOrder];

  @override
  final String wireName = r'QuestionsFilterOrder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionsFilterOrder object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionsFilterOrder object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  QuestionsFilterOrder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionsFilterOrderBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(BuiltList, [FullType(String)]), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

