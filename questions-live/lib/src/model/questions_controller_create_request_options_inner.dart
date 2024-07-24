//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'questions_controller_create_request_options_inner.g.dart';

/// QuestionsControllerCreateRequestOptionsInner
///
/// Properties:
/// * [choice] 
/// * [correct] 
@BuiltValue()
abstract class QuestionsControllerCreateRequestOptionsInner implements Built<QuestionsControllerCreateRequestOptionsInner, QuestionsControllerCreateRequestOptionsInnerBuilder> {
  @BuiltValueField(wireName: r'choice')
  String? get choice;

  @BuiltValueField(wireName: r'correct')
  bool? get correct;

  QuestionsControllerCreateRequestOptionsInner._();

  factory QuestionsControllerCreateRequestOptionsInner([void updates(QuestionsControllerCreateRequestOptionsInnerBuilder b)]) = _$QuestionsControllerCreateRequestOptionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionsControllerCreateRequestOptionsInnerBuilder b) => b
      ..choice = 'string'
      ..correct = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionsControllerCreateRequestOptionsInner> get serializer => _$QuestionsControllerCreateRequestOptionsInnerSerializer();
}

class _$QuestionsControllerCreateRequestOptionsInnerSerializer implements PrimitiveSerializer<QuestionsControllerCreateRequestOptionsInner> {
  @override
  final Iterable<Type> types = const [QuestionsControllerCreateRequestOptionsInner, _$QuestionsControllerCreateRequestOptionsInner];

  @override
  final String wireName = r'QuestionsControllerCreateRequestOptionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionsControllerCreateRequestOptionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.choice != null) {
      yield r'choice';
      yield serializers.serialize(
        object.choice,
        specifiedType: const FullType(String),
      );
    }
    if (object.correct != null) {
      yield r'correct';
      yield serializers.serialize(
        object.correct,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionsControllerCreateRequestOptionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuestionsControllerCreateRequestOptionsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'choice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.choice = valueDes;
          break;
        case r'correct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.correct = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuestionsControllerCreateRequestOptionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionsControllerCreateRequestOptionsInnerBuilder();
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

