//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/x_metadata.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_items_pizzas_allergens200_response.g.dart';

/// ReadItemsPizzasAllergens200Response
///
/// Properties:
/// * [data]
/// * [meta]
@BuiltValue()
abstract class ReadItemsPizzasAllergens200Response
    implements
        Built<ReadItemsPizzasAllergens200Response,
            ReadItemsPizzasAllergens200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ItemsPizzasAllergens>? get data;

  @BuiltValueField(wireName: r'meta')
  XMetadata? get meta;

  ReadItemsPizzasAllergens200Response._();

  factory ReadItemsPizzasAllergens200Response(
          [void updates(ReadItemsPizzasAllergens200ResponseBuilder b)]) =
      _$ReadItemsPizzasAllergens200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadItemsPizzasAllergens200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadItemsPizzasAllergens200Response> get serializer =>
      _$ReadItemsPizzasAllergens200ResponseSerializer();
}

class _$ReadItemsPizzasAllergens200ResponseSerializer
    implements PrimitiveSerializer<ReadItemsPizzasAllergens200Response> {
  @override
  final Iterable<Type> types = const [
    ReadItemsPizzasAllergens200Response,
    _$ReadItemsPizzasAllergens200Response
  ];

  @override
  final String wireName = r'ReadItemsPizzasAllergens200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadItemsPizzasAllergens200Response object, {
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
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(XMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadItemsPizzasAllergens200Response object, {
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
    required ReadItemsPizzasAllergens200ResponseBuilder result,
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
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(XMetadata),
          ) as XMetadata;
          result.meta.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReadItemsPizzasAllergens200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadItemsPizzasAllergens200ResponseBuilder();
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
