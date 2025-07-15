//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/roles_parent.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/roles.dart';
import 'package:gearpizza/common/models/roles_users_inner.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'roles_children_inner.g.dart';

/// RolesChildrenInner
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
abstract class RolesChildrenInner
    implements Built<RolesChildrenInner, RolesChildrenInnerBuilder> {
  /// One Of [Roles], [String]
  OneOf get oneOf;

  RolesChildrenInner._();

  factory RolesChildrenInner([void updates(RolesChildrenInnerBuilder b)]) =
      _$RolesChildrenInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RolesChildrenInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RolesChildrenInner> get serializer =>
      _$RolesChildrenInnerSerializer();
}

class _$RolesChildrenInnerSerializer
    implements PrimitiveSerializer<RolesChildrenInner> {
  @override
  final Iterable<Type> types = const [RolesChildrenInner, _$RolesChildrenInner];

  @override
  final String wireName = r'RolesChildrenInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RolesChildrenInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    RolesChildrenInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  RolesChildrenInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RolesChildrenInnerBuilder();
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
