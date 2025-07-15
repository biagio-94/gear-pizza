//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hash_verify200_response.g.dart';

/// HashVerify200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class HashVerify200Response
    implements Built<HashVerify200Response, HashVerify200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  bool? get data;

  HashVerify200Response._();

  factory HashVerify200Response(
      [void updates(HashVerify200ResponseBuilder b)]) = _$HashVerify200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HashVerify200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HashVerify200Response> get serializer =>
      _$HashVerify200ResponseSerializer();
}

class _$HashVerify200ResponseSerializer
    implements PrimitiveSerializer<HashVerify200Response> {
  @override
  final Iterable<Type> types = const [
    HashVerify200Response,
    _$HashVerify200Response
  ];

  @override
  final String wireName = r'HashVerify200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HashVerify200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HashVerify200Response object, {
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
    required HashVerify200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
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
  HashVerify200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HashVerify200ResponseBuilder();
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
