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

part 'files_uploaded_by.g.dart';

/// Who uploaded the file.
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
abstract class FilesUploadedBy
    implements Built<FilesUploadedBy, FilesUploadedByBuilder> {
  /// One Of [String], [Users]
  OneOf get oneOf;

  FilesUploadedBy._();

  factory FilesUploadedBy([void updates(FilesUploadedByBuilder b)]) =
      _$FilesUploadedBy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilesUploadedByBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilesUploadedBy> get serializer =>
      _$FilesUploadedBySerializer();
}

class _$FilesUploadedBySerializer
    implements PrimitiveSerializer<FilesUploadedBy> {
  @override
  final Iterable<Type> types = const [FilesUploadedBy, _$FilesUploadedBy];

  @override
  final String wireName = r'FilesUploadedBy';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, FilesUploadedBy object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    FilesUploadedBy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  FilesUploadedBy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilesUploadedByBuilder();
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

class FilesUploadedByStatusEnum extends EnumClass {
  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'active')
  static const FilesUploadedByStatusEnum active =
      _$filesUploadedByStatusEnum_active;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'invited')
  static const FilesUploadedByStatusEnum invited =
      _$filesUploadedByStatusEnum_invited;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'draft')
  static const FilesUploadedByStatusEnum draft =
      _$filesUploadedByStatusEnum_draft;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'suspended')
  static const FilesUploadedByStatusEnum suspended =
      _$filesUploadedByStatusEnum_suspended;

  /// Status of the user.
  @BuiltValueEnumConst(wireName: r'deleted')
  static const FilesUploadedByStatusEnum deleted =
      _$filesUploadedByStatusEnum_deleted;

  static Serializer<FilesUploadedByStatusEnum> get serializer =>
      _$filesUploadedByStatusEnumSerializer;

  const FilesUploadedByStatusEnum._(String name) : super(name);

  static BuiltSet<FilesUploadedByStatusEnum> get values =>
      _$filesUploadedByStatusEnumValues;
  static FilesUploadedByStatusEnum valueOf(String name) =>
      _$filesUploadedByStatusEnumValueOf(name);
}
