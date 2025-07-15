//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/get_asset404_response_error.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_asset404_response.g.dart';

/// GetAsset404Response
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class GetAsset404Response
    implements Built<GetAsset404Response, GetAsset404ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  GetAsset404ResponseError? get error;

  GetAsset404Response._();

  factory GetAsset404Response([void updates(GetAsset404ResponseBuilder b)]) =
      _$GetAsset404Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetAsset404ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetAsset404Response> get serializer =>
      _$GetAsset404ResponseSerializer();
}

class _$GetAsset404ResponseSerializer
    implements PrimitiveSerializer<GetAsset404Response> {
  @override
  final Iterable<Type> types = const [
    GetAsset404Response,
    _$GetAsset404Response
  ];

  @override
  final String wireName = r'GetAsset404Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetAsset404Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(GetAsset404ResponseError),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetAsset404Response object, {
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
    required GetAsset404ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetAsset404ResponseError),
          ) as GetAsset404ResponseError;
          result.error.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetAsset404Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAsset404ResponseBuilder();
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
