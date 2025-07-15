//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas_restaurant.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_pizzas_cover_image.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'items_pizzas.g.dart';

/// ItemsPizzas
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [coverImage]
/// * [restaurant]
/// * [allergens]
@BuiltValue()
abstract class ItemsPizzas implements Built<ItemsPizzas, ItemsPizzasBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'cover_image')
  ItemsPizzasCoverImage? get coverImage;

  @BuiltValueField(wireName: r'restaurant')
  ItemsPizzasRestaurant? get restaurant;

  @BuiltValueField(wireName: r'allergens')
  BuiltList<ItemsPizzasAllergensInner>? get allergens;

  ItemsPizzas._();

  factory ItemsPizzas([void updates(ItemsPizzasBuilder b)]) = _$ItemsPizzas;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsPizzasBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsPizzas> get serializer => _$ItemsPizzasSerializer();
}

class _$ItemsPizzasSerializer implements PrimitiveSerializer<ItemsPizzas> {
  @override
  final Iterable<Type> types = const [ItemsPizzas, _$ItemsPizzas];

  @override
  final String wireName = r'ItemsPizzas';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemsPizzas object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.coverImage != null) {
      yield r'cover_image';
      yield serializers.serialize(
        object.coverImage,
        specifiedType: const FullType.nullable(ItemsPizzasCoverImage),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType.nullable(ItemsPizzasRestaurant),
      );
    }
    if (object.allergens != null) {
      yield r'allergens';
      yield serializers.serialize(
        object.allergens,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(ItemsPizzasAllergensInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ItemsPizzas object, {
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
    required ItemsPizzasBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'cover_image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ItemsPizzasCoverImage),
          ) as ItemsPizzasCoverImage?;
          if (valueDes == null) continue;
          result.coverImage.replace(valueDes);
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ItemsPizzasRestaurant),
          ) as ItemsPizzasRestaurant?;
          if (valueDes == null) continue;
          result.restaurant.replace(valueDes);
          break;
        case r'allergens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ItemsPizzasAllergensInner)]),
          ) as BuiltList<ItemsPizzasAllergensInner>?;
          if (valueDes == null) continue;
          result.allergens.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ItemsPizzas deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsPizzasBuilder();
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
