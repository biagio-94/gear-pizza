//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/fields.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_collection_field200_response.g.dart';

/// GetCollectionField200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class GetCollectionField200Response
    implements
        Built<GetCollectionField200Response,
            GetCollectionField200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  Fields? get data;

  GetCollectionField200Response._();

  factory GetCollectionField200Response(
          [void updates(GetCollectionField200ResponseBuilder b)]) =
      _$GetCollectionField200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCollectionField200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCollectionField200Response> get serializer =>
      _$GetCollectionField200ResponseSerializer();
}

class _$GetCollectionField200ResponseSerializer
    implements PrimitiveSerializer<GetCollectionField200Response> {
  @override
  final Iterable<Type> types = const [
    GetCollectionField200Response,
    _$GetCollectionField200Response
  ];

  @override
  final String wireName = r'GetCollectionField200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCollectionField200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Fields),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCollectionField200Response object, {
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
    required GetCollectionField200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Fields),
          ) as Fields;
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
  GetCollectionField200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCollectionField200ResponseBuilder();
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
