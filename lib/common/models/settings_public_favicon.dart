//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/files.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'settings_public_favicon.g.dart';

/// $t:field_options.directus_settings.project_favicon_note
///
/// Properties:
/// * [id] - Unique identifier for the file.
/// * [storage] - Where the file is stored. Either `local` for the local filesystem or the name of the storage adapter (for example `s3`).
/// * [filenameDisk] - Name of the file on disk. By default, Directus uses a random hash for the filename.
/// * [filenameDownload] - How you want to the file to be named when it's being downloaded.
/// * [title] - Title for the file. Is extracted from the filename on upload, but can be edited by the user.
/// * [type] - MIME type of the file.
/// * [folder]
/// * [uploadedBy]
/// * [createdOn] - When the file was created.
/// * [modifiedBy]
/// * [modifiedOn]
/// * [charset] - Character set of the file.
/// * [filesize] - Size of the file in bytes.
/// * [width] - Width of the file in pixels. Only applies to images.
/// * [height] - Height of the file in pixels. Only applies to images.
/// * [duration] - Duration of the file in seconds. Only applies to audio and video.
/// * [embed] - Where the file was embedded from.
/// * [description] - Description for the file.
/// * [location] - Where the file was created. Is automatically populated based on Exif data for images.
/// * [tags] - Tags for the file. Is automatically populated based on Exif data for images.
/// * [metadata] - IPTC, Exif, and ICC metadata extracted from file
/// * [focalPointX]
/// * [focalPointY]
/// * [tusId]
/// * [tusData]
/// * [uploadedOn] - When the file was last uploaded/replaced.
@BuiltValue()
abstract class SettingsPublicFavicon
    implements Built<SettingsPublicFavicon, SettingsPublicFaviconBuilder> {
  /// One Of [Files], [String]
  OneOf get oneOf;

  SettingsPublicFavicon._();

  factory SettingsPublicFavicon(
      [void updates(SettingsPublicFaviconBuilder b)]) = _$SettingsPublicFavicon;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SettingsPublicFaviconBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SettingsPublicFavicon> get serializer =>
      _$SettingsPublicFaviconSerializer();
}

class _$SettingsPublicFaviconSerializer
    implements PrimitiveSerializer<SettingsPublicFavicon> {
  @override
  final Iterable<Type> types = const [
    SettingsPublicFavicon,
    _$SettingsPublicFavicon
  ];

  @override
  final String wireName = r'SettingsPublicFavicon';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, SettingsPublicFavicon object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    SettingsPublicFavicon object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  SettingsPublicFavicon deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SettingsPublicFaviconBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(String),
      FullType(Files),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
