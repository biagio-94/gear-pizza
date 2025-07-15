//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas_allergens.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_single_items_pizzas_allergens200_response.g.dart';

/// ReadSingleItemsPizzasAllergens200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class ReadSingleItemsPizzasAllergens200Response
    implements
        Built<ReadSingleItemsPizzasAllergens200Response,
            ReadSingleItemsPizzasAllergens200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  ItemsPizzasAllergens? get data;

  ReadSingleItemsPizzasAllergens200Response._();

  factory ReadSingleItemsPizzasAllergens200Response(
          [void updates(ReadSingleItemsPizzasAllergens200ResponseBuilder b)]) =
      _$ReadSingleItemsPizzasAllergens200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadSingleItemsPizzasAllergens200ResponseBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadSingleItemsPizzasAllergens200Response> get serializer =>
      _$ReadSingleItemsPizzasAllergens200ResponseSerializer();
}

class _$ReadSingleItemsPizzasAllergens200ResponseSerializer
    implements PrimitiveSerializer<ReadSingleItemsPizzasAllergens200Response> {
  @override
  final Iterable<Type> types = const [
    ReadSingleItemsPizzasAllergens200Response,
    _$ReadSingleItemsPizzasAllergens200Response
  ];

  @override
  final String wireName = r'ReadSingleItemsPizzasAllergens200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadSingleItemsPizzasAllergens200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ItemsPizzasAllergens),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadSingleItemsPizzasAllergens200Response object, {
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
    required ReadSingleItemsPizzasAllergens200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ItemsPizzasAllergens),
          ) as ItemsPizzasAllergens;
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
  ReadSingleItemsPizzasAllergens200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadSingleItemsPizzasAllergens200ResponseBuilder();
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
