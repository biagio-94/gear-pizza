//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/users.dart';
import 'package:gearpizza/common/models/users_avatar.dart';
import 'package:gearpizza/common/models/users_role.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'roles_users_inner.g.dart';

/// RolesUsersInner
///
/// Properties:
/// * [id] - Unique identifier for the user.
/// * [firstName] - First name of the user.
/// * [lastName] - Last name of the user.
/// * [email] - Unique email address for the user.
/// * [password] - Password of the user.
/// * [location] - The user's location.
/// * [title] - The user's title.
/// * [description] - The user's description.
/// * [tags] - The user's tags.
/// * [avatar]
/// * [language] - The user's language used in Directus.
/// * [tfaSecret] - The 2FA secret string that's used to generate one time passwords.
/// * [status] - Status of the user.
/// * [role]
/// * [lastPage] - Last page that the user was on.
/// * [appearance]
/// * [themeDark]
/// * [themeLight]
@BuiltValue()
abstract class RolesUsersInner
    implements Built<RolesUsersInner, RolesUsersInnerBuilder> {
  /// One Of [String], [Users]
  OneOf get oneOf;

  RolesUsersInner._();

  factory RolesUsersInner([void updates(RolesUsersInnerBuilder b)]) =
      _$RolesUsersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RolesUsersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RolesUsersInner> get serializer =>
      _$RolesUsersInnerSerializer();
}

class _$RolesUsersInnerSerializer
    implements PrimitiveSerializer<RolesUsersInner> {
  @override
  final Iterable<Type> types = const [RolesUsersInner, _$RolesUsersInner];

  @override
  final String wireName = r'RolesUsersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RolesUsersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    RolesUsersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  RolesUsersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RolesUsersInnerBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(String),
      FullType(Users),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class RolesUsersInnerStatusEnum extends EnumClass {
  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'active')
  static const RolesUsersInnerStatusEnum active =
      _$rolesUsersInnerStatusEnum_active;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'invited')
  static const RolesUsersInnerStatusEnum invited =
      _$rolesUsersInnerStatusEnum_invited;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'draft')
  static const RolesUsersInnerStatusEnum draft =
      _$rolesUsersInnerStatusEnum_draft;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'suspended')
  static const RolesUsersInnerStatusEnum suspended =
      _$rolesUsersInnerStatusEnum_suspended;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'deleted')
  static const RolesUsersInnerStatusEnum deleted =
      _$rolesUsersInnerStatusEnum_deleted;

  static Serializer<RolesUsersInnerStatusEnum> get serializer =>
      _$rolesUsersInnerStatusEnumSerializer;

  const RolesUsersInnerStatusEnum._(String name) : super(name);

  static BuiltSet<RolesUsersInnerStatusEnum> get values =>
      _$rolesUsersInnerStatusEnumValues;
  static RolesUsersInnerStatusEnum valueOf(String name) =>
      _$rolesUsersInnerStatusEnumValueOf(name);
}
