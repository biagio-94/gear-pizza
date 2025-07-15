//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/items_pizzas_restaurant.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'items_customers.g.dart';

/// ItemsCustomers
///
/// Properties:
/// * [id]
/// * [name]
/// * [emailAddress]
/// * [restaurant]
@BuiltValue()
abstract class ItemsCustomers
    implements Built<ItemsCustomers, ItemsCustomersBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'email_address')
  String? get emailAddress;

  @BuiltValueField(wireName: r'restaurant')
  ItemsPizzasRestaurant? get restaurant;

  ItemsCustomers._();

  factory ItemsCustomers([void updates(ItemsCustomersBuilder b)]) =
      _$ItemsCustomers;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemsCustomersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemsCustomers> get serializer =>
      _$ItemsCustomersSerializer();
}

class _$ItemsCustomersSerializer
    implements PrimitiveSerializer<ItemsCustomers> {
  @override
  final Iterable<Type> types = const [ItemsCustomers, _$ItemsCustomers];

  @override
  final String wireName = r'ItemsCustomers';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemsCustomers object, {
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
    if (object.emailAddress != null) {
      yield r'email_address';
      yield serializers.serialize(
        object.emailAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType.nullable(ItemsPizzasRestaurant),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ItemsCustomers object, {
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
    required ItemsCustomersBuilder result,
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
        case r'email_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.emailAddress = valueDes;
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ItemsPizzasRestaurant),
          ) as ItemsPizzasRestaurant?;
          if (valueDes == null) continue;
          result.restaurant.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ItemsCustomers deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemsCustomersBuilder();
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
