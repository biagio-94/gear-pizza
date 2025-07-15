// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_storage_asset_presets_inner_transforms_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SettingsStorageAssetPresetsInnerTransformsInner
    extends SettingsStorageAssetPresetsInnerTransformsInner {
  @override
  final String? method;
  @override
  final BuiltList<
      SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner>? arguments;

  factory _$SettingsStorageAssetPresetsInnerTransformsInner(
          [void Function(
                  SettingsStorageAssetPresetsInnerTransformsInnerBuilder)?
              updates]) =>
      (SettingsStorageAssetPresetsInnerTransformsInnerBuilder()
            ..update(updates))
          ._build();

  _$SettingsStorageAssetPresetsInnerTransformsInner._(
      {this.method, this.arguments})
      : super._();
  @override
  SettingsStorageAssetPresetsInnerTransformsInner rebuild(
          void Function(SettingsStorageAssetPresetsInnerTransformsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsStorageAssetPresetsInnerTransformsInnerBuilder toBuilder() =>
      SettingsStorageAssetPresetsInnerTransformsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsStorageAssetPresetsInnerTransformsInner &&
        method == other.method &&
        arguments == other.arguments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SettingsStorageAssetPresetsInnerTransformsInner')
          ..add('method', method)
          ..add('arguments', arguments))
        .toString();
  }
}

class SettingsStorageAssetPresetsInnerTransformsInnerBuilder
    implements
        Builder<SettingsStorageAssetPresetsInnerTransformsInner,
            SettingsStorageAssetPresetsInnerTransformsInnerBuilder> {
  _$SettingsStorageAssetPresetsInnerTransformsInner? _$v;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  ListBuilder<SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner>?
      _arguments;
  ListBuilder<SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner>
      get arguments => _$this._arguments ??= ListBuilder<
          SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner>();
  set arguments(
          ListBuilder<
                  SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner>?
              arguments) =>
      _$this._arguments = arguments;

  SettingsStorageAssetPresetsInnerTransformsInnerBuilder() {
    SettingsStorageAssetPresetsInnerTransformsInner._defaults(this);
  }

  SettingsStorageAssetPresetsInnerTransformsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _method = $v.method;
      _arguments = $v.arguments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsStorageAssetPresetsInnerTransformsInner other) {
    _$v = other as _$SettingsStorageAssetPresetsInnerTransformsInner;
  }

  @override
  void update(
      void Function(SettingsStorageAssetPresetsInnerTransformsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SettingsStorageAssetPresetsInnerTransformsInner build() => _build();

  _$SettingsStorageAssetPresetsInnerTransformsInner _build() {
    _$SettingsStorageAssetPresetsInnerTransformsInner _$result;
    try {
      _$result = _$v ??
          _$SettingsStorageAssetPresetsInnerTransformsInner._(
            method: method,
            arguments: _arguments?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'arguments';
        _arguments?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SettingsStorageAssetPresetsInnerTransformsInner',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
