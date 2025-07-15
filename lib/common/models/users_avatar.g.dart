// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_avatar.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsersAvatar extends UsersAvatar {
  @override
  final OneOf oneOf;

  factory _$UsersAvatar([void Function(UsersAvatarBuilder)? updates]) =>
      (UsersAvatarBuilder()..update(updates))._build();

  _$UsersAvatar._({required this.oneOf}) : super._();
  @override
  UsersAvatar rebuild(void Function(UsersAvatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersAvatarBuilder toBuilder() => UsersAvatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersAvatar && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'UsersAvatar')..add('oneOf', oneOf))
        .toString();
  }
}

class UsersAvatarBuilder implements Builder<UsersAvatar, UsersAvatarBuilder> {
  _$UsersAvatar? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  UsersAvatarBuilder() {
    UsersAvatar._defaults(this);
  }

  UsersAvatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersAvatar other) {
    _$v = other as _$UsersAvatar;
  }

  @override
  void update(void Function(UsersAvatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersAvatar build() => _build();

  _$UsersAvatar _build() {
    final _$result = _$v ??
        _$UsersAvatar._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'UsersAvatar', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
