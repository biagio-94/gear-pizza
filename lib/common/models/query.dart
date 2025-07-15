//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'query.g.dart';

/// Query
///
/// Properties:
/// * [fields] - Control what fields are being returned in the object.
/// * [filter]
/// * [search] - Filter by items that contain the given search query in one of their fields.
/// * [sort] - How to sort the returned items.
/// * [limit] - Set the maximum number of items that will be returned
/// * [offset] - How many items to skip when fetching data.
/// * [page] - Cursor for use in pagination. Often used in combination with limit.
/// * [deep] - Deep allows you to set any of the other query parameters on a nested relational dataset.
@BuiltValue()
abstract class Query implements Built<Query, QueryBuilder> {
  /// Control what fields are being returned in the object.
  @BuiltValueField(wireName: r'fields')
  BuiltList<String>? get fields;

  @BuiltValueField(wireName: r'filter')
  JsonObject? get filter;

  /// Filter by items that contain the given search query in one of their fields.
  @BuiltValueField(wireName: r'search')
  String? get search;

  /// How to sort the returned items.
  @BuiltValueField(wireName: r'sort')
  BuiltList<String>? get sort;

  /// Set the maximum number of items that will be returned
  @BuiltValueField(wireName: r'limit')
  num? get limit;

  /// How many items to skip when fetching data.
  @BuiltValueField(wireName: r'offset')
  num? get offset;

  /// Cursor for use in pagination. Often used in combination with limit.
  @BuiltValueField(wireName: r'page')
  num? get page;

  /// Deep allows you to set any of the other query parameters on a nested relational dataset.
  @BuiltValueField(wireName: r'deep')
  JsonObject? get deep;

  Query._();

  factory Query([void updates(QueryBuilder b)]) = _$Query;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Query> get serializer => _$QuerySerializer();
}

class _$QuerySerializer implements PrimitiveSerializer<Query> {
  @override
  final Iterable<Type> types = const [Query, _$Query];

  @override
  final String wireName = r'Query';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Query object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.filter != null) {
      yield r'filter';
      yield serializers.serialize(
        object.filter,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.search != null) {
      yield r'search';
      yield serializers.serialize(
        object.search,
        specifiedType: const FullType(String),
      );
    }
    if (object.sort != null) {
      yield r'sort';
      yield serializers.serialize(
        object.sort,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(num),
      );
    }
    if (object.offset != null) {
      yield r'offset';
      yield serializers.serialize(
        object.offset,
        specifiedType: const FullType(num),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(num),
      );
    }
    if (object.deep != null) {
      yield r'deep';
      yield serializers.serialize(
        object.deep,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Query object, {
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
    required QueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.fields.replace(valueDes);
          break;
        case r'filter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.filter = valueDes;
          break;
        case r'search':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.search = valueDes;
          break;
        case r'sort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.sort.replace(valueDes);
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.limit = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.offset = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.page = valueDes;
          break;
        case r'deep':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.deep = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Query deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryBuilder();
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
