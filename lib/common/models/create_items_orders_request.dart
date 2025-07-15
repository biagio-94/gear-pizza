//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_orders_customer.dart';
import 'package:gearpizza/common/models/items_pizzas_restaurant.dart';
import 'package:gearpizza/common/models/items_orders_pizzas_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_pizzas_cover_image.dart';
import 'package:gearpizza/common/models/items_orders.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'create_items_orders_request.g.dart';

/// CreateItemsOrdersRequest
///
/// Properties:
/// * [id]
/// * [restaurant]
/// * [customer]
/// * [address]
/// * [status]
/// * [helpingImage]
/// * [pizzas]
@BuiltValue()
abstract class CreateItemsOrdersRequest
    implements
        Built<CreateItemsOrdersRequest, CreateItemsOrdersRequestBuilder> {
  /// One Of [BuiltList<ItemsOrders>], [ItemsOrders]
  OneOf get oneOf;

  CreateItemsOrdersRequest._();

  factory CreateItemsOrdersRequest(
          [void updates(CreateItemsOrdersRequestBuilder b)]) =
      _$CreateItemsOrdersRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateItemsOrdersRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateItemsOrdersRequest> get serializer =>
      _$CreateItemsOrdersRequestSerializer();
}

class _$CreateItemsOrdersRequestSerializer
    implements PrimitiveSerializer<CreateItemsOrdersRequest> {
  @override
  final Iterable<Type> types = const [
    CreateItemsOrdersRequest,
    _$CreateItemsOrdersRequest
  ];

  @override
  final String wireName = r'CreateItemsOrdersRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateItemsOrdersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    CreateItemsOrdersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CreateItemsOrdersRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateItemsOrdersRequestBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(BuiltList, [FullType(ItemsOrders)]),
      FullType(ItemsOrders),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
