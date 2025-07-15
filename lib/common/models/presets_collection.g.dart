// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presets_collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PresetsCollection extends PresetsCollection {
  @override
  final OneOf oneOf;

  factory _$PresetsCollection(
          [void Function(PresetsCollectionBuilder)? updates]) =>
      (PresetsCollectionBuilder()..update(updates))._build();

  _$PresetsCollection._({required this.oneOf}) : super._();
  @override
  PresetsCollection rebuild(void Function(PresetsCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PresetsCollectionBuilder toBuilder() =>
      PresetsCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PresetsCollection && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'PresetsCollection')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class PresetsCollectionBuilder
    implements Builder<PresetsCollection, PresetsCollectionBuilder> {
  _$PresetsCollection? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  PresetsCollectionBuilder() {
    PresetsCollection._defaults(this);
  }

  PresetsCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PresetsCollection other) {
    _$v = other as _$PresetsCollection;
  }

  @override
  void update(void Function(PresetsCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PresetsCollection build() => _build();

  _$PresetsCollection _build() {
    final _$result = _$v ??
        _$PresetsCollection._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'PresetsCollection', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
