// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_public_background.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SettingsPublicBackground extends SettingsPublicBackground {
  @override
  final String? id;
  @override
  final String? type;

  factory _$SettingsPublicBackground(
          [void Function(SettingsPublicBackgroundBuilder)? updates]) =>
      (SettingsPublicBackgroundBuilder()..update(updates))._build();

  _$SettingsPublicBackground._({this.id, this.type}) : super._();
  @override
  SettingsPublicBackground rebuild(
          void Function(SettingsPublicBackgroundBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsPublicBackgroundBuilder toBuilder() =>
      SettingsPublicBackgroundBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsPublicBackground &&
        id == other.id &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SettingsPublicBackground')
          ..add('id', id)
          ..add('type', type))
        .toString();
  }
}

class SettingsPublicBackgroundBuilder
    implements
        Builder<SettingsPublicBackground, SettingsPublicBackgroundBuilder> {
  _$SettingsPublicBackground? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  SettingsPublicBackgroundBuilder() {
    SettingsPublicBackground._defaults(this);
  }

  SettingsPublicBackgroundBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsPublicBackground other) {
    _$v = other as _$SettingsPublicBackground;
  }

  @override
  void update(void Function(SettingsPublicBackgroundBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SettingsPublicBackground build() => _build();

  _$SettingsPublicBackground _build() {
    final _$result = _$v ??
        _$SettingsPublicBackground._(
          id: id,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
