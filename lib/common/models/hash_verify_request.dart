//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hash_verify_request.g.dart';

/// HashVerifyRequest
///
/// Properties:
/// * [string] - String to hash.
/// * [hash] - Hash you want to verify against.
@BuiltValue()
abstract class HashVerifyRequest
    implements Built<HashVerifyRequest, HashVerifyRequestBuilder> {
  /// String to hash.
  @BuiltValueField(wireName: r'string')
  String get string;

  /// Hash you want to verify against.
  @BuiltValueField(wireName: r'hash')
  String get hash;

  HashVerifyRequest._();

  factory HashVerifyRequest([void updates(HashVerifyRequestBuilder b)]) =
      _$HashVerifyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HashVerifyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HashVerifyRequest> get serializer =>
      _$HashVerifyRequestSerializer();
}

class _$HashVerifyRequestSerializer
    implements PrimitiveSerializer<HashVerifyRequest> {
  @override
  final Iterable<Type> types = const [HashVerifyRequest, _$HashVerifyRequest];

  @override
  final String wireName = r'HashVerifyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HashVerifyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'string';
    yield serializers.serialize(
      object.string,
      specifiedType: const FullType(String),
    );
    yield r'hash';
    yield serializers.serialize(
      object.hash,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HashVerifyRequest object, {
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
    required HashVerifyRequestBuilder result,
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
        case r'hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hash = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HashVerifyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HashVerifyRequestBuilder();
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
