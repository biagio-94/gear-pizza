//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/oauth_provider200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'oauth_provider200_response.g.dart';

/// OauthProvider200Response
///
/// Properties:
/// * [public]
/// * [data]
@BuiltValue()
abstract class OauthProvider200Response
    implements
        Built<OauthProvider200Response, OauthProvider200ResponseBuilder> {
  @BuiltValueField(wireName: r'public')
  bool? get public;

  @BuiltValueField(wireName: r'data')
  OauthProvider200ResponseData? get data;

  OauthProvider200Response._();

  factory OauthProvider200Response(
          [void updates(OauthProvider200ResponseBuilder b)]) =
      _$OauthProvider200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OauthProvider200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OauthProvider200Response> get serializer =>
      _$OauthProvider200ResponseSerializer();
}

class _$OauthProvider200ResponseSerializer
    implements PrimitiveSerializer<OauthProvider200Response> {
  @override
  final Iterable<Type> types = const [
    OauthProvider200Response,
    _$OauthProvider200Response
  ];

  @override
  final String wireName = r'OauthProvider200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OauthProvider200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.public != null) {
      yield r'public';
      yield serializers.serialize(
        object.public,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(OauthProvider200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OauthProvider200Response object, {
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
    required OauthProvider200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'public':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.public = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OauthProvider200ResponseData),
          ) as OauthProvider200ResponseData;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OauthProvider200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OauthProvider200ResponseBuilder();
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
