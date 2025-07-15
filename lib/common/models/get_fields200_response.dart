//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/fields.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_fields200_response.g.dart';

/// GetFields200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class GetFields200Response
    implements Built<GetFields200Response, GetFields200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Fields>? get data;

  GetFields200Response._();

  factory GetFields200Response([void updates(GetFields200ResponseBuilder b)]) =
      _$GetFields200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetFields200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetFields200Response> get serializer =>
      _$GetFields200ResponseSerializer();
}

class _$GetFields200ResponseSerializer
    implements PrimitiveSerializer<GetFields200Response> {
  @override
  final Iterable<Type> types = const [
    GetFields200Response,
    _$GetFields200Response
  ];

  @override
  final String wireName = r'GetFields200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetFields200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Fields)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetFields200Response object, {
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
    required GetFields200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Fields)]),
          ) as BuiltList<Fields>;
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
  GetFields200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFields200ResponseBuilder();
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
