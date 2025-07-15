//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hash_generate200_response.g.dart';

/// HashGenerate200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class HashGenerate200Response
    implements Built<HashGenerate200Response, HashGenerate200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  String? get data;

  HashGenerate200Response._();

  factory HashGenerate200Response(
          [void updates(HashGenerate200ResponseBuilder b)]) =
      _$HashGenerate200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HashGenerate200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HashGenerate200Response> get serializer =>
      _$HashGenerate200ResponseSerializer();
}

class _$HashGenerate200ResponseSerializer
    implements PrimitiveSerializer<HashGenerate200Response> {
  @override
  final Iterable<Type> types = const [
    HashGenerate200Response,
    _$HashGenerate200Response
  ];

  @override
  final String wireName = r'HashGenerate200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HashGenerate200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HashGenerate200Response object, {
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
    required HashGenerate200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  HashGenerate200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HashGenerate200ResponseBuilder();
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
