// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files_folder.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilesFolder extends FilesFolder {
  @override
  final OneOf oneOf;

  factory _$FilesFolder([void Function(FilesFolderBuilder)? updates]) =>
      (FilesFolderBuilder()..update(updates))._build();

  _$FilesFolder._({required this.oneOf}) : super._();
  @override
  FilesFolder rebuild(void Function(FilesFolderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilesFolderBuilder toBuilder() => FilesFolderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilesFolder && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilesFolder')..add('oneOf', oneOf))
        .toString();
  }
}

class FilesFolderBuilder implements Builder<FilesFolder, FilesFolderBuilder> {
  _$FilesFolder? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  FilesFolderBuilder() {
    FilesFolder._defaults(this);
  }

  FilesFolderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilesFolder other) {
    _$v = other as _$FilesFolder;
  }

  @override
  void update(void Function(FilesFolderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilesFolder build() => _build();

  _$FilesFolder _build() {
    final _$result = _$v ??
        _$FilesFolder._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'FilesFolder', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
