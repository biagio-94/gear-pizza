//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/fields.dart';
import 'package:built_value/json_object.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'fields_group.g.dart';

/// FieldsGroup
///
/// Properties:
/// * [id]
/// * [collection] - Unique name of the collection this field is in.
/// * [field] - Unique name of the field. Field name is unique within the collection.
/// * [special]
/// * [interface_]
/// * [options]
/// * [display]
/// * [displayOptions]
/// * [readonly]
/// * [hidden]
/// * [sort]
/// * [width]
/// * [translations]
/// * [note]
/// * [conditions]
/// * [required_]
/// * [group]
/// * [validation]
/// * [validationMessage]
@BuiltValue()
abstract class FieldsGroup implements Built<FieldsGroup, FieldsGroupBuilder> {
  /// One Of [Fields], [int]
  OneOf get oneOf;

  FieldsGroup._();

  factory FieldsGroup([void updates(FieldsGroupBuilder b)]) = _$FieldsGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldsGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FieldsGroup> get serializer => _$FieldsGroupSerializer();
}

class _$FieldsGroupSerializer implements PrimitiveSerializer<FieldsGroup> {
  @override
  final Iterable<Type> types = const [FieldsGroup, _$FieldsGroup];

  @override
  final String wireName = r'FieldsGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FieldsGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    FieldsGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  FieldsGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldsGroupBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(int),
      FullType(Fields),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
