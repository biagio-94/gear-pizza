//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas_restaurant.dart';
import 'package:gearpizza/common/models/items_customers.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'items_orders_customer.g.dart';

/// ItemsOrdersCustomer
///
/// Properties:
/// * [id]
/// * [name]
/// * [emailAddress]
/// * [restaurant]
@BuiltValue()
abstract class ItemsOrdersCustomer
    implements Built<ItemsOrdersCustomer, ItemsOrdersCustomerBuilder> {
  /// One Of [ItemsCustomers], [int]
  OneOf get oneOf;

  ItemsOrdersCustomer._();

  factory ItemsOrdersCustomer([void updates(ItemsOrdersCustomerBuilder b)]) =
      _$ItemsOrdersCustomer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsOrdersCustomerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsOrdersCustomer> get serializer =>
      _$ItemsOrdersCustomerSerializer();
}

class _$ItemsOrdersCustomerSerializer
    implements PrimitiveSerializer<ItemsOrdersCustomer> {
  @override
  final Iterable<Type> types = const [
    ItemsOrdersCustomer,
    _$ItemsOrdersCustomer
  ];

  @override
  final String wireName = r'ItemsOrdersCustomer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemsOrdersCustomer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ItemsOrdersCustomer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ItemsOrdersCustomer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsOrdersCustomerBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(int),
      FullType(ItemsCustomers),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
