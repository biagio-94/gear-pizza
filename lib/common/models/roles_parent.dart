//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/roles_children_inner.dart';
import 'package:gearpizza/common/models/roles.dart';
import 'package:gearpizza/common/models/roles_users_inner.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'roles_parent.g.dart';

/// $t:field_options.directus_roles.parent_note
///
/// Properties:
/// * [id] - Unique identifier for the role.
/// * [name] - Name of the role.
/// * [icon] - The role's icon.
/// * [description] - Description of the role.
/// * [parent]
/// * [children] - $t:field_options.directus_roles.children_note
/// * [policies]
/// * [users]
@BuiltValue()
abstract class RolesParent implements Built<RolesParent, RolesParentBuilder> {
  /// One Of [Roles], [String]
  OneOf get oneOf;

  RolesParent._();

  factory RolesParent([void updates(RolesParentBuilder b)]) = _$RolesParent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RolesParentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RolesParent> get serializer => _$RolesParentSerializer();
}

class _$RolesParentSerializer implements PrimitiveSerializer<RolesParent> {
  @override
  final Iterable<Type> types = const [RolesParent, _$RolesParent];

  @override
  final String wireName = r'RolesParent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RolesParent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    RolesParent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  RolesParent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RolesParentBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(String),
      FullType(Roles),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
