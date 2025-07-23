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

part 'activity_user.g.dart';

/// The user who performed this action.
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
abstract class ActivityUser
    implements Built<ActivityUser, ActivityUserBuilder> {
  /// One Of [String], [Users]
  OneOf get oneOf;

  ActivityUser._();

  factory ActivityUser([void updates(ActivityUserBuilder b)]) = _$ActivityUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivityUser> get serializer => _$ActivityUserSerializer();
}

class _$ActivityUserSerializer implements PrimitiveSerializer<ActivityUser> {
  @override
  final Iterable<Type> types = const [ActivityUser, _$ActivityUser];

  @override
  final String wireName = r'ActivityUser';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, ActivityUser object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ActivityUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ActivityUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityUserBuilder();
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

class ActivityUserStatusEnum extends EnumClass {
  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'active')
  static const ActivityUserStatusEnum active = _$activityUserStatusEnum_active;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'invited')
  static const ActivityUserStatusEnum invited =
      _$activityUserStatusEnum_invited;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'draft')
  static const ActivityUserStatusEnum draft = _$activityUserStatusEnum_draft;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'suspended')
  static const ActivityUserStatusEnum suspended =
      _$activityUserStatusEnum_suspended;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'deleted')
  static const ActivityUserStatusEnum deleted =
      _$activityUserStatusEnum_deleted;

  static Serializer<ActivityUserStatusEnum> get serializer =>
      _$activityUserStatusEnumSerializer;

  const ActivityUserStatusEnum._(String name) : super(name);

  static BuiltSet<ActivityUserStatusEnum> get values =>
      _$activityUserStatusEnumValues;
  static ActivityUserStatusEnum valueOf(String name) =>
      _$activityUserStatusEnumValueOf(name);
}
