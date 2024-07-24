//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:questions_live/src/model/questions_filter_order.dart';
import 'package:questions_live/src/model/questions_fields.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'questions_filter.g.dart';

/// QuestionsFilter
///
/// Properties:
/// * [offset] 
/// * [limit] 
/// * [skip] 
/// * [order] 
/// * [fields] 
@BuiltValue()
abstract class QuestionsFilter implements Built<QuestionsFilter, QuestionsFilterBuilder> {
  @BuiltValueField(wireName: r'offset')
  int? get offset;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'skip')
  int? get skip;

  @BuiltValueField(wireName: r'order')
  QuestionsFilterOrder? get order;

  @BuiltValueField(wireName: r'fields')
  QuestionsFields? get fields;

  QuestionsFilter._();

  factory QuestionsFilter([void updates(QuestionsFilterBuilder b)]) = _$QuestionsFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionsFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionsFilter> get serializer => _$QuestionsFilterSerializer();
}

class _$QuestionsFilterSerializer implements PrimitiveSerializer<QuestionsFilter> {
  @override
  final Iterable<Type> types = const [QuestionsFilter, _$QuestionsFilter];

  @override
  final String wireName = r'QuestionsFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionsFilter object, {
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
    QuestionsFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuestionsFilterBuilder result,
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
  QuestionsFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionsFilterBuilder();
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

