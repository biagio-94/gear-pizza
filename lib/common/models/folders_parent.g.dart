// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folders_parent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FoldersParent extends FoldersParent {
  @override
  final OneOf oneOf;

  factory _$FoldersParent([void Function(FoldersParentBuilder)? updates]) =>
      (FoldersParentBuilder()..update(updates))._build();

  _$FoldersParent._({required this.oneOf}) : super._();
  @override
  FoldersParent rebuild(void Function(FoldersParentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoldersParentBuilder toBuilder() => FoldersParentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoldersParent && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'FoldersParent')..add('oneOf', oneOf))
        .toString();
  }
}

class FoldersParentBuilder
    implements Builder<FoldersParent, FoldersParentBuilder> {
  _$FoldersParent? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  FoldersParentBuilder() {
    FoldersParent._defaults(this);
  }

  FoldersParentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoldersParent other) {
    _$v = other as _$FoldersParent;
  }

  @override
  void update(void Function(FoldersParentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FoldersParent build() => _build();

  _$FoldersParent _build() {
    final _$result = _$v ??
        _$FoldersParent._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'FoldersParent', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
