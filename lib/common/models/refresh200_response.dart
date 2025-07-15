//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/refresh200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh200_response.g.dart';

/// Refresh200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class Refresh200Response
    implements Built<Refresh200Response, Refresh200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  Refresh200ResponseData? get data;

  Refresh200Response._();

  factory Refresh200Response([void updates(Refresh200ResponseBuilder b)]) =
      _$Refresh200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Refresh200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Refresh200Response> get serializer =>
      _$Refresh200ResponseSerializer();
}

class _$Refresh200ResponseSerializer
    implements PrimitiveSerializer<Refresh200Response> {
  @override
  final Iterable<Type> types = const [Refresh200Response, _$Refresh200Response];

  @override
  final String wireName = r'Refresh200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Refresh200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Refresh200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Refresh200Response object, {
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
    required Refresh200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Refresh200ResponseData),
          ) as Refresh200ResponseData;
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
  Refresh200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Refresh200ResponseBuilder();
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
