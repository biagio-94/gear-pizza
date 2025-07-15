//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/create_preset_request_filters_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_preset_request.g.dart';

/// CreatePresetRequest
///
/// Properties:
/// * [collection] - What collection this collection preset is used for.
/// * [title] - Name for the bookmark. If this is set, the collection preset will be considered to be a bookmark.
/// * [role] - The unique identifier of a role in the platform. If user is null, this will be used to apply the collection preset or bookmark for all users in the role.
/// * [search] - What the user searched for in search/filter in the header bar.
/// * [filters]
/// * [layout] - Name of the view type that is used.
/// * [layoutQuery] - Layout query that's saved per layout type. Controls what data is fetched on load. These follow the same format as the JS SDK parameters.
/// * [layoutOptions] - Options of the views. The properties in here are controlled by the layout.
@BuiltValue()
abstract class CreatePresetRequest
    implements Built<CreatePresetRequest, CreatePresetRequestBuilder> {
  /// What collection this collection preset is used for.
  @BuiltValueField(wireName: r'collection')
  String get collection;

  /// Name for the bookmark. If this is set, the collection preset will be considered to be a bookmark.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// The unique identifier of a role in the platform. If user is null, this will be used to apply the collection preset or bookmark for all users in the role.
  @BuiltValueField(wireName: r'role')
  String? get role;

  /// What the user searched for in search/filter in the header bar.
  @BuiltValueField(wireName: r'search')
  String? get search;

  @BuiltValueField(wireName: r'filters')
  BuiltList<CreatePresetRequestFiltersInner>? get filters;

  /// Name of the view type that is used.
  @BuiltValueField(wireName: r'layout')
  String? get layout;

  /// Layout query that's saved per layout type. Controls what data is fetched on load. These follow the same format as the JS SDK parameters.
  @BuiltValueField(wireName: r'layout_query')
  String? get layoutQuery;

  /// Options of the views. The properties in here are controlled by the layout.
  @BuiltValueField(wireName: r'layout_options')
  String? get layoutOptions;

  CreatePresetRequest._();

  factory CreatePresetRequest([void updates(CreatePresetRequestBuilder b)]) =
      _$CreatePresetRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePresetRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePresetRequest> get serializer =>
      _$CreatePresetRequestSerializer();
}

class _$CreatePresetRequestSerializer
    implements PrimitiveSerializer<CreatePresetRequest> {
  @override
  final Iterable<Type> types = const [
    CreatePresetRequest,
    _$CreatePresetRequest
  ];

  @override
  final String wireName = r'CreatePresetRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePresetRequest object, {
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
        specifiedType: const FullType(String),
      );
    }
    if (object.search != null) {
      yield r'search';
      yield serializers.serialize(
        object.search,
        specifiedType: const FullType(String),
      );
    }
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(
            BuiltList, [FullType(CreatePresetRequestFiltersInner)]),
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
        specifiedType: const FullType(String),
      );
    }
    if (object.layoutOptions != null) {
      yield r'layout_options';
      yield serializers.serialize(
        object.layoutOptions,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePresetRequest object, {
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
    required CreatePresetRequestBuilder result,
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
            specifiedType: const FullType(String),
          ) as String;
          result.role = valueDes;
          break;
        case r'search':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.search = valueDes;
          break;
        case r'filters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(CreatePresetRequestFiltersInner)]),
          ) as BuiltList<CreatePresetRequestFiltersInner>;
          result.filters.replace(valueDes);
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
            specifiedType: const FullType(String),
          ) as String;
          result.layoutQuery = valueDes;
          break;
        case r'layout_options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.layoutOptions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePresetRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePresetRequestBuilder();
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
