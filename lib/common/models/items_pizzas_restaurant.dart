//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_pizzas_cover_image.dart';
import 'package:gearpizza/common/models/files_modified_by.dart';
import 'package:gearpizza/common/models/items_restaurants_pizzas_inner.dart';
import 'package:gearpizza/common/models/items_restaurants.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'items_pizzas_restaurant.g.dart';

/// ItemsPizzasRestaurant
///
/// Properties:
/// * [id]
/// * [name]
/// * [coverImage]
/// * [owner]
/// * [pizzas]
@BuiltValue()
abstract class ItemsPizzasRestaurant
    implements Built<ItemsPizzasRestaurant, ItemsPizzasRestaurantBuilder> {
  /// One Of [ItemsRestaurants], [int]
  OneOf get oneOf;

  ItemsPizzasRestaurant._();

  factory ItemsPizzasRestaurant(
      [void updates(ItemsPizzasRestaurantBuilder b)]) = _$ItemsPizzasRestaurant;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsPizzasRestaurantBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsPizzasRestaurant> get serializer =>
      _$ItemsPizzasRestaurantSerializer();
}

class _$ItemsPizzasRestaurantSerializer
    implements PrimitiveSerializer<ItemsPizzasRestaurant> {
  @override
  final Iterable<Type> types = const [
    ItemsPizzasRestaurant,
    _$ItemsPizzasRestaurant
  ];

  @override
  final String wireName = r'ItemsPizzasRestaurant';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemsPizzasRestaurant object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ItemsPizzasRestaurant object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ItemsPizzasRestaurant deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsPizzasRestaurantBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(int),
      FullType(ItemsRestaurants),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
