//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'logout_request.g.dart';

/// LogoutRequest
///
/// Properties:
/// * [refreshToken] - The refresh token to invalidate. If you have the refresh token in a cookie through /auth/login, you don't have to submit it here.
/// * [mode] - Whether the refresh token is submitted in the JSON response, or in a httpOnly cookie.
@BuiltValue()
abstract class LogoutRequest
    implements Built<LogoutRequest, LogoutRequestBuilder> {
  /// The refresh token to invalidate. If you have the refresh token in a cookie through /auth/login, you don't have to submit it here.
  @BuiltValueField(wireName: r'refresh_token')
  String? get refreshToken;

  /// Whether the refresh token is submitted in the JSON response, or in a httpOnly cookie.
  @BuiltValueField(wireName: r'mode')
  LogoutRequestModeEnum? get mode;
  // enum modeEnum {  json,  cookie,  session,  };

  LogoutRequest._();

  factory LogoutRequest([void updates(LogoutRequestBuilder b)]) =
      _$LogoutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LogoutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LogoutRequest> get serializer =>
      _$LogoutRequestSerializer();
}

class _$LogoutRequestSerializer implements PrimitiveSerializer<LogoutRequest> {
  @override
  final Iterable<Type> types = const [LogoutRequest, _$LogoutRequest];

  @override
  final String wireName = r'LogoutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LogoutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.refreshToken != null) {
      yield r'refresh_token';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(LogoutRequestModeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LogoutRequest object, {
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
    required LogoutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refresh_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LogoutRequestModeEnum),
          ) as LogoutRequestModeEnum;
          result.mode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LogoutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LogoutRequestBuilder();
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

class LogoutRequestModeEnum extends EnumClass {
  /// Whether the refresh token is submitted in the JSON response, or in a httpOnly cookie.
  @BuiltValueEnumConst(wireName: r'json')
  static const LogoutRequestModeEnum json = _$logoutRequestModeEnum_json;

  /// Whether the refresh token is submitted in the JSON response, or in a httpOnly cookie.
  @BuiltValueEnumConst(wireName: r'cookie')
  static const LogoutRequestModeEnum cookie = _$logoutRequestModeEnum_cookie;

  /// Whether the refresh token is submitted in the JSON response, or in a httpOnly cookie.
  @BuiltValueEnumConst(wireName: r'session')
  static const LogoutRequestModeEnum session = _$logoutRequestModeEnum_session;

  static Serializer<LogoutRequestModeEnum> get serializer =>
      _$logoutRequestModeEnumSerializer;

  const LogoutRequestModeEnum._(String name) : super(name);

  static BuiltSet<LogoutRequestModeEnum> get values =>
      _$logoutRequestModeEnumValues;
  static LogoutRequestModeEnum valueOf(String name) =>
      _$logoutRequestModeEnumValueOf(name);
}
