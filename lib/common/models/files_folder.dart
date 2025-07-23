//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/folders.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'files_folder.g.dart';

/// Virtual folder where this file resides in.
///
/// Properties:
/// * [id] - Unique identifier for the folder.
/// * [name] - Name of the folder.
/// * [parent]
@BuiltValue()
abstract class FilesFolder implements Built<FilesFolder, FilesFolderBuilder> {
  /// One Of [Folders], [String]
  OneOf get oneOf;

  FilesFolder._();

  factory FilesFolder([void updates(FilesFolderBuilder b)]) = _$FilesFolder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilesFolderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilesFolder> get serializer => _$FilesFolderSerializer();
}

class _$FilesFolderSerializer implements PrimitiveSerializer<FilesFolder> {
  @override
  final Iterable<Type> types = const [FilesFolder, _$FilesFolder];

  @override
  final String wireName = r'FilesFolder';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, FilesFolder object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    FilesFolder object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  FilesFolder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilesFolderBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(String),
      FullType(Folders),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
