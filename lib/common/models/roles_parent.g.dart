// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_parent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RolesParent extends RolesParent {
  @override
  final OneOf oneOf;

  factory _$RolesParent([void Function(RolesParentBuilder)? updates]) =>
      (RolesParentBuilder()..update(updates))._build();

  _$RolesParent._({required this.oneOf}) : super._();
  @override
  RolesParent rebuild(void Function(RolesParentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RolesParentBuilder toBuilder() => RolesParentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RolesParent && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'RolesParent')..add('oneOf', oneOf))
        .toString();
  }
}

class RolesParentBuilder implements Builder<RolesParent, RolesParentBuilder> {
  _$RolesParent? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  RolesParentBuilder() {
    RolesParent._defaults(this);
  }

  RolesParentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RolesParent other) {
    _$v = other as _$RolesParent;
  }

  @override
  void update(void Function(RolesParentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RolesParent build() => _build();

  _$RolesParent _build() {
    final _$result = _$v ??
        _$RolesParent._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'RolesParent', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
