// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollectionsGroup extends CollectionsGroup {
  @override
  final OneOf oneOf;

  factory _$CollectionsGroup(
          [void Function(CollectionsGroupBuilder)? updates]) =>
      (CollectionsGroupBuilder()..update(updates))._build();

  _$CollectionsGroup._({required this.oneOf}) : super._();
  @override
  CollectionsGroup rebuild(void Function(CollectionsGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionsGroupBuilder toBuilder() =>
      CollectionsGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionsGroup && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'CollectionsGroup')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CollectionsGroupBuilder
    implements Builder<CollectionsGroup, CollectionsGroupBuilder> {
  _$CollectionsGroup? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CollectionsGroupBuilder() {
    CollectionsGroup._defaults(this);
  }

  CollectionsGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionsGroup other) {
    _$v = other as _$CollectionsGroup;
  }

  @override
  void update(void Function(CollectionsGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionsGroup build() => _build();

  _$CollectionsGroup _build() {
    final _$result = _$v ??
        _$CollectionsGroup._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CollectionsGroup', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
