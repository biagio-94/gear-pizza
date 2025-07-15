//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_request.g.dart';

/// LoginRequest
///
/// Properties:
/// * [email] - Email address of the user you're retrieving the access token for.
/// * [password] - Password of the user.
/// * [mode] - Whether to retrieve the refresh token in the JSON response, or in a httpOnly cookie.
/// * [otp] - The user's one-time-password (if MFA is enabled).
@BuiltValue()
abstract class LoginRequest
    implements Built<LoginRequest, LoginRequestBuilder> {
  /// Email address of the user you're retrieving the access token for.
  @BuiltValueField(wireName: r'email')
  String get email;

  /// Password of the user.
  @BuiltValueField(wireName: r'password')
  String get password;

  /// Whether to retrieve the refresh token in the JSON response, or in a httpOnly cookie.
  @BuiltValueField(wireName: r'mode')
  LoginRequestModeEnum? get mode;
  // enum modeEnum {  json,  cookie,  session,  };

  /// The user's one-time-password (if MFA is enabled).
  @BuiltValueField(wireName: r'otp')
  String? get otp;

  LoginRequest._();

  factory LoginRequest([void updates(LoginRequestBuilder b)]) = _$LoginRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginRequestBuilder b) =>
      b..mode = const LoginRequestModeEnum._('json');

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginRequest> get serializer => _$LoginRequestSerializer();
}

class _$LoginRequestSerializer implements PrimitiveSerializer<LoginRequest> {
  @override
  final Iterable<Type> types = const [LoginRequest, _$LoginRequest];

  @override
  final String wireName = r'LoginRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginRequest object, {
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
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(LoginRequestModeEnum),
      );
    }
    if (object.otp != null) {
      yield r'otp';
      yield serializers.serialize(
        object.otp,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LoginRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LoginRequestBuilder result,
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
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LoginRequestModeEnum),
          ) as LoginRequestModeEnum;
          result.mode = valueDes;
          break;
        case r'otp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.otp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoginRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginRequestBuilder();
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

class LoginRequestModeEnum extends EnumClass {
  /// Whether to retrieve the refresh token in the JSON response, or in a httpOnly cookie.
  @BuiltValueEnumConst(wireName: r'json')
  static const LoginRequestModeEnum json = _$loginRequestModeEnum_json;

  /// Whether to retrieve the refresh token in the JSON response, or in a httpOnly cookie.
  @BuiltValueEnumConst(wireName: r'cookie')
  static const LoginRequestModeEnum cookie = _$loginRequestModeEnum_cookie;

  /// Whether to retrieve the refresh token in the JSON response, or in a httpOnly cookie.
  @BuiltValueEnumConst(wireName: r'session')
  static const LoginRequestModeEnum session = _$loginRequestModeEnum_session;

  static Serializer<LoginRequestModeEnum> get serializer =>
      _$loginRequestModeEnumSerializer;

  const LoginRequestModeEnum._(String name) : super(name);

  static BuiltSet<LoginRequestModeEnum> get values =>
      _$loginRequestModeEnumValues;
  static LoginRequestModeEnum valueOf(String name) =>
      _$loginRequestModeEnumValueOf(name);
}
