// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_children_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RolesChildrenInner extends RolesChildrenInner {
  @override
  final OneOf oneOf;

  factory _$RolesChildrenInner(
          [void Function(RolesChildrenInnerBuilder)? updates]) =>
      (RolesChildrenInnerBuilder()..update(updates))._build();

  _$RolesChildrenInner._({required this.oneOf}) : super._();
  @override
  RolesChildrenInner rebuild(
          void Function(RolesChildrenInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RolesChildrenInnerBuilder toBuilder() =>
      RolesChildrenInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RolesChildrenInner && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'RolesChildrenInner')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class RolesChildrenInnerBuilder
    implements Builder<RolesChildrenInner, RolesChildrenInnerBuilder> {
  _$RolesChildrenInner? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  RolesChildrenInnerBuilder() {
    RolesChildrenInner._defaults(this);
  }

  RolesChildrenInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RolesChildrenInner other) {
    _$v = other as _$RolesChildrenInner;
  }

  @override
  void update(void Function(RolesChildrenInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RolesChildrenInner build() => _build();

  _$RolesChildrenInner _build() {
    final _$result = _$v ??
        _$RolesChildrenInner._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'RolesChildrenInner', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
