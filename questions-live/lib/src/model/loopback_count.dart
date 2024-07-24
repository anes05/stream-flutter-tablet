//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'loopback_count.g.dart';

/// LoopbackCount
///
/// Properties:
/// * [count] 
@BuiltValue()
abstract class LoopbackCount implements Built<LoopbackCount, LoopbackCountBuilder> {
  @BuiltValueField(wireName: r'count')
  num? get count;

  LoopbackCount._();

  factory LoopbackCount([void updates(LoopbackCountBuilder b)]) = _$LoopbackCount;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoopbackCountBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoopbackCount> get serializer => _$LoopbackCountSerializer();
}

class _$LoopbackCountSerializer implements PrimitiveSerializer<LoopbackCount> {
  @override
  final Iterable<Type> types = const [LoopbackCount, _$LoopbackCount];

  @override
  final String wireName = r'LoopbackCount';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoopbackCount object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LoopbackCount object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LoopbackCountBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoopbackCount deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoopbackCountBuilder();
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

