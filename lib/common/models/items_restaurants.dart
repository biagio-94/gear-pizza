//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/items_pizzas_cover_image.dart';
import 'package:gearpizza/common/models/files_modified_by.dart';
import 'package:gearpizza/common/models/items_restaurants_pizzas_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'items_restaurants.g.dart';

/// ItemsRestaurants
///
/// Properties:
/// * [id]
/// * [name]
/// * [coverImage]
/// * [owner]
/// * [pizzas]
@BuiltValue()
abstract class ItemsRestaurants
    implements Built<ItemsRestaurants, ItemsRestaurantsBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'cover_image')
  ItemsPizzasCoverImage? get coverImage;

  @BuiltValueField(wireName: r'owner')
  FilesModifiedBy? get owner;

  @BuiltValueField(wireName: r'pizzas')
  BuiltList<ItemsRestaurantsPizzasInner>? get pizzas;

  ItemsRestaurants._();

  factory ItemsRestaurants([void updates(ItemsRestaurantsBuilder b)]) =
      _$ItemsRestaurants;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsRestaurantsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsRestaurants> get serializer =>
      _$ItemsRestaurantsSerializer();
}

class _$ItemsRestaurantsSerializer
    implements PrimitiveSerializer<ItemsRestaurants> {
  @override
  final Iterable<Type> types = const [ItemsRestaurants, _$ItemsRestaurants];

  @override
  final String wireName = r'ItemsRestaurants';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemsRestaurants object, {
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
    if (object.coverImage != null) {
      yield r'cover_image';
      yield serializers.serialize(
        object.coverImage,
        specifiedType: const FullType.nullable(ItemsPizzasCoverImage),
      );
    }
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType.nullable(FilesModifiedBy),
      );
    }
    if (object.pizzas != null) {
      yield r'pizzas';
      yield serializers.serialize(
        object.pizzas,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(ItemsRestaurantsPizzasInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ItemsRestaurants object, {
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
    required ItemsRestaurantsBuilder result,
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
        case r'cover_image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ItemsPizzasCoverImage),
          ) as ItemsPizzasCoverImage?;
          if (valueDes == null) continue;
          result.coverImage.replace(valueDes);
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FilesModifiedBy),
          ) as FilesModifiedBy?;
          if (valueDes == null) continue;
          result.owner.replace(valueDes);
          break;
        case r'pizzas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ItemsRestaurantsPizzasInner)]),
          ) as BuiltList<ItemsRestaurantsPizzasInner>?;
          if (valueDes == null) continue;
          result.pizzas.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ItemsRestaurants deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsRestaurantsBuilder();
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
