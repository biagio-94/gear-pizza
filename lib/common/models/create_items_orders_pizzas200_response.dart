//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_orders_pizzas.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_items_orders_pizzas200_response.g.dart';

/// CreateItemsOrdersPizzas200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class CreateItemsOrdersPizzas200Response
    implements
        Built<CreateItemsOrdersPizzas200Response,
            CreateItemsOrdersPizzas200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsOrdersPizzas>? get data;

  CreateItemsOrdersPizzas200Response._();

  factory CreateItemsOrdersPizzas200Response(
          [void updates(CreateItemsOrdersPizzas200ResponseBuilder b)]) =
      _$CreateItemsOrdersPizzas200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateItemsOrdersPizzas200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateItemsOrdersPizzas200Response> get serializer =>
      _$CreateItemsOrdersPizzas200ResponseSerializer();
}

class _$CreateItemsOrdersPizzas200ResponseSerializer
    implements PrimitiveSerializer<CreateItemsOrdersPizzas200Response> {
  @override
  final Iterable<Type> types = const [
    CreateItemsOrdersPizzas200Response,
    _$CreateItemsOrdersPizzas200Response
  ];

  @override
  final String wireName = r'CreateItemsOrdersPizzas200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateItemsOrdersPizzas200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ItemsOrdersPizzas)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateItemsOrdersPizzas200Response object, {
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
    required CreateItemsOrdersPizzas200ResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateItemsOrdersPizzas200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateItemsOrdersPizzas200ResponseBuilder();
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
