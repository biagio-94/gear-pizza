//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/roles.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'presets_role.g.dart';

/// The unique identifier of a role in the platform. If `user` is null, this will be used to apply the collection preset or bookmark for all users in the role.
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
abstract class PresetsRole implements Built<PresetsRole, PresetsRoleBuilder> {
  /// One Of [Roles], [String]
  OneOf get oneOf;

  PresetsRole._();

  factory PresetsRole([void updates(PresetsRoleBuilder b)]) = _$PresetsRole;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PresetsRoleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PresetsRole> get serializer => _$PresetsRoleSerializer();
}

class _$PresetsRoleSerializer implements PrimitiveSerializer<PresetsRole> {
  @override
  final Iterable<Type> types = const [PresetsRole, _$PresetsRole];

  @override
  final String wireName = r'PresetsRole';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, PresetsRole object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    PresetsRole object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  PresetsRole deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PresetsRoleBuilder();
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
