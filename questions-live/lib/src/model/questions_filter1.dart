//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:questions_live/src/model/questions_filter_order.dart';
import 'package:questions_live/src/model/questions_fields.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'questions_filter1.g.dart';

/// QuestionsFilter1
///
/// Properties:
/// * [offset] 
/// * [limit] 
/// * [skip] 
/// * [order] 
/// * [where] 
/// * [fields] 
@BuiltValue()
abstract class QuestionsFilter1 implements Built<QuestionsFilter1, QuestionsFilter1Builder> {
  @BuiltValueField(wireName: r'offset')
  int? get offset;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'skip')
  int? get skip;

  @BuiltValueField(wireName: r'order')
  QuestionsFilterOrder? get order;

  @BuiltValueField(wireName: r'where')
  BuiltMap<String, JsonObject?>? get where;

  @BuiltValueField(wireName: r'fields')
  QuestionsFields? get fields;

  QuestionsFilter1._();

  factory QuestionsFilter1([void updates(QuestionsFilter1Builder b)]) = _$QuestionsFilter1;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionsFilter1Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionsFilter1> get serializer => _$QuestionsFilter1Serializer();
}

class _$QuestionsFilter1Serializer implements PrimitiveSerializer<QuestionsFilter1> {
  @override
  final Iterable<Type> types = const [QuestionsFilter1, _$QuestionsFilter1];

  @override
  final String wireName = r'QuestionsFilter1';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionsFilter1 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.offset != null) {
      yield r'offset';
      yield serializers.serialize(
        object.offset,
        specifiedType: const FullType(int),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.skip != null) {
      yield r'skip';
      yield serializers.serialize(
        object.skip,
        specifiedType: const FullType(int),
      );
    }
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
        specifiedType: const FullType(QuestionsFilterOrder),
      );
    }
    if (object.where != null) {
      yield r'where';
      yield serializers.serialize(
        object.where,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(QuestionsFields),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionsFilter1 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuestionsFilter1Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.offset = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
          break;
        case r'skip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.skip = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionsFilterOrder),
          ) as QuestionsFilterOrder;
          result.order.replace(valueDes);
          break;
        case r'where':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.where.replace(valueDes);
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionsFields),
          ) as QuestionsFields;
          result.fields.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuestionsFilter1 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionsFilter1Builder();
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

