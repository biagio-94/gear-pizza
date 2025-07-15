//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/x_metadata.dart';
import 'package:gearpizza/common/models/items_orders.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_items_orders200_response.g.dart';

/// ReadItemsOrders200Response
///
/// Properties:
/// * [data]
/// * [meta]
@BuiltValue()
abstract class ReadItemsOrders200Response
    implements
        Built<ReadItemsOrders200Response, ReadItemsOrders200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsOrders>? get data;

  @BuiltValueField(wireName: r'meta')
  XMetadata? get meta;

  ReadItemsOrders200Response._();

  factory ReadItemsOrders200Response(
          [void updates(ReadItemsOrders200ResponseBuilder b)]) =
      _$ReadItemsOrders200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadItemsOrders200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadItemsOrders200Response> get serializer =>
      _$ReadItemsOrders200ResponseSerializer();
}

class _$ReadItemsOrders200ResponseSerializer
    implements PrimitiveSerializer<ReadItemsOrders200Response> {
  @override
  final Iterable<Type> types = const [
    ReadItemsOrders200Response,
    _$ReadItemsOrders200Response
  ];

  @override
  final String wireName = r'ReadItemsOrders200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadItemsOrders200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ItemsOrders)]),
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
    ReadItemsOrders200Response object, {
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
    required ReadItemsOrders200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ItemsOrders)]),
          ) as BuiltList<ItemsOrders>;
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
  ReadItemsOrders200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadItemsOrders200ResponseBuilder();
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
