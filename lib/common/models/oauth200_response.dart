//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'oauth200_response.g.dart';

/// Oauth200Response
///
/// Properties:
/// * [public]
/// * [data]
@BuiltValue()
abstract class Oauth200Response
    implements Built<Oauth200Response, Oauth200ResponseBuilder> {
  @BuiltValueField(wireName: r'public')
  bool? get public;

  @BuiltValueField(wireName: r'data')
  BuiltList<String>? get data;

  Oauth200Response._();

  factory Oauth200Response([void updates(Oauth200ResponseBuilder b)]) =
      _$Oauth200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Oauth200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Oauth200Response> get serializer =>
      _$Oauth200ResponseSerializer();
}

class _$Oauth200ResponseSerializer
    implements PrimitiveSerializer<Oauth200Response> {
  @override
  final Iterable<Type> types = const [Oauth200Response, _$Oauth200Response];

  @override
  final String wireName = r'Oauth200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Oauth200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Oauth200Response object, {
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
    required Oauth200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
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
  Oauth200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Oauth200ResponseBuilder();
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
