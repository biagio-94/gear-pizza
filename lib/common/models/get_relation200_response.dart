//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/relations.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_relation200_response.g.dart';

/// GetRelation200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class GetRelation200Response
    implements Built<GetRelation200Response, GetRelation200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  Relations? get data;

  GetRelation200Response._();

  factory GetRelation200Response(
          [void updates(GetRelation200ResponseBuilder b)]) =
      _$GetRelation200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetRelation200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetRelation200Response> get serializer =>
      _$GetRelation200ResponseSerializer();
}

class _$GetRelation200ResponseSerializer
    implements PrimitiveSerializer<GetRelation200Response> {
  @override
  final Iterable<Type> types = const [
    GetRelation200Response,
    _$GetRelation200Response
  ];

  @override
  final String wireName = r'GetRelation200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetRelation200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Relations),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetRelation200Response object, {
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
    required GetRelation200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Relations),
          ) as Relations;
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
  GetRelation200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRelation200ResponseBuilder();
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
