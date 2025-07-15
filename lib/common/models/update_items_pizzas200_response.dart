//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_pizzas.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_items_pizzas200_response.g.dart';

/// UpdateItemsPizzas200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class UpdateItemsPizzas200Response
    implements
        Built<UpdateItemsPizzas200Response,
            UpdateItemsPizzas200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsPizzas>? get data;

  UpdateItemsPizzas200Response._();

  factory UpdateItemsPizzas200Response(
          [void updates(UpdateItemsPizzas200ResponseBuilder b)]) =
      _$UpdateItemsPizzas200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateItemsPizzas200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateItemsPizzas200Response> get serializer =>
      _$UpdateItemsPizzas200ResponseSerializer();
}

class _$UpdateItemsPizzas200ResponseSerializer
    implements PrimitiveSerializer<UpdateItemsPizzas200Response> {
  @override
  final Iterable<Type> types = const [
    UpdateItemsPizzas200Response,
    _$UpdateItemsPizzas200Response
  ];

  @override
  final String wireName = r'UpdateItemsPizzas200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateItemsPizzas200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ItemsPizzas)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateItemsPizzas200Response object, {
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
    required UpdateItemsPizzas200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ItemsPizzas)]),
          ) as BuiltList<ItemsPizzas>;
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
  UpdateItemsPizzas200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateItemsPizzas200ResponseBuilder();
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
