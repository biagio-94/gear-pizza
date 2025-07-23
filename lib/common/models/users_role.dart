//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/roles.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'users_role.g.dart';

/// Unique identifier of the role of this user.
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
abstract class UsersRole implements Built<UsersRole, UsersRoleBuilder> {
  /// One Of [Roles], [String]
  OneOf get oneOf;

  UsersRole._();

  factory UsersRole([void updates(UsersRoleBuilder b)]) = _$UsersRole;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersRoleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersRole> get serializer => _$UsersRoleSerializer();
}

class _$UsersRoleSerializer implements PrimitiveSerializer<UsersRole> {
  @override
  final Iterable<Type> types = const [UsersRole, _$UsersRole];

  @override
  final String wireName = r'UsersRole';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, UsersRole object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    UsersRole object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  UsersRole deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersRoleBuilder();
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
