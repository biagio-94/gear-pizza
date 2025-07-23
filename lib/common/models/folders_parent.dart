//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/folders.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'folders_parent.g.dart';

/// Unique identifier of the parent folder. This allows for nested folders.
///
/// Properties:
/// * [id] - Unique identifier for the folder.
/// * [name] - Name of the folder.
/// * [parent]
@BuiltValue()
abstract class FoldersParent
    implements Built<FoldersParent, FoldersParentBuilder> {
  /// One Of [Folders], [String]
  OneOf get oneOf;

  FoldersParent._();

  factory FoldersParent([void updates(FoldersParentBuilder b)]) =
      _$FoldersParent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoldersParentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoldersParent> get serializer =>
      _$FoldersParentSerializer();
}

class _$FoldersParentSerializer implements PrimitiveSerializer<FoldersParent> {
  @override
  final Iterable<Type> types = const [FoldersParent, _$FoldersParent];

  @override
  final String wireName = r'FoldersParent';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, FoldersParent object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    FoldersParent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  FoldersParent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoldersParentBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(String),
      FullType(Folders),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
