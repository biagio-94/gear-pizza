//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas_restaurant.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_pizzas_cover_image.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens_inner.dart';
import 'package:gearpizza/common/models/items_pizzas.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'items_restaurants_pizzas_inner.g.dart';

/// ItemsRestaurantsPizzasInner
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [coverImage]
/// * [restaurant]
/// * [allergens]
@BuiltValue()
abstract class ItemsRestaurantsPizzasInner
    implements
        Built<ItemsRestaurantsPizzasInner, ItemsRestaurantsPizzasInnerBuilder> {
  /// One Of [ItemsPizzas], [int]
  OneOf get oneOf;

  ItemsRestaurantsPizzasInner._();

  factory ItemsRestaurantsPizzasInner(
          [void updates(ItemsRestaurantsPizzasInnerBuilder b)]) =
      _$ItemsRestaurantsPizzasInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsRestaurantsPizzasInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsRestaurantsPizzasInner> get serializer =>
      _$ItemsRestaurantsPizzasInnerSerializer();
}

class _$ItemsRestaurantsPizzasInnerSerializer
    implements PrimitiveSerializer<ItemsRestaurantsPizzasInner> {
  @override
  final Iterable<Type> types = const [
    ItemsRestaurantsPizzasInner,
    _$ItemsRestaurantsPizzasInner
  ];

  @override
  final String wireName = r'ItemsRestaurantsPizzasInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemsRestaurantsPizzasInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ItemsRestaurantsPizzasInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ItemsRestaurantsPizzasInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsRestaurantsPizzasInnerBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(int),
      FullType(ItemsPizzas),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
