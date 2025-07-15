//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_pizzas.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_items_pizzas200_response.g.dart';

/// CreateItemsPizzas200Response
///
/// Properties:
/// * [data]
@BuiltValue()
abstract class CreateItemsPizzas200Response
    implements
        Built<CreateItemsPizzas200Response,
            CreateItemsPizzas200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsPizzas>? get data;

  CreateItemsPizzas200Response._();

  factory CreateItemsPizzas200Response(
          [void updates(CreateItemsPizzas200ResponseBuilder b)]) =
      _$CreateItemsPizzas200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateItemsPizzas200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateItemsPizzas200Response> get serializer =>
      _$CreateItemsPizzas200ResponseSerializer();
}

class _$CreateItemsPizzas200ResponseSerializer
    implements PrimitiveSerializer<CreateItemsPizzas200Response> {
  @override
  final Iterable<Type> types = const [
    CreateItemsPizzas200Response,
    _$CreateItemsPizzas200Response
  ];

  @override
  final String wireName = r'CreateItemsPizzas200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateItemsPizzas200Response object, {
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
    CreateItemsPizzas200Response object, {
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
    required CreateItemsPizzas200ResponseBuilder result,
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
  CreateItemsPizzas200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateItemsPizzas200ResponseBuilder();
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
