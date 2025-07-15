// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Files extends Files {
  @override
  final String? id;
  @override
  final String? storage;
  @override
  final String? filenameDisk;
  @override
  final String? filenameDownload;
  @override
  final String? title;
  @override
  final String? type;
  @override
  final FilesFolder? folder;
  @override
  final FilesUploadedBy? uploadedBy;
  @override
  final DateTime? createdOn;
  @override
  final FilesModifiedBy? modifiedBy;
  @override
  final String? modifiedOn;
  @override
  final String? charset;
  @override
  final int? filesize;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final int? duration;
  @override
  final String? embed;
  @override
  final String? description;
  @override
  final String? location;
  @override
  final BuiltList<String>? tags;
  @override
  final JsonObject? metadata;
  @override
  final int? focalPointX;
  @override
  final int? focalPointY;
  @override
  final String? tusId;
  @override
  final JsonObject? tusData;
  @override
  final DateTime? uploadedOn;

  factory _$Files([void Function(FilesBuilder)? updates]) =>
      (FilesBuilder()..update(updates))._build();

  _$Files._(
      {this.id,
      this.storage,
      this.filenameDisk,
      this.filenameDownload,
      this.title,
      this.type,
      this.folder,
      this.uploadedBy,
      this.createdOn,
      this.modifiedBy,
      this.modifiedOn,
      this.charset,
      this.filesize,
      this.width,
      this.height,
      this.duration,
      this.embed,
      this.description,
      this.location,
      this.tags,
      this.metadata,
      this.focalPointX,
      this.focalPointY,
      this.tusId,
      this.tusData,
      this.uploadedOn})
      : super._();
  @override
  Files rebuild(void Function(FilesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilesBuilder toBuilder() => FilesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Files &&
        id == other.id &&
        storage == other.storage &&
        filenameDisk == other.filenameDisk &&
        filenameDownload == other.filenameDownload &&
        title == other.title &&
        type == other.type &&
        folder == other.folder &&
        uploadedBy == other.uploadedBy &&
        createdOn == other.createdOn &&
        modifiedBy == other.modifiedBy &&
        modifiedOn == other.modifiedOn &&
        charset == other.charset &&
        filesize == other.filesize &&
        width == other.width &&
        height == other.height &&
        duration == other.duration &&
        embed == other.embed &&
        description == other.description &&
        location == other.location &&
        tags == other.tags &&
        metadata == other.metadata &&
        focalPointX == other.focalPointX &&
        focalPointY == other.focalPointY &&
        tusId == other.tusId &&
        tusData == other.tusData &&
        uploadedOn == other.uploadedOn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, storage.hashCode);
    _$hash = $jc(_$hash, filenameDisk.hashCode);
    _$hash = $jc(_$hash, filenameDownload.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, folder.hashCode);
    _$hash = $jc(_$hash, uploadedBy.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jc(_$hash, modifiedBy.hashCode);
    _$hash = $jc(_$hash, modifiedOn.hashCode);
    _$hash = $jc(_$hash, charset.hashCode);
    _$hash = $jc(_$hash, filesize.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, embed.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, focalPointX.hashCode);
    _$hash = $jc(_$hash, focalPointY.hashCode);
    _$hash = $jc(_$hash, tusId.hashCode);
    _$hash = $jc(_$hash, tusData.hashCode);
    _$hash = $jc(_$hash, uploadedOn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Files')
          ..add('id', id)
          ..add('storage', storage)
          ..add('filenameDisk', filenameDisk)
          ..add('filenameDownload', filenameDownload)
          ..add('title', title)
          ..add('type', type)
          ..add('folder', folder)
          ..add('uploadedBy', uploadedBy)
          ..add('createdOn', createdOn)
          ..add('modifiedBy', modifiedBy)
          ..add('modifiedOn', modifiedOn)
          ..add('charset', charset)
          ..add('filesize', filesize)
          ..add('width', width)
          ..add('height', height)
          ..add('duration', duration)
          ..add('embed', embed)
          ..add('description', description)
          ..add('location', location)
          ..add('tags', tags)
          ..add('metadata', metadata)
          ..add('focalPointX', focalPointX)
          ..add('focalPointY', focalPointY)
          ..add('tusId', tusId)
          ..add('tusData', tusData)
          ..add('uploadedOn', uploadedOn))
        .toString();
  }
}

class FilesBuilder implements Builder<Files, FilesBuilder> {
  _$Files? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _storage;
  String? get storage => _$this._storage;
  set storage(String? storage) => _$this._storage = storage;

  String? _filenameDisk;
  String? get filenameDisk => _$this._filenameDisk;
  set filenameDisk(String? filenameDisk) => _$this._filenameDisk = filenameDisk;

