// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActivityCollection extends ActivityCollection {
  @override
  final OneOf oneOf;

  factory _$ActivityCollection(
          [void Function(ActivityCollectionBuilder)? updates]) =>
      (ActivityCollectionBuilder()..update(updates))._build();

  _$ActivityCollection._({required this.oneOf}) : super._();
  @override
  ActivityCollection rebuild(
          void Function(ActivityCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityCollectionBuilder toBuilder() =>
      ActivityCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityCollection && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ActivityCollection')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ActivityCollectionBuilder
    implements Builder<ActivityCollection, ActivityCollectionBuilder> {
  _$ActivityCollection? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ActivityCollectionBuilder() {
    ActivityCollection._defaults(this);
  }

  ActivityCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivityCollection other) {
    _$v = other as _$ActivityCollection;
  }

  @override
  void update(void Function(ActivityCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivityCollection build() => _build();

  _$ActivityCollection _build() {
    final _$result = _$v ??
        _$ActivityCollection._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ActivityCollection', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
