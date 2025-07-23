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

part 'files_modified_by.g.dart';

/// FilesModifiedBy
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
abstract class FilesModifiedBy
    implements Built<FilesModifiedBy, FilesModifiedByBuilder> {
  /// One Of [String], [Users]
  OneOf get oneOf;

  FilesModifiedBy._();

  factory FilesModifiedBy([void updates(FilesModifiedByBuilder b)]) =
      _$FilesModifiedBy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilesModifiedByBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilesModifiedBy> get serializer =>
      _$FilesModifiedBySerializer();
}

class _$FilesModifiedBySerializer
    implements PrimitiveSerializer<FilesModifiedBy> {
  @override
  final Iterable<Type> types = const [FilesModifiedBy, _$FilesModifiedBy];

  @override
  final String wireName = r'FilesModifiedBy';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, FilesModifiedBy object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    FilesModifiedBy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  FilesModifiedBy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilesModifiedByBuilder();
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

class FilesModifiedByStatusEnum extends EnumClass {
  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'active')
  static const FilesModifiedByStatusEnum active =
      _$filesModifiedByStatusEnum_active;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'invited')
  static const FilesModifiedByStatusEnum invited =
      _$filesModifiedByStatusEnum_invited;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'draft')
  static const FilesModifiedByStatusEnum draft =
      _$filesModifiedByStatusEnum_draft;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'suspended')
  static const FilesModifiedByStatusEnum suspended =
      _$filesModifiedByStatusEnum_suspended;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'deleted')
  static const FilesModifiedByStatusEnum deleted =
      _$filesModifiedByStatusEnum_deleted;

  static Serializer<FilesModifiedByStatusEnum> get serializer =>
      _$filesModifiedByStatusEnumSerializer;

  const FilesModifiedByStatusEnum._(String name) : super(name);

  static BuiltSet<FilesModifiedByStatusEnum> get values =>
      _$filesModifiedByStatusEnumValues;
  static FilesModifiedByStatusEnum valueOf(String name) =>
      _$filesModifiedByStatusEnumValueOf(name);
}
