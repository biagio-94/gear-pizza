//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/collections_group.dart';
import 'package:gearpizza/common/models/collections.dart';
import 'package:built_value/json_object.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'activity_collection.g.dart';

/// Collection identifier in which the item resides.
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
abstract class ActivityCollection
    implements Built<ActivityCollection, ActivityCollectionBuilder> {
  /// One Of [Collections], [String]
  OneOf get oneOf;

  ActivityCollection._();

  factory ActivityCollection([void updates(ActivityCollectionBuilder b)]) =
      _$ActivityCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivityCollection> get serializer =>
      _$ActivityCollectionSerializer();
}

class _$ActivityCollectionSerializer
    implements PrimitiveSerializer<ActivityCollection> {
  @override
  final Iterable<Type> types = const [ActivityCollection, _$ActivityCollection];

  @override
  final String wireName = r'ActivityCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivityCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ActivityCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ActivityCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityCollectionBuilder();
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
