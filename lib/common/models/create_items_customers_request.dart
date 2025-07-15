//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas_restaurant.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_customers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'create_items_customers_request.g.dart';

/// CreateItemsCustomersRequest
///
/// Properties:
/// * [id]
/// * [name]
/// * [emailAddress]
/// * [restaurant]
@BuiltValue()
abstract class CreateItemsCustomersRequest
    implements
        Built<CreateItemsCustomersRequest, CreateItemsCustomersRequestBuilder> {
  /// One Of [BuiltList<ItemsCustomers>], [ItemsCustomers]
  OneOf get oneOf;

  CreateItemsCustomersRequest._();

  factory CreateItemsCustomersRequest(
          [void updates(CreateItemsCustomersRequestBuilder b)]) =
      _$CreateItemsCustomersRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateItemsCustomersRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateItemsCustomersRequest> get serializer =>
      _$CreateItemsCustomersRequestSerializer();
}

class _$CreateItemsCustomersRequestSerializer
    implements PrimitiveSerializer<CreateItemsCustomersRequest> {
  @override
  final Iterable<Type> types = const [
    CreateItemsCustomersRequest,
    _$CreateItemsCustomersRequest
  ];

  @override
  final String wireName = r'CreateItemsCustomersRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateItemsCustomersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    CreateItemsCustomersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CreateItemsCustomersRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateItemsCustomersRequestBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(BuiltList, [FullType(ItemsCustomers)]),
      FullType(ItemsCustomers),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
