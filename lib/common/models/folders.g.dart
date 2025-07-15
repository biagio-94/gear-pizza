// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folders.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Folders extends Folders {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final FoldersParent? parent;

  factory _$Folders([void Function(FoldersBuilder)? updates]) =>
      (FoldersBuilder()..update(updates))._build();

  _$Folders._({this.id, this.name, this.parent}) : super._();
  @override
  Folders rebuild(void Function(FoldersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoldersBuilder toBuilder() => FoldersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Folders &&
        id == other.id &&
        name == other.name &&
        parent == other.parent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, parent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Folders')
          ..add('id', id)
          ..add('name', name)
          ..add('parent', parent))
        .toString();
  }
}

class FoldersBuilder implements Builder<Folders, FoldersBuilder> {
  _$Folders? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  FoldersParentBuilder? _parent;
  FoldersParentBuilder get parent => _$this._parent ??= FoldersParentBuilder();
  set parent(FoldersParentBuilder? parent) => _$this._parent = parent;

  FoldersBuilder() {
    Folders._defaults(this);
  }

  FoldersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _parent = $v.parent?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Folders other) {
    _$v = other as _$Folders;
  }

  @override
  void update(void Function(FoldersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Folders build() => _build();

  _$Folders _build() {
    _$Folders _$result;
    try {
      _$result = _$v ??
          _$Folders._(
            id: id,
            name: name,
            parent: _parent?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parent';
        _parent?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Folders', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
