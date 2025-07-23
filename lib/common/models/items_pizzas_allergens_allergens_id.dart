//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_allergens.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'items_pizzas_allergens_allergens_id.g.dart';

/// ItemsPizzasAllergensAllergensId
///
/// Properties:
/// * [id]
/// * [name]
@BuiltValue()
abstract class ItemsPizzasAllergensAllergensId
    implements
        Built<ItemsPizzasAllergensAllergensId,
            ItemsPizzasAllergensAllergensIdBuilder> {
  /// One Of [ItemsAllergens], [int]
  OneOf get oneOf;

  ItemsPizzasAllergensAllergensId._();

  factory ItemsPizzasAllergensAllergensId(
          [void updates(ItemsPizzasAllergensAllergensIdBuilder b)]) =
      _$ItemsPizzasAllergensAllergensId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsPizzasAllergensAllergensIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsPizzasAllergensAllergensId> get serializer =>
      _$ItemsPizzasAllergensAllergensIdSerializer();
}

class _$ItemsPizzasAllergensAllergensIdSerializer
    implements PrimitiveSerializer<ItemsPizzasAllergensAllergensId> {
  @override
  final Iterable<Type> types = const [
    ItemsPizzasAllergensAllergensId,
    _$ItemsPizzasAllergensAllergensId
  ];

  @override
  final String wireName = r'ItemsPizzasAllergensAllergensId';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, ItemsPizzasAllergensAllergensId object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ItemsPizzasAllergensAllergensId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ItemsPizzasAllergensAllergensId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsPizzasAllergensAllergensIdBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(int),
      FullType(ItemsAllergens),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
