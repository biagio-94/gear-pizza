//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_orders_pizzas.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_single_items_orders_pizzas200_response.g.dart';

/// ReadSingleItemsOrdersPizzas200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class ReadSingleItemsOrdersPizzas200Response
    implements
        Built<ReadSingleItemsOrdersPizzas200Response,
            ReadSingleItemsOrdersPizzas200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  ItemsOrdersPizzas? get data;

  ReadSingleItemsOrdersPizzas200Response._();

  factory ReadSingleItemsOrdersPizzas200Response(
          [void updates(ReadSingleItemsOrdersPizzas200ResponseBuilder b)]) =
      _$ReadSingleItemsOrdersPizzas200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadSingleItemsOrdersPizzas200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadSingleItemsOrdersPizzas200Response> get serializer =>
      _$ReadSingleItemsOrdersPizzas200ResponseSerializer();
}

class _$ReadSingleItemsOrdersPizzas200ResponseSerializer
    implements PrimitiveSerializer<ReadSingleItemsOrdersPizzas200Response> {
  @override
  final Iterable<Type> types = const [
    ReadSingleItemsOrdersPizzas200Response,
    _$ReadSingleItemsOrdersPizzas200Response
  ];

  @override
  final String wireName = r'ReadSingleItemsOrdersPizzas200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadSingleItemsOrdersPizzas200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ItemsOrdersPizzas),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadSingleItemsOrdersPizzas200Response object, {
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
    required ReadSingleItemsOrdersPizzas200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ItemsOrdersPizzas),
          ) as ItemsOrdersPizzas;
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
  ReadSingleItemsOrdersPizzas200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadSingleItemsOrdersPizzas200ResponseBuilder();
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
