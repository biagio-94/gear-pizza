//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/collections.dart';
import 'package:built_value/json_object.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'collections_group.g.dart';

/// CollectionsGroup
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
abstract class CollectionsGroup
    implements Built<CollectionsGroup, CollectionsGroupBuilder> {
  /// One Of [Collections], [String]
  OneOf get oneOf;

  CollectionsGroup._();

  factory CollectionsGroup([void updates(CollectionsGroupBuilder b)]) =
      _$CollectionsGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollectionsGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollectionsGroup> get serializer =>
      _$CollectionsGroupSerializer();
}

class _$CollectionsGroupSerializer
    implements PrimitiveSerializer<CollectionsGroup> {
  @override
  final Iterable<Type> types = const [CollectionsGroup, _$CollectionsGroup];

  @override
  final String wireName = r'CollectionsGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollectionsGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    CollectionsGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CollectionsGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollectionsGroupBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(String),
      FullType(Collections),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
