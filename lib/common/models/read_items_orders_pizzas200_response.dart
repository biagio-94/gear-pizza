//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_orders_pizzas.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/x_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_items_orders_pizzas200_response.g.dart';

/// ReadItemsOrdersPizzas200Response
///
/// Properties:
/// * [data]
/// * [meta]
@BuiltValue()
abstract class ReadItemsOrdersPizzas200Response
    implements
        Built<ReadItemsOrdersPizzas200Response,
            ReadItemsOrdersPizzas200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsOrdersPizzas>? get data;

  @BuiltValueField(wireName: r'meta')
  XMetadata? get meta;

  ReadItemsOrdersPizzas200Response._();

  factory ReadItemsOrdersPizzas200Response(
          [void updates(ReadItemsOrdersPizzas200ResponseBuilder b)]) =
      _$ReadItemsOrdersPizzas200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadItemsOrdersPizzas200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadItemsOrdersPizzas200Response> get serializer =>
      _$ReadItemsOrdersPizzas200ResponseSerializer();
}

class _$ReadItemsOrdersPizzas200ResponseSerializer
    implements PrimitiveSerializer<ReadItemsOrdersPizzas200Response> {
  @override
  final Iterable<Type> types = const [
    ReadItemsOrdersPizzas200Response,
    _$ReadItemsOrdersPizzas200Response
  ];

  @override
  final String wireName = r'ReadItemsOrdersPizzas200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadItemsOrdersPizzas200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ItemsOrdersPizzas)]),
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
    ReadItemsOrdersPizzas200Response object, {
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
    required ReadItemsOrdersPizzas200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ItemsOrdersPizzas)]),
          ) as BuiltList<ItemsOrdersPizzas>;
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
  ReadItemsOrdersPizzas200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadItemsOrdersPizzas200ResponseBuilder();
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
