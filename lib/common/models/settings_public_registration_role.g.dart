// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_public_registration_role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SettingsPublicRegistrationRole extends SettingsPublicRegistrationRole {
  @override
  final OneOf oneOf;

  factory _$SettingsPublicRegistrationRole(
          [void Function(SettingsPublicRegistrationRoleBuilder)? updates]) =>
      (SettingsPublicRegistrationRoleBuilder()..update(updates))._build();

  _$SettingsPublicRegistrationRole._({required this.oneOf}) : super._();
  @override
  SettingsPublicRegistrationRole rebuild(
          void Function(SettingsPublicRegistrationRoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsPublicRegistrationRoleBuilder toBuilder() =>
      SettingsPublicRegistrationRoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsPublicRegistrationRole && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'SettingsPublicRegistrationRole')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class SettingsPublicRegistrationRoleBuilder
    implements
        Builder<SettingsPublicRegistrationRole,
            SettingsPublicRegistrationRoleBuilder> {
  _$SettingsPublicRegistrationRole? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  SettingsPublicRegistrationRoleBuilder() {
    SettingsPublicRegistrationRole._defaults(this);
  }

  SettingsPublicRegistrationRoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsPublicRegistrationRole other) {
    _$v = other as _$SettingsPublicRegistrationRole;
  }

  @override
  void update(void Function(SettingsPublicRegistrationRoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SettingsPublicRegistrationRole build() => _build();

  _$SettingsPublicRegistrationRole _build() {
    final _$result = _$v ??
        _$SettingsPublicRegistrationRole._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'SettingsPublicRegistrationRole', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
