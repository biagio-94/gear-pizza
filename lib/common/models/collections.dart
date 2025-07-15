//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/collections_group.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collections.g.dart';

/// Collections
///
/// Properties:
/// * [collection] - The collection key.
/// * [icon]
/// * [note]
/// * [displayTemplate]
/// * [hidden]
/// * [singleton]
/// * [translations]
/// * [archiveField]
/// * [archiveAppFilter]
/// * [archiveValue]
/// * [unarchiveValue]
/// * [sortField]
/// * [accountability]
/// * [color]
/// * [itemDuplicationFields]
/// * [sort]
/// * [group]
/// * [collapse]
/// * [previewUrl]
/// * [versioning]
@BuiltValue()
abstract class Collections implements Built<Collections, CollectionsBuilder> {
  /// The collection key.
  @BuiltValueField(wireName: r'collection')
  String? get collection;

  @BuiltValueField(wireName: r'icon')
  String? get icon;

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'display_template')
  String? get displayTemplate;

  @BuiltValueField(wireName: r'hidden')
  bool? get hidden;

  @BuiltValueField(wireName: r'singleton')
  bool? get singleton;

  @BuiltValueField(wireName: r'translations')
  JsonObject? get translations;

  @BuiltValueField(wireName: r'archive_field')
  String? get archiveField;

  @BuiltValueField(wireName: r'archive_app_filter')
  bool? get archiveAppFilter;

  @BuiltValueField(wireName: r'archive_value')
  String? get archiveValue;

  @BuiltValueField(wireName: r'unarchive_value')
  String? get unarchiveValue;

  @BuiltValueField(wireName: r'sort_field')
  String? get sortField;

  @BuiltValueField(wireName: r'accountability')
  String? get accountability;

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'item_duplication_fields')
  JsonObject? get itemDuplicationFields;

  @BuiltValueField(wireName: r'sort')
  int? get sort;

  @BuiltValueField(wireName: r'group')
  CollectionsGroup? get group;

  @BuiltValueField(wireName: r'collapse')
  String? get collapse;

  @BuiltValueField(wireName: r'preview_url')
  String? get previewUrl;

  @BuiltValueField(wireName: r'versioning')
  bool? get versioning;

  Collections._();

  factory Collections([void updates(CollectionsBuilder b)]) = _$Collections;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollectionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Collections> get serializer => _$CollectionsSerializer();
}

class _$CollectionsSerializer implements PrimitiveSerializer<Collections> {
  @override
  final Iterable<Type> types = const [Collections, _$Collections];

  @override
  final String wireName = r'Collections';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Collections object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.collection != null) {
      yield r'collection';
      yield serializers.serialize(
        object.collection,
        specifiedType: const FullType(String),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.displayTemplate != null) {
      yield r'display_template';
      yield serializers.serialize(
        object.displayTemplate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.hidden != null) {
      yield r'hidden';
      yield serializers.serialize(
        object.hidden,
        specifiedType: const FullType(bool),
      );
    }
    if (object.singleton != null) {
      yield r'singleton';
      yield serializers.serialize(
        object.singleton,
        specifiedType: const FullType(bool),
      );
    }
    if (object.translations != null) {
      yield r'translations';
      yield serializers.serialize(
        object.translations,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.archiveField != null) {
      yield r'archive_field';
      yield serializers.serialize(
        object.archiveField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.archiveAppFilter != null) {
      yield r'archive_app_filter';
      yield serializers.serialize(
        object.archiveAppFilter,
        specifiedType: const FullType(bool),
      );
    }
    if (object.archiveValue != null) {
      yield r'archive_value';
      yield serializers.serialize(
        object.archiveValue,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.unarchiveValue != null) {
      yield r'unarchive_value';
      yield serializers.serialize(
        object.unarchiveValue,
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
    if (object.accountability != null) {
      yield r'accountability';
      yield serializers.serialize(
        object.accountability,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.itemDuplicationFields != null) {
      yield r'item_duplication_fields';
      yield serializers.serialize(
        object.itemDuplicationFields,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.sort != null) {
      yield r'sort';
      yield serializers.serialize(
        object.sort,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType.nullable(CollectionsGroup),
      );
    }
    if (object.collapse != null) {
      yield r'collapse';
      yield serializers.serialize(
        object.collapse,
        specifiedType: const FullType(String),
      );
    }
    if (object.previewUrl != null) {
      yield r'preview_url';
      yield serializers.serialize(
        object.previewUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.versioning != null) {
      yield r'versioning';
      yield serializers.serialize(
        object.versioning,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Collections object, {
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
    required CollectionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.collection = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.icon = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'display_template':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayTemplate = valueDes;
          break;
        case r'hidden':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hidden = valueDes;
          break;
        case r'singleton':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.singleton = valueDes;
          break;
        case r'translations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.translations = valueDes;
          break;
        case r'archive_field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.archiveField = valueDes;
          break;
        case r'archive_app_filter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.archiveAppFilter = valueDes;
          break;
        case r'archive_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.archiveValue = valueDes;
          break;
        case r'unarchive_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.unarchiveValue = valueDes;
          break;
        case r'sort_field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sortField = valueDes;
          break;
        case r'accountability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accountability = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.color = valueDes;
          break;
        case r'item_duplication_fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.itemDuplicationFields = valueDes;
          break;
        case r'sort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sort = valueDes;
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CollectionsGroup),
          ) as CollectionsGroup?;
          if (valueDes == null) continue;
          result.group.replace(valueDes);
          break;
        case r'collapse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.collapse = valueDes;
          break;
        case r'preview_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previewUrl = valueDes;
          break;
        case r'versioning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.versioning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Collections deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollectionsBuilder();
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
