//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/update_preset_request_filters_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_preset_request.g.dart';

/// UpdatePresetRequest
///
/// Properties:
/// * [collection] - What collection this collection preset is used for.
/// * [title] - Name for the bookmark. If this is set, the collection preset will be considered to be a bookmark.
/// * [role] - The unique identifier of a role in the platform. If user is null, this will be used to apply the collection preset or bookmark for all users in the role.
/// * [searchQuery] - What the user searched for in search/filter in the header bar.
/// * [filters]
/// * [viewType] - Name of the view type that is used. Defaults to tabular.
/// * [viewQuery] - View query that's saved per view type. Controls what data is fetched on load. These follow the same format as the JS SDK parameters.
/// * [viewOptions] - Options of the views. The properties in here are controlled by the layout.
/// * [translation] - Key value pair of language-translation. Can be used to translate the bookmark title in multiple languages.
@BuiltValue()
abstract class UpdatePresetRequest
    implements Built<UpdatePresetRequest, UpdatePresetRequestBuilder> {
  /// What collection this collection preset is used for.
  @BuiltValueField(wireName: r'collection')
  String get collection;

  /// Name for the bookmark. If this is set, the collection preset will be considered to be a bookmark.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// The unique identifier of a role in the platform. If user is null, this will be used to apply the collection preset or bookmark for all users in the role.
  @BuiltValueField(wireName: r'role')
  int? get role;

  /// What the user searched for in search/filter in the header bar.
  @BuiltValueField(wireName: r'search_query')
  String? get searchQuery;

  @BuiltValueField(wireName: r'filters')
  BuiltList<UpdatePresetRequestFiltersInner>? get filters;

  /// Name of the view type that is used. Defaults to tabular.
  @BuiltValueField(wireName: r'view_type')
  String? get viewType;

  /// View query that's saved per view type. Controls what data is fetched on load. These follow the same format as the JS SDK parameters.
  @BuiltValueField(wireName: r'view_query')
  String? get viewQuery;

  /// Options of the views. The properties in here are controlled by the layout.
  @BuiltValueField(wireName: r'view_options')
  String? get viewOptions;

  /// Key value pair of language-translation. Can be used to translate the bookmark title in multiple languages.
  @BuiltValueField(wireName: r'translation')
  JsonObject? get translation;

  UpdatePresetRequest._();

  factory UpdatePresetRequest([void updates(UpdatePresetRequestBuilder b)]) =
      _$UpdatePresetRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdatePresetRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdatePresetRequest> get serializer =>
      _$UpdatePresetRequestSerializer();
}

class _$UpdatePresetRequestSerializer
    implements PrimitiveSerializer<UpdatePresetRequest> {
  @override
  final Iterable<Type> types = const [
    UpdatePresetRequest,
    _$UpdatePresetRequest
  ];

  @override
  final String wireName = r'UpdatePresetRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdatePresetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'collection';
    yield serializers.serialize(
      object.collection,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(int),
      );
    }
    if (object.searchQuery != null) {
      yield r'search_query';
      yield serializers.serialize(
        object.searchQuery,
        specifiedType: const FullType(String),
      );
    }
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(
            BuiltList, [FullType(UpdatePresetRequestFiltersInner)]),
      );
    }
    if (object.viewType != null) {
      yield r'view_type';
      yield serializers.serialize(
        object.viewType,
        specifiedType: const FullType(String),
      );
    }
    if (object.viewQuery != null) {
      yield r'view_query';
      yield serializers.serialize(
        object.viewQuery,
        specifiedType: const FullType(String),
      );
    }
    if (object.viewOptions != null) {
      yield r'view_options';
      yield serializers.serialize(
        object.viewOptions,
        specifiedType: const FullType(String),
      );
    }
    if (object.translation != null) {
      yield r'translation';
      yield serializers.serialize(
        object.translation,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdatePresetRequest object, {
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
    required UpdatePresetRequestBuilder result,
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
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.role = valueDes;
          break;
        case r'search_query':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.searchQuery = valueDes;
          break;
        case r'filters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(UpdatePresetRequestFiltersInner)]),
          ) as BuiltList<UpdatePresetRequestFiltersInner>;
          result.filters.replace(valueDes);
          break;
        case r'view_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.viewType = valueDes;
          break;
        case r'view_query':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.viewQuery = valueDes;
          break;
        case r'view_options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.viewOptions = valueDes;
          break;
        case r'translation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.translation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdatePresetRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdatePresetRequestBuilder();
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
