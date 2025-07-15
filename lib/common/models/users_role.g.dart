// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsersRole extends UsersRole {
  @override
  final OneOf oneOf;

  factory _$UsersRole([void Function(UsersRoleBuilder)? updates]) =>
      (UsersRoleBuilder()..update(updates))._build();

  _$UsersRole._({required this.oneOf}) : super._();
  @override
  UsersRole rebuild(void Function(UsersRoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRoleBuilder toBuilder() => UsersRoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRole && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'UsersRole')..add('oneOf', oneOf))
        .toString();
  }
}

class UsersRoleBuilder implements Builder<UsersRole, UsersRoleBuilder> {
  _$UsersRole? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  UsersRoleBuilder() {
    UsersRole._defaults(this);
  }

  UsersRoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRole other) {
    _$v = other as _$UsersRole;
  }

  @override
  void update(void Function(UsersRoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRole build() => _build();

  _$UsersRole _build() {
    final _$result = _$v ??
        _$UsersRole._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'UsersRole', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
