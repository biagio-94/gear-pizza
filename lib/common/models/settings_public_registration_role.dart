//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/roles_parent.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/roles_children_inner.dart';
import 'package:gearpizza/common/models/roles.dart';
import 'package:gearpizza/common/models/roles_users_inner.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'settings_public_registration_role.g.dart';

/// $t:fields.directus_settings.public_registration_role_note
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
abstract class SettingsPublicRegistrationRole
    implements
        Built<SettingsPublicRegistrationRole,
            SettingsPublicRegistrationRoleBuilder> {
  /// One Of [Roles], [String]
  OneOf get oneOf;

  SettingsPublicRegistrationRole._();

  factory SettingsPublicRegistrationRole(
          [void updates(SettingsPublicRegistrationRoleBuilder b)]) =
      _$SettingsPublicRegistrationRole;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SettingsPublicRegistrationRoleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SettingsPublicRegistrationRole> get serializer =>
      _$SettingsPublicRegistrationRoleSerializer();
}

class _$SettingsPublicRegistrationRoleSerializer
    implements PrimitiveSerializer<SettingsPublicRegistrationRole> {
  @override
  final Iterable<Type> types = const [
    SettingsPublicRegistrationRole,
    _$SettingsPublicRegistrationRole
  ];

  @override
  final String wireName = r'SettingsPublicRegistrationRole';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SettingsPublicRegistrationRole object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    SettingsPublicRegistrationRole object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  SettingsPublicRegistrationRole deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SettingsPublicRegistrationRoleBuilder();
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
