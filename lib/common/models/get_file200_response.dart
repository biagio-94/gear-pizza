//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/files.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_file200_response.g.dart';

/// GetFile200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class GetFile200Response
    implements Built<GetFile200Response, GetFile200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  Files? get data;

  GetFile200Response._();

  factory GetFile200Response([void updates(GetFile200ResponseBuilder b)]) =
      _$GetFile200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetFile200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetFile200Response> get serializer =>
      _$GetFile200ResponseSerializer();
}

class _$GetFile200ResponseSerializer
    implements PrimitiveSerializer<GetFile200Response> {
  @override
  final Iterable<Type> types = const [GetFile200Response, _$GetFile200Response];

  @override
  final String wireName = r'GetFile200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetFile200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Files),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetFile200Response object, {
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
    required GetFile200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Files),
          ) as Files;
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
  GetFile200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFile200ResponseBuilder();
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
