//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_controller_login_request.g.dart';

/// AuthControllerLoginRequest
///
/// Properties:
/// * [email] 
/// * [password] 
@BuiltValue()
abstract class AuthControllerLoginRequest implements Built<AuthControllerLoginRequest, AuthControllerLoginRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  AuthControllerLoginRequest._();

  factory AuthControllerLoginRequest([void updates(AuthControllerLoginRequestBuilder b)]) = _$AuthControllerLoginRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthControllerLoginRequestBuilder b) => b
      ..email = 'o.abdelli@mintit.io'
      ..password = 'password';

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthControllerLoginRequest> get serializer => _$AuthControllerLoginRequestSerializer();
}

class _$AuthControllerLoginRequestSerializer implements PrimitiveSerializer<AuthControllerLoginRequest> {
  @override
  final Iterable<Type> types = const [AuthControllerLoginRequest, _$AuthControllerLoginRequest];

  @override
  final String wireName = r'AuthControllerLoginRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthControllerLoginRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthControllerLoginRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthControllerLoginRequestBuilder result,
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
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthControllerLoginRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthControllerLoginRequestBuilder();
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

