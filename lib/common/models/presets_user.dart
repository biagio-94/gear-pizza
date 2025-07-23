//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/users.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'presets_user.g.dart';

/// The unique identifier of the user to whom this collection preset applies.
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
abstract class PresetsUser implements Built<PresetsUser, PresetsUserBuilder> {
  /// One Of [String], [Users]
  OneOf get oneOf;

  PresetsUser._();

  factory PresetsUser([void updates(PresetsUserBuilder b)]) = _$PresetsUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PresetsUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PresetsUser> get serializer => _$PresetsUserSerializer();
}

class _$PresetsUserSerializer implements PrimitiveSerializer<PresetsUser> {
  @override
  final Iterable<Type> types = const [PresetsUser, _$PresetsUser];

  @override
  final String wireName = r'PresetsUser';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, PresetsUser object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    PresetsUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  PresetsUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PresetsUserBuilder();
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

class PresetsUserStatusEnum extends EnumClass {
  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'active')
  static const PresetsUserStatusEnum active = _$presetsUserStatusEnum_active;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'invited')
  static const PresetsUserStatusEnum invited = _$presetsUserStatusEnum_invited;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'draft')
  static const PresetsUserStatusEnum draft = _$presetsUserStatusEnum_draft;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'suspended')
  static const PresetsUserStatusEnum suspended =
      _$presetsUserStatusEnum_suspended;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'deleted')
  static const PresetsUserStatusEnum deleted = _$presetsUserStatusEnum_deleted;

  static Serializer<PresetsUserStatusEnum> get serializer =>
      _$presetsUserStatusEnumSerializer;

  const PresetsUserStatusEnum._(String name) : super(name);

  static BuiltSet<PresetsUserStatusEnum> get values =>
      _$presetsUserStatusEnumValues;
  static PresetsUserStatusEnum valueOf(String name) =>
      _$presetsUserStatusEnumValueOf(name);
}
