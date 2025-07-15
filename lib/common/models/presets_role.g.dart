// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presets_role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PresetsRole extends PresetsRole {
  @override
  final OneOf oneOf;

  factory _$PresetsRole([void Function(PresetsRoleBuilder)? updates]) =>
      (PresetsRoleBuilder()..update(updates))._build();

  _$PresetsRole._({required this.oneOf}) : super._();
  @override
  PresetsRole rebuild(void Function(PresetsRoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PresetsRoleBuilder toBuilder() => PresetsRoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PresetsRole && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'PresetsRole')..add('oneOf', oneOf))
        .toString();
  }
}

class PresetsRoleBuilder implements Builder<PresetsRole, PresetsRoleBuilder> {
  _$PresetsRole? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  PresetsRoleBuilder() {
    PresetsRole._defaults(this);
  }

  PresetsRoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PresetsRole other) {
    _$v = other as _$PresetsRole;
  }

  @override
  void update(void Function(PresetsRoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PresetsRole build() => _build();

  _$PresetsRole _build() {
    final _$result = _$v ??
        _$PresetsRole._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'PresetsRole', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
