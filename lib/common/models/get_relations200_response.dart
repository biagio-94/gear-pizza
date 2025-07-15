//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/relations.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_relations200_response.g.dart';

/// GetRelations200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class GetRelations200Response
    implements Built<GetRelations200Response, GetRelations200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Relations>? get data;

  GetRelations200Response._();

  factory GetRelations200Response(
          [void updates(GetRelations200ResponseBuilder b)]) =
      _$GetRelations200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetRelations200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetRelations200Response> get serializer =>
      _$GetRelations200ResponseSerializer();
}

class _$GetRelations200ResponseSerializer
    implements PrimitiveSerializer<GetRelations200Response> {
  @override
  final Iterable<Type> types = const [
    GetRelations200Response,
    _$GetRelations200Response
  ];

  @override
  final String wireName = r'GetRelations200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetRelations200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Relations)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetRelations200Response object, {
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
    required GetRelations200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Relations)]),
          ) as BuiltList<Relations>;
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
  GetRelations200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRelations200ResponseBuilder();
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
