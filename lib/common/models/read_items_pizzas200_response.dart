//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/x_metadata.dart';
import 'package:gearpizza/common/models/items_pizzas.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_items_pizzas200_response.g.dart';

/// ReadItemsPizzas200Response
///
/// Properties:
/// * [data]
/// * [meta]
@BuiltValue()
abstract class ReadItemsPizzas200Response
    implements
        Built<ReadItemsPizzas200Response, ReadItemsPizzas200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsPizzas>? get data;

  @BuiltValueField(wireName: r'meta')
  XMetadata? get meta;

  ReadItemsPizzas200Response._();

  factory ReadItemsPizzas200Response(
          [void updates(ReadItemsPizzas200ResponseBuilder b)]) =
      _$ReadItemsPizzas200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadItemsPizzas200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadItemsPizzas200Response> get serializer =>
      _$ReadItemsPizzas200ResponseSerializer();
}

class _$ReadItemsPizzas200ResponseSerializer
    implements PrimitiveSerializer<ReadItemsPizzas200Response> {
  @override
  final Iterable<Type> types = const [
    ReadItemsPizzas200Response,
    _$ReadItemsPizzas200Response
  ];

  @override
  final String wireName = r'ReadItemsPizzas200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadItemsPizzas200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ItemsPizzas)]),
      );
    }
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(XMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadItemsPizzas200Response object, {
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
    required ReadItemsPizzas200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ItemsPizzas)]),
          ) as BuiltList<ItemsPizzas>;
          result.data.replace(valueDes);
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(XMetadata),
          ) as XMetadata;
          result.meta.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReadItemsPizzas200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadItemsPizzas200ResponseBuilder();
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
