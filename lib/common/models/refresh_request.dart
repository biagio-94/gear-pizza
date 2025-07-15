//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh_request.g.dart';

/// RefreshRequest
///
/// Properties:
/// * [refreshToken] - JWT access token you want to refresh. This token can't be expired.
/// * [mode] - Whether to submit and retrieve the refresh token in the JSON response, or in a httpOnly cookie.
@BuiltValue()
abstract class RefreshRequest
    implements Built<RefreshRequest, RefreshRequestBuilder> {
  /// JWT access token you want to refresh. This token can't be expired.
  @BuiltValueField(wireName: r'refresh_token')
  String? get refreshToken;

  /// Whether to submit and retrieve the refresh token in the JSON response, or in a httpOnly cookie.
  @BuiltValueField(wireName: r'mode')
  RefreshRequestModeEnum? get mode;
  // enum modeEnum {  json,  cookie,  session,  };

  RefreshRequest._();

  factory RefreshRequest([void updates(RefreshRequestBuilder b)]) =
      _$RefreshRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RefreshRequestBuilder b) =>
      b..mode = const RefreshRequestModeEnum._('json');

  @BuiltValueSerializer(custom: true)
  static Serializer<RefreshRequest> get serializer =>
      _$RefreshRequestSerializer();
}

class _$RefreshRequestSerializer
    implements PrimitiveSerializer<RefreshRequest> {
  @override
  final Iterable<Type> types = const [RefreshRequest, _$RefreshRequest];

  @override
  final String wireName = r'RefreshRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RefreshRequest object, {
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
        specifiedType: const FullType(RefreshRequestModeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RefreshRequest object, {
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
    required RefreshRequestBuilder result,
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
            specifiedType: const FullType(RefreshRequestModeEnum),
          ) as RefreshRequestModeEnum;
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
  RefreshRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RefreshRequestBuilder();
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

class RefreshRequestModeEnum extends EnumClass {
  /// Whether to submit and retrieve the refresh token in the JSON response, or in a httpOnly cookie.
  @BuiltValueEnumConst(wireName: r'json')
  static const RefreshRequestModeEnum json = _$refreshRequestModeEnum_json;

  /// Whether to submit and retrieve the refresh token in the JSON response, or in a httpOnly cookie.
  @BuiltValueEnumConst(wireName: r'cookie')
  static const RefreshRequestModeEnum cookie = _$refreshRequestModeEnum_cookie;

  /// Whether to submit and retrieve the refresh token in the JSON response, or in a httpOnly cookie.
  @BuiltValueEnumConst(wireName: r'session')
  static const RefreshRequestModeEnum session =
      _$refreshRequestModeEnum_session;

  static Serializer<RefreshRequestModeEnum> get serializer =>
      _$refreshRequestModeEnumSerializer;

  const RefreshRequestModeEnum._(String name) : super(name);

  static BuiltSet<RefreshRequestModeEnum> get values =>
      _$refreshRequestModeEnumValues;
  static RefreshRequestModeEnum valueOf(String name) =>
      _$refreshRequestModeEnumValueOf(name);
}
