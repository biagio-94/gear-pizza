//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_orders.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_items_orders200_response.g.dart';

/// CreateItemsOrders200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class CreateItemsOrders200Response
    implements
        Built<CreateItemsOrders200Response,
            CreateItemsOrders200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsOrders>? get data;

  CreateItemsOrders200Response._();

  factory CreateItemsOrders200Response(
          [void updates(CreateItemsOrders200ResponseBuilder b)]) =
      _$CreateItemsOrders200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateItemsOrders200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateItemsOrders200Response> get serializer =>
      _$CreateItemsOrders200ResponseSerializer();
}

class _$CreateItemsOrders200ResponseSerializer
    implements PrimitiveSerializer<CreateItemsOrders200Response> {
  @override
  final Iterable<Type> types = const [
    CreateItemsOrders200Response,
    _$CreateItemsOrders200Response
  ];

  @override
  final String wireName = r'CreateItemsOrders200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateItemsOrders200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ItemsOrders)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateItemsOrders200Response object, {
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
    required CreateItemsOrders200ResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateItemsOrders200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateItemsOrders200ResponseBuilder();
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
