//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_items_pizzas_allergens200_response.g.dart';

/// CreateItemsPizzasAllergens200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class CreateItemsPizzasAllergens200Response
    implements
        Built<CreateItemsPizzasAllergens200Response,
            CreateItemsPizzasAllergens200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsPizzasAllergens>? get data;

  CreateItemsPizzasAllergens200Response._();

  factory CreateItemsPizzasAllergens200Response(
          [void updates(CreateItemsPizzasAllergens200ResponseBuilder b)]) =
      _$CreateItemsPizzasAllergens200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateItemsPizzasAllergens200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateItemsPizzasAllergens200Response> get serializer =>
      _$CreateItemsPizzasAllergens200ResponseSerializer();
}

class _$CreateItemsPizzasAllergens200ResponseSerializer
    implements PrimitiveSerializer<CreateItemsPizzasAllergens200Response> {
  @override
  final Iterable<Type> types = const [
    CreateItemsPizzasAllergens200Response,
    _$CreateItemsPizzasAllergens200Response
  ];

  @override
  final String wireName = r'CreateItemsPizzasAllergens200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateItemsPizzasAllergens200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType:
            const FullType(BuiltList, [FullType(ItemsPizzasAllergens)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateItemsPizzasAllergens200Response object, {
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
    required CreateItemsPizzasAllergens200ResponseBuilder result,
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
                const FullType(BuiltList, [FullType(ItemsPizzasAllergens)]),
          ) as BuiltList<ItemsPizzasAllergens>;
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
  CreateItemsPizzasAllergens200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateItemsPizzasAllergens200ResponseBuilder();
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
