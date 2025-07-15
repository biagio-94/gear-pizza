//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'relations.g.dart';

/// Relations
///
/// Properties:
/// * [id] - Unique identifier for the relation.
/// * [manyCollection] - Collection that has the field that holds the foreign key.
/// * [manyField] - Foreign key. Field that holds the primary key of the related collection.
/// * [oneCollection] - Collection on the _one_ side of the relationship.
/// * [oneField] - Alias column that serves as the _one_ side of the relationship.
/// * [oneCollectionField]
/// * [oneAllowedCollections]
/// * [junctionField] - Field on the junction table that holds the many field of the related relation.
/// * [sortField]
/// * [oneDeselectAction]
@BuiltValue()
abstract class Relations implements Built<Relations, RelationsBuilder> {
  /// Unique identifier for the relation.
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Collection that has the field that holds the foreign key.
  @BuiltValueField(wireName: r'many_collection')
  String? get manyCollection;

  /// Foreign key. Field that holds the primary key of the related collection.
  @BuiltValueField(wireName: r'many_field')
  String? get manyField;

  /// Collection on the _one_ side of the relationship.
  @BuiltValueField(wireName: r'one_collection')
  String? get oneCollection;

  /// Alias column that serves as the _one_ side of the relationship.
  @BuiltValueField(wireName: r'one_field')
  String? get oneField;

  @BuiltValueField(wireName: r'one_collection_field')
  String? get oneCollectionField;

  @BuiltValueField(wireName: r'one_allowed_collections')
  BuiltList<String>? get oneAllowedCollections;

  /// Field on the junction table that holds the many field of the related relation.
  @BuiltValueField(wireName: r'junction_field')
  String? get junctionField;

  @BuiltValueField(wireName: r'sort_field')
  String? get sortField;

  @BuiltValueField(wireName: r'one_deselect_action')
  String? get oneDeselectAction;

  Relations._();

  factory Relations([void updates(RelationsBuilder b)]) = _$Relations;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RelationsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Relations> get serializer => _$RelationsSerializer();
}

class _$RelationsSerializer implements PrimitiveSerializer<Relations> {
  @override
  final Iterable<Type> types = const [Relations, _$Relations];

  @override
  final String wireName = r'Relations';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Relations object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.manyCollection != null) {
      yield r'many_collection';
      yield serializers.serialize(
        object.manyCollection,
        specifiedType: const FullType(String),
      );
    }
    if (object.manyField != null) {
      yield r'many_field';
      yield serializers.serialize(
        object.manyField,
        specifiedType: const FullType(String),
      );
    }
    if (object.oneCollection != null) {
      yield r'one_collection';
      yield serializers.serialize(
        object.oneCollection,
        specifiedType: const FullType(String),
      );
    }
    if (object.oneField != null) {
      yield r'one_field';
      yield serializers.serialize(
        object.oneField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.oneCollectionField != null) {
      yield r'one_collection_field';
      yield serializers.serialize(
        object.oneCollectionField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.oneAllowedCollections != null) {
      yield r'one_allowed_collections';
      yield serializers.serialize(
        object.oneAllowedCollections,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.junctionField != null) {
      yield r'junction_field';
      yield serializers.serialize(
        object.junctionField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sortField != null) {
      yield r'sort_field';
      yield serializers.serialize(
        object.sortField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.oneDeselectAction != null) {
      yield r'one_deselect_action';
      yield serializers.serialize(
        object.oneDeselectAction,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Relations object, {
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
    required RelationsBuilder result,
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
        case r'many_collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.manyCollection = valueDes;
          break;
        case r'many_field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.manyField = valueDes;
          break;
        case r'one_collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.oneCollection = valueDes;
          break;
        case r'one_field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.oneField = valueDes;
          break;
        case r'one_collection_field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.oneCollectionField = valueDes;
          break;
        case r'one_allowed_collections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.oneAllowedCollections.replace(valueDes);
          break;
        case r'junction_field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.junctionField = valueDes;
          break;
        case r'sort_field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sortField = valueDes;
          break;
        case r'one_deselect_action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.oneDeselectAction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Relations deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RelationsBuilder();
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
