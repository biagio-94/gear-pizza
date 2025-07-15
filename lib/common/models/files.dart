//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/files_folder.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/files_modified_by.dart';
import 'package:gearpizza/common/models/files_uploaded_by.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'files.g.dart';

/// Files
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
abstract class Files implements Built<Files, FilesBuilder> {
  /// Unique identifier for the file.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Where the file is stored. Either `local` for the local filesystem or the name of the storage adapter (for example `s3`).
  @BuiltValueField(wireName: r'storage')
  String? get storage;

  /// Name of the file on disk. By default, Directus uses a random hash for the filename.
  @BuiltValueField(wireName: r'filename_disk')
  String? get filenameDisk;

  /// How you want to the file to be named when it's being downloaded.
  @BuiltValueField(wireName: r'filename_download')
  String? get filenameDownload;

  /// Title for the file. Is extracted from the filename on upload, but can be edited by the user.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// MIME type of the file.
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'folder')
  FilesFolder? get folder;

  @BuiltValueField(wireName: r'uploaded_by')
  FilesUploadedBy? get uploadedBy;

  /// When the file was created.
  @BuiltValueField(wireName: r'created_on')
  DateTime? get createdOn;

  @BuiltValueField(wireName: r'modified_by')
  FilesModifiedBy? get modifiedBy;

  @BuiltValueField(wireName: r'modified_on')
  String? get modifiedOn;

  /// Character set of the file.
  @BuiltValueField(wireName: r'charset')
  String? get charset;

  /// Size of the file in bytes.
  @BuiltValueField(wireName: r'filesize')
  int? get filesize;

  /// Width of the file in pixels. Only applies to images.
  @BuiltValueField(wireName: r'width')
  int? get width;

  /// Height of the file in pixels. Only applies to images.
  @BuiltValueField(wireName: r'height')
  int? get height;

  /// Duration of the file in seconds. Only applies to audio and video.
  @BuiltValueField(wireName: r'duration')
  int? get duration;

  /// Where the file was embedded from.
  @BuiltValueField(wireName: r'embed')
  String? get embed;

  /// Description for the file.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Where the file was created. Is automatically populated based on Exif data for images.
  @BuiltValueField(wireName: r'location')
  String? get location;

  /// Tags for the file. Is automatically populated based on Exif data for images.
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// IPTC, Exif, and ICC metadata extracted from file
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  @BuiltValueField(wireName: r'focal_point_x')
  int? get focalPointX;

  @BuiltValueField(wireName: r'focal_point_y')
  int? get focalPointY;

  @BuiltValueField(wireName: r'tus_id')
  String? get tusId;

  @BuiltValueField(wireName: r'tus_data')
  JsonObject? get tusData;

  /// When the file was last uploaded/replaced.
  @BuiltValueField(wireName: r'uploaded_on')
  DateTime? get uploadedOn;

  Files._();

  factory Files([void updates(FilesBuilder b)]) = _$Files;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Files> get serializer => _$FilesSerializer();
}

class _$FilesSerializer implements PrimitiveSerializer<Files> {
  @override
  final Iterable<Type> types = const [Files, _$Files];

  @override
  final String wireName = r'Files';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Files object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.storage != null) {
      yield r'storage';
      yield serializers.serialize(
        object.storage,
        specifiedType: const FullType(String),
      );
    }
    if (object.filenameDisk != null) {
      yield r'filename_disk';
      yield serializers.serialize(
        object.filenameDisk,
        specifiedType: const FullType(String),
      );
    }
    if (object.filenameDownload != null) {
      yield r'filename_download';
      yield serializers.serialize(
        object.filenameDownload,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.folder != null) {
      yield r'folder';
      yield serializers.serialize(
        object.folder,
        specifiedType: const FullType.nullable(FilesFolder),
      );
    }
    if (object.uploadedBy != null) {
      yield r'uploaded_by';
      yield serializers.serialize(
        object.uploadedBy,
        specifiedType: const FullType(FilesUploadedBy),
      );
    }
    if (object.createdOn != null) {
      yield r'created_on';
      yield serializers.serialize(
        object.createdOn,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.modifiedBy != null) {
      yield r'modified_by';
      yield serializers.serialize(
        object.modifiedBy,
        specifiedType: const FullType.nullable(FilesModifiedBy),
      );
    }
    if (object.modifiedOn != null) {
      yield r'modified_on';
      yield serializers.serialize(
        object.modifiedOn,
        specifiedType: const FullType(String),
      );
    }
    if (object.charset != null) {
      yield r'charset';
      yield serializers.serialize(
        object.charset,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.filesize != null) {
      yield r'filesize';
      yield serializers.serialize(
        object.filesize,
        specifiedType: const FullType(int),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.embed != null) {
      yield r'embed';
      yield serializers.serialize(
        object.embed,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.focalPointX != null) {
      yield r'focal_point_x';
      yield serializers.serialize(
        object.focalPointX,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.focalPointY != null) {
      yield r'focal_point_y';
      yield serializers.serialize(
        object.focalPointY,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.tusId != null) {
      yield r'tus_id';
      yield serializers.serialize(
        object.tusId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tusData != null) {
      yield r'tus_data';
      yield serializers.serialize(
        object.tusData,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.uploadedOn != null) {
      yield r'uploaded_on';
      yield serializers.serialize(
        object.uploadedOn,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Files object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'storage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.storage = valueDes;
          break;
        case r'filename_disk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filenameDisk = valueDes;
          break;
        case r'filename_download':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filenameDownload = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'folder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FilesFolder),
          ) as FilesFolder?;
          if (valueDes == null) continue;
          result.folder.replace(valueDes);
          break;
        case r'uploaded_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FilesUploadedBy),
          ) as FilesUploadedBy;
          result.uploadedBy.replace(valueDes);
          break;
        case r'created_on':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdOn = valueDes;
          break;
        case r'modified_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FilesModifiedBy),
          ) as FilesModifiedBy?;
          if (valueDes == null) continue;
          result.modifiedBy.replace(valueDes);
          break;
        case r'modified_on':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modifiedOn = valueDes;
          break;
        case r'charset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.charset = valueDes;
          break;
        case r'filesize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.filesize = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.width = valueDes;
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.height = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.duration = valueDes;
          break;
        case r'embed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.embed = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.location = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.metadata = valueDes;
          break;
        case r'focal_point_x':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.focalPointX = valueDes;
          break;
        case r'focal_point_y':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.focalPointY = valueDes;
          break;
        case r'tus_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tusId = valueDes;
          break;
        case r'tus_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.tusData = valueDes;
          break;
        case r'uploaded_on':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.uploadedOn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Files deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilesBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
