//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/collections.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'presets_collection.g.dart';

/// What collection this collection preset is used for.
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
abstract class PresetsCollection
    implements Built<PresetsCollection, PresetsCollectionBuilder> {
  /// One Of [Collections], [String]
  OneOf get oneOf;

  PresetsCollection._();

  factory PresetsCollection([void updates(PresetsCollectionBuilder b)]) =
      _$PresetsCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PresetsCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PresetsCollection> get serializer =>
      _$PresetsCollectionSerializer();
}

class _$PresetsCollectionSerializer
    implements PrimitiveSerializer<PresetsCollection> {
  @override
  final Iterable<Type> types = const [PresetsCollection, _$PresetsCollection];

  @override
  final String wireName = r'PresetsCollection';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, PresetsCollection object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    PresetsCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  PresetsCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PresetsCollectionBuilder();
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
