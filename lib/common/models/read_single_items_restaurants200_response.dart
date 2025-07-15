//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_restaurants.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_single_items_restaurants200_response.g.dart';

/// ReadSingleItemsRestaurants200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class ReadSingleItemsRestaurants200Response
    implements
        Built<ReadSingleItemsRestaurants200Response,
            ReadSingleItemsRestaurants200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  ItemsRestaurants? get data;

  ReadSingleItemsRestaurants200Response._();

  factory ReadSingleItemsRestaurants200Response(
          [void updates(ReadSingleItemsRestaurants200ResponseBuilder b)]) =
      _$ReadSingleItemsRestaurants200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadSingleItemsRestaurants200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadSingleItemsRestaurants200Response> get serializer =>
      _$ReadSingleItemsRestaurants200ResponseSerializer();
}

class _$ReadSingleItemsRestaurants200ResponseSerializer
    implements PrimitiveSerializer<ReadSingleItemsRestaurants200Response> {
  @override
  final Iterable<Type> types = const [
    ReadSingleItemsRestaurants200Response,
    _$ReadSingleItemsRestaurants200Response
  ];

  @override
  final String wireName = r'ReadSingleItemsRestaurants200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadSingleItemsRestaurants200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ItemsRestaurants),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadSingleItemsRestaurants200Response object, {
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
    required ReadSingleItemsRestaurants200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ItemsRestaurants),
          ) as ItemsRestaurants;
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
  ReadSingleItemsRestaurants200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadSingleItemsRestaurants200ResponseBuilder();
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