  String? _filenameDownload;
  String? get filenameDownload => _$this._filenameDownload;
  set filenameDownload(String? filenameDownload) =>
      _$this._filenameDownload = filenameDownload;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  FilesFolderBuilder? _folder;
  FilesFolderBuilder get folder => _$this._folder ??= FilesFolderBuilder();
  set folder(FilesFolderBuilder? folder) => _$this._folder = folder;

  FilesUploadedByBuilder? _uploadedBy;
  FilesUploadedByBuilder get uploadedBy =>
      _$this._uploadedBy ??= FilesUploadedByBuilder();
  set uploadedBy(FilesUploadedByBuilder? uploadedBy) =>
      _$this._uploadedBy = uploadedBy;

  DateTime? _createdOn;
  DateTime? get createdOn => _$this._createdOn;
  set createdOn(DateTime? createdOn) => _$this._createdOn = createdOn;

  FilesModifiedByBuilder? _modifiedBy;
  FilesModifiedByBuilder get modifiedBy =>
      _$this._modifiedBy ??= FilesModifiedByBuilder();
  set modifiedBy(FilesModifiedByBuilder? modifiedBy) =>
      _$this._modifiedBy = modifiedBy;

  String? _modifiedOn;
  String? get modifiedOn => _$this._modifiedOn;
  set modifiedOn(String? modifiedOn) => _$this._modifiedOn = modifiedOn;

  String? _charset;
  String? get charset => _$this._charset;
  set charset(String? charset) => _$this._charset = charset;

  int? _filesize;
  int? get filesize => _$this._filesize;
  set filesize(int? filesize) => _$this._filesize = filesize;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  String? _embed;
  String? get embed => _$this._embed;
  set embed(String? embed) => _$this._embed = embed;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  int? _focalPointX;
  int? get focalPointX => _$this._focalPointX;
  set focalPointX(int? focalPointX) => _$this._focalPointX = focalPointX;

  int? _focalPointY;
  int? get focalPointY => _$this._focalPointY;
  set focalPointY(int? focalPointY) => _$this._focalPointY = focalPointY;

  String? _tusId;
  String? get tusId => _$this._tusId;
  set tusId(String? tusId) => _$this._tusId = tusId;

  JsonObject? _tusData;
  JsonObject? get tusData => _$this._tusData;
  set tusData(JsonObject? tusData) => _$this._tusData = tusData;

  DateTime? _uploadedOn;
  DateTime? get uploadedOn => _$this._uploadedOn;
  set uploadedOn(DateTime? uploadedOn) => _$this._uploadedOn = uploadedOn;

  FilesBuilder() {
    Files._defaults(this);
  }

  FilesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _storage = $v.storage;
      _filenameDisk = $v.filenameDisk;
      _filenameDownload = $v.filenameDownload;
      _title = $v.title;
      _type = $v.type;
      _folder = $v.folder?.toBuilder();
      _uploadedBy = $v.uploadedBy?.toBuilder();
      _createdOn = $v.createdOn;
      _modifiedBy = $v.modifiedBy?.toBuilder();
      _modifiedOn = $v.modifiedOn;
      _charset = $v.charset;
      _filesize = $v.filesize;
      _width = $v.width;
      _height = $v.height;
      _duration = $v.duration;
      _embed = $v.embed;
      _description = $v.description;
      _location = $v.location;
      _tags = $v.tags?.toBuilder();
      _metadata = $v.metadata;
      _focalPointX = $v.focalPointX;
      _focalPointY = $v.focalPointY;
      _tusId = $v.tusId;
      _tusData = $v.tusData;
      _uploadedOn = $v.uploadedOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Files other) {
    _$v = other as _$Files;
  }

  @override
  void update(void Function(FilesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Files build() => _build();

  _$Files _build() {
    _$Files _$result;
    try {
      _$result = _$v ??
          _$Files._(
            id: id,
            storage: storage,
            filenameDisk: filenameDisk,
            filenameDownload: filenameDownload,
            title: title,
            type: type,
            folder: _folder?.build(),
            uploadedBy: _uploadedBy?.build(),
            createdOn: createdOn,
            modifiedBy: _modifiedBy?.build(),
            modifiedOn: modifiedOn,
            charset: charset,
            filesize: filesize,
            width: width,
            height: height,
            duration: duration,
            embed: embed,
            description: description,
            location: location,
            tags: _tags?.build(),
            metadata: metadata,
            focalPointX: focalPointX,
            focalPointY: focalPointY,
            tusId: tusId,
            tusData: tusData,
            uploadedOn: uploadedOn,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'folder';
        _folder?.build();
        _$failedField = 'uploadedBy';
        _uploadedBy?.build();

        _$failedField = 'modifiedBy';
        _modifiedBy?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Files', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
