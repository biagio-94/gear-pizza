//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'random200_response.g.dart';

/// Random200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class Random200Response
    implements Built<Random200Response, Random200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  String? get data;

  Random200Response._();

  factory Random200Response([void updates(Random200ResponseBuilder b)]) =
      _$Random200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Random200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Random200Response> get serializer =>
      _$Random200ResponseSerializer();
}

class _$Random200ResponseSerializer
    implements PrimitiveSerializer<Random200Response> {
  @override
  final Iterable<Type> types = const [Random200Response, _$Random200Response];

  @override
  final String wireName = r'Random200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Random200Response object, {
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
    Random200Response object, {
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
    required Random200ResponseBuilder result,
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
  Random200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Random200ResponseBuilder();
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
