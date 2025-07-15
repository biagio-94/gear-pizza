//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_items_pizzas_allergens200_response.g.dart';

/// UpdateItemsPizzasAllergens200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class UpdateItemsPizzasAllergens200Response
    implements
        Built<UpdateItemsPizzasAllergens200Response,
            UpdateItemsPizzasAllergens200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsPizzasAllergens>? get data;

  UpdateItemsPizzasAllergens200Response._();

  factory UpdateItemsPizzasAllergens200Response(
          [void updates(UpdateItemsPizzasAllergens200ResponseBuilder b)]) =
      _$UpdateItemsPizzasAllergens200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateItemsPizzasAllergens200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateItemsPizzasAllergens200Response> get serializer =>
      _$UpdateItemsPizzasAllergens200ResponseSerializer();
}

class _$UpdateItemsPizzasAllergens200ResponseSerializer
    implements PrimitiveSerializer<UpdateItemsPizzasAllergens200Response> {
  @override
  final Iterable<Type> types = const [
    UpdateItemsPizzasAllergens200Response,
    _$UpdateItemsPizzasAllergens200Response
  ];

  @override
  final String wireName = r'UpdateItemsPizzasAllergens200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateItemsPizzasAllergens200Response object, {
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
    UpdateItemsPizzasAllergens200Response object, {
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
    required UpdateItemsPizzasAllergens200ResponseBuilder result,
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
  UpdateItemsPizzasAllergens200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateItemsPizzasAllergens200ResponseBuilder();
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
