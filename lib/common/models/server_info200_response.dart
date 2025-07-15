//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'server_info200_response.g.dart';

/// ServerInfo200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class ServerInfo200Response
    implements Built<ServerInfo200Response, ServerInfo200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  JsonObject? get data;

  ServerInfo200Response._();

  factory ServerInfo200Response(
      [void updates(ServerInfo200ResponseBuilder b)]) = _$ServerInfo200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServerInfo200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServerInfo200Response> get serializer =>
      _$ServerInfo200ResponseSerializer();
}

class _$ServerInfo200ResponseSerializer
    implements PrimitiveSerializer<ServerInfo200Response> {
  @override
  final Iterable<Type> types = const [
    ServerInfo200Response,
    _$ServerInfo200Response
  ];

  @override
  final String wireName = r'ServerInfo200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServerInfo200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServerInfo200Response object, {
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
    required ServerInfo200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.data = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServerInfo200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServerInfo200ResponseBuilder();
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
