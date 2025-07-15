//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/presets_collection.dart';
import 'package:gearpizza/common/models/presets_user.dart';
import 'package:gearpizza/common/models/presets_role.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'presets.g.dart';

/// Presets
///
/// Properties:
/// * [id] - Unique identifier for this single collection preset.
/// * [bookmark] - Name for the bookmark. If this is set, the preset will be considered a bookmark.
/// * [user]
/// * [role]
/// * [collection]
/// * [search] - Search query.
/// * [layout] - Key of the layout that is used.
/// * [layoutQuery] - Layout query that's saved per layout type. Controls what data is fetched on load. These follow the same format as the JS SDK parameters.
/// * [layoutOptions] - Options of the views. The properties in here are controlled by the layout.
/// * [refreshInterval]
/// * [filter]
/// * [icon]
/// * [color]
@BuiltValue()
abstract class Presets implements Built<Presets, PresetsBuilder> {
  /// Unique identifier for this single collection preset.
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Name for the bookmark. If this is set, the preset will be considered a bookmark.
  @BuiltValueField(wireName: r'bookmark')
  String? get bookmark;

  @BuiltValueField(wireName: r'user')
  PresetsUser? get user;

  @BuiltValueField(wireName: r'role')
  PresetsRole? get role;

  @BuiltValueField(wireName: r'collection')
  PresetsCollection? get collection;

  /// Search query.
  @BuiltValueField(wireName: r'search')
  String? get search;

  /// Key of the layout that is used.
  @BuiltValueField(wireName: r'layout')
  String? get layout;

  /// Layout query that's saved per layout type. Controls what data is fetched on load. These follow the same format as the JS SDK parameters.
  @BuiltValueField(wireName: r'layout_query')
  JsonObject? get layoutQuery;

  /// Options of the views. The properties in here are controlled by the layout.
  @BuiltValueField(wireName: r'layout_options')
  JsonObject? get layoutOptions;

  @BuiltValueField(wireName: r'refresh_interval')
  int? get refreshInterval;

  @BuiltValueField(wireName: r'filter')
  JsonObject? get filter;

  @BuiltValueField(wireName: r'icon')
  String? get icon;

  @BuiltValueField(wireName: r'color')
  String? get color;

  Presets._();

  factory Presets([void updates(PresetsBuilder b)]) = _$Presets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PresetsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Presets> get serializer => _$PresetsSerializer();
}

class _$PresetsSerializer implements PrimitiveSerializer<Presets> {
  @override
  final Iterable<Type> types = const [Presets, _$Presets];

  @override
  final String wireName = r'Presets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Presets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.bookmark != null) {
      yield r'bookmark';
      yield serializers.serialize(
        object.bookmark,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType.nullable(PresetsUser),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType.nullable(PresetsRole),
      );
    }
    if (object.collection != null) {
      yield r'collection';
      yield serializers.serialize(
        object.collection,
        specifiedType: const FullType(PresetsCollection),
      );
    }
    if (object.search != null) {
      yield r'search';
      yield serializers.serialize(
        object.search,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.layout != null) {
      yield r'layout';
      yield serializers.serialize(
        object.layout,
        specifiedType: const FullType(String),
      );
    }
    if (object.layoutQuery != null) {
      yield r'layout_query';
      yield serializers.serialize(
        object.layoutQuery,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.layoutOptions != null) {
      yield r'layout_options';
      yield serializers.serialize(
        object.layoutOptions,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.refreshInterval != null) {
      yield r'refresh_interval';
      yield serializers.serialize(
        object.refreshInterval,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.filter != null) {
      yield r'filter';
      yield serializers.serialize(
        object.filter,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Presets object, {
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
    required PresetsBuilder result,
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
        case r'bookmark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bookmark = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PresetsUser),
          ) as PresetsUser?;
          if (valueDes == null) continue;
          result.user.replace(valueDes);
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PresetsRole),
          ) as PresetsRole?;
          if (valueDes == null) continue;
          result.role.replace(valueDes);
          break;
        case r'collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PresetsCollection),
          ) as PresetsCollection;
          result.collection.replace(valueDes);
          break;
        case r'search':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.search = valueDes;
          break;
        case r'layout':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.layout = valueDes;
          break;
        case r'layout_query':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.layoutQuery = valueDes;
          break;
        case r'layout_options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.layoutOptions = valueDes;
          break;
        case r'refresh_interval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.refreshInterval = valueDes;
          break;
        case r'filter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.filter = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.icon = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.color = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Presets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PresetsBuilder();
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
