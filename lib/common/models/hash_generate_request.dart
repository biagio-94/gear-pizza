//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hash_generate_request.g.dart';

/// HashGenerateRequest
///
/// Properties:
/// * [string] - String to hash.
@BuiltValue()
abstract class HashGenerateRequest
    implements Built<HashGenerateRequest, HashGenerateRequestBuilder> {
  /// String to hash.
  @BuiltValueField(wireName: r'string')
  String get string;

  HashGenerateRequest._();

  factory HashGenerateRequest([void updates(HashGenerateRequestBuilder b)]) =
      _$HashGenerateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HashGenerateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HashGenerateRequest> get serializer =>
      _$HashGenerateRequestSerializer();
}

class _$HashGenerateRequestSerializer
    implements PrimitiveSerializer<HashGenerateRequest> {
  @override
  final Iterable<Type> types = const [
    HashGenerateRequest,
    _$HashGenerateRequest
  ];

  @override
  final String wireName = r'HashGenerateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HashGenerateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'string';
    yield serializers.serialize(
      object.string,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HashGenerateRequest object, {
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
    required HashGenerateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'string':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.string = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HashGenerateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HashGenerateRequestBuilder();
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
