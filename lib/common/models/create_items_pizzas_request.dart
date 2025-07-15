//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas_restaurant.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_pizzas_cover_image.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens_inner.dart';
import 'package:gearpizza/common/models/items_pizzas.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'create_items_pizzas_request.g.dart';

/// CreateItemsPizzasRequest
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [coverImage]
/// * [restaurant]
/// * [allergens]
@BuiltValue()
abstract class CreateItemsPizzasRequest
    implements
        Built<CreateItemsPizzasRequest, CreateItemsPizzasRequestBuilder> {
  /// One Of [BuiltList<ItemsPizzas>], [ItemsPizzas]
  OneOf get oneOf;

  CreateItemsPizzasRequest._();

  factory CreateItemsPizzasRequest(
          [void updates(CreateItemsPizzasRequestBuilder b)]) =
      _$CreateItemsPizzasRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateItemsPizzasRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateItemsPizzasRequest> get serializer =>
      _$CreateItemsPizzasRequestSerializer();
}

class _$CreateItemsPizzasRequestSerializer
    implements PrimitiveSerializer<CreateItemsPizzasRequest> {
  @override
  final Iterable<Type> types = const [
    CreateItemsPizzasRequest,
    _$CreateItemsPizzasRequest
  ];

  @override
  final String wireName = r'CreateItemsPizzasRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateItemsPizzasRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    CreateItemsPizzasRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CreateItemsPizzasRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateItemsPizzasRequestBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(BuiltList, [FullType(ItemsPizzas)]),
      FullType(ItemsPizzas),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
