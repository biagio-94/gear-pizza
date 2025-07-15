// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_public_favicon.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SettingsPublicFavicon extends SettingsPublicFavicon {
  @override
  final OneOf oneOf;

  factory _$SettingsPublicFavicon(
          [void Function(SettingsPublicFaviconBuilder)? updates]) =>
      (SettingsPublicFaviconBuilder()..update(updates))._build();

  _$SettingsPublicFavicon._({required this.oneOf}) : super._();
  @override
  SettingsPublicFavicon rebuild(
          void Function(SettingsPublicFaviconBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsPublicFaviconBuilder toBuilder() =>
      SettingsPublicFaviconBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsPublicFavicon && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'SettingsPublicFavicon')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class SettingsPublicFaviconBuilder
    implements Builder<SettingsPublicFavicon, SettingsPublicFaviconBuilder> {
  _$SettingsPublicFavicon? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  SettingsPublicFaviconBuilder() {
    SettingsPublicFavicon._defaults(this);
  }

  SettingsPublicFaviconBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsPublicFavicon other) {
    _$v = other as _$SettingsPublicFavicon;
  }

  @override
  void update(void Function(SettingsPublicFaviconBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SettingsPublicFavicon build() => _build();

  _$SettingsPublicFavicon _build() {
    final _$result = _$v ??
        _$SettingsPublicFavicon._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'SettingsPublicFavicon', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
