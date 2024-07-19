//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_controller_finish_signup_request.g.dart';

/// AuthControllerFinishSignupRequest
///
/// Properties:
/// * [email] 
@BuiltValue()
abstract class AuthControllerFinishSignupRequest implements Built<AuthControllerFinishSignupRequest, AuthControllerFinishSignupRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  AuthControllerFinishSignupRequest._();

  factory AuthControllerFinishSignupRequest([void updates(AuthControllerFinishSignupRequestBuilder b)]) = _$AuthControllerFinishSignupRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthControllerFinishSignupRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthControllerFinishSignupRequest> get serializer => _$AuthControllerFinishSignupRequestSerializer();
}

class _$AuthControllerFinishSignupRequestSerializer implements PrimitiveSerializer<AuthControllerFinishSignupRequest> {
  @override
  final Iterable<Type> types = const [AuthControllerFinishSignupRequest, _$AuthControllerFinishSignupRequest];

  @override
  final String wireName = r'AuthControllerFinishSignupRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthControllerFinishSignupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthControllerFinishSignupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthControllerFinishSignupRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthControllerFinishSignupRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthControllerFinishSignupRequestBuilder();
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

