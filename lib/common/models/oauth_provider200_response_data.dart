//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'oauth_provider200_response_data.g.dart';

/// OauthProvider200ResponseData
///
/// Properties:
/// * [token]
@BuiltValue()
abstract class OauthProvider200ResponseData
    implements
        Built<OauthProvider200ResponseData,
            OauthProvider200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'token')
  String? get token;

  OauthProvider200ResponseData._();

  factory OauthProvider200ResponseData(
          [void updates(OauthProvider200ResponseDataBuilder b)]) =
      _$OauthProvider200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OauthProvider200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OauthProvider200ResponseData> get serializer =>
      _$OauthProvider200ResponseDataSerializer();
}

class _$OauthProvider200ResponseDataSerializer
    implements PrimitiveSerializer<OauthProvider200ResponseData> {
  @override
  final Iterable<Type> types = const [
    OauthProvider200ResponseData,
    _$OauthProvider200ResponseData
  ];

  @override
  final String wireName = r'OauthProvider200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OauthProvider200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OauthProvider200ResponseData object, {
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
    required OauthProvider200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OauthProvider200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OauthProvider200ResponseDataBuilder();
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
