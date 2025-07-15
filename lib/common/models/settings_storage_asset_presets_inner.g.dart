// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_storage_asset_presets_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SettingsStorageAssetPresetsInnerFitEnum
    _$settingsStorageAssetPresetsInnerFitEnum_cover =
    const SettingsStorageAssetPresetsInnerFitEnum._('cover');
const SettingsStorageAssetPresetsInnerFitEnum
    _$settingsStorageAssetPresetsInnerFitEnum_contain =
    const SettingsStorageAssetPresetsInnerFitEnum._('contain');
const SettingsStorageAssetPresetsInnerFitEnum
    _$settingsStorageAssetPresetsInnerFitEnum_inside =
    const SettingsStorageAssetPresetsInnerFitEnum._('inside');
const SettingsStorageAssetPresetsInnerFitEnum
    _$settingsStorageAssetPresetsInnerFitEnum_outside =
    const SettingsStorageAssetPresetsInnerFitEnum._('outside');

SettingsStorageAssetPresetsInnerFitEnum
    _$settingsStorageAssetPresetsInnerFitEnumValueOf(String name) {
  switch (name) {
    case 'cover':
      return _$settingsStorageAssetPresetsInnerFitEnum_cover;
    case 'contain':
      return _$settingsStorageAssetPresetsInnerFitEnum_contain;
    case 'inside':
      return _$settingsStorageAssetPresetsInnerFitEnum_inside;
    case 'outside':
      return _$settingsStorageAssetPresetsInnerFitEnum_outside;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SettingsStorageAssetPresetsInnerFitEnum>
    _$settingsStorageAssetPresetsInnerFitEnumValues = BuiltSet<
        SettingsStorageAssetPresetsInnerFitEnum>(const <SettingsStorageAssetPresetsInnerFitEnum>[
  _$settingsStorageAssetPresetsInnerFitEnum_cover,
  _$settingsStorageAssetPresetsInnerFitEnum_contain,
  _$settingsStorageAssetPresetsInnerFitEnum_inside,
  _$settingsStorageAssetPresetsInnerFitEnum_outside,
]);

const SettingsStorageAssetPresetsInnerFormatEnum
    _$settingsStorageAssetPresetsInnerFormatEnum_empty =
    const SettingsStorageAssetPresetsInnerFormatEnum._('empty');
const SettingsStorageAssetPresetsInnerFormatEnum
    _$settingsStorageAssetPresetsInnerFormatEnum_jpeg =
    const SettingsStorageAssetPresetsInnerFormatEnum._('jpeg');
const SettingsStorageAssetPresetsInnerFormatEnum
    _$settingsStorageAssetPresetsInnerFormatEnum_png =
    const SettingsStorageAssetPresetsInnerFormatEnum._('png');
const SettingsStorageAssetPresetsInnerFormatEnum
    _$settingsStorageAssetPresetsInnerFormatEnum_webp =
    const SettingsStorageAssetPresetsInnerFormatEnum._('webp');
const SettingsStorageAssetPresetsInnerFormatEnum
    _$settingsStorageAssetPresetsInnerFormatEnum_tiff =
    const SettingsStorageAssetPresetsInnerFormatEnum._('tiff');
const SettingsStorageAssetPresetsInnerFormatEnum
    _$settingsStorageAssetPresetsInnerFormatEnum_avif =
    const SettingsStorageAssetPresetsInnerFormatEnum._('avif');

SettingsStorageAssetPresetsInnerFormatEnum
    _$settingsStorageAssetPresetsInnerFormatEnumValueOf(String name) {
  switch (name) {
    case 'empty':
      return _$settingsStorageAssetPresetsInnerFormatEnum_empty;
    case 'jpeg':
      return _$settingsStorageAssetPresetsInnerFormatEnum_jpeg;
    case 'png':
      return _$settingsStorageAssetPresetsInnerFormatEnum_png;
    case 'webp':
      return _$settingsStorageAssetPresetsInnerFormatEnum_webp;
    case 'tiff':
      return _$settingsStorageAssetPresetsInnerFormatEnum_tiff;
    case 'avif':
      return _$settingsStorageAssetPresetsInnerFormatEnum_avif;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SettingsStorageAssetPresetsInnerFormatEnum>
    _$settingsStorageAssetPresetsInnerFormatEnumValues = BuiltSet<
        SettingsStorageAssetPresetsInnerFormatEnum>(const <SettingsStorageAssetPresetsInnerFormatEnum>[
  _$settingsStorageAssetPresetsInnerFormatEnum_empty,
  _$settingsStorageAssetPresetsInnerFormatEnum_jpeg,
  _$settingsStorageAssetPresetsInnerFormatEnum_png,
  _$settingsStorageAssetPresetsInnerFormatEnum_webp,
  _$settingsStorageAssetPresetsInnerFormatEnum_tiff,
  _$settingsStorageAssetPresetsInnerFormatEnum_avif,
]);

Serializer<SettingsStorageAssetPresetsInnerFitEnum>
    _$settingsStorageAssetPresetsInnerFitEnumSerializer =
    _$SettingsStorageAssetPresetsInnerFitEnumSerializer();
Serializer<SettingsStorageAssetPresetsInnerFormatEnum>
    _$settingsStorageAssetPresetsInnerFormatEnumSerializer =
    _$SettingsStorageAssetPresetsInnerFormatEnumSerializer();

class _$SettingsStorageAssetPresetsInnerFitEnumSerializer
    implements PrimitiveSerializer<SettingsStorageAssetPresetsInnerFitEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'cover': 'cover',
    'contain': 'contain',
    'inside': 'inside',
    'outside': 'outside',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'cover': 'cover',
    'contain': 'contain',
    'inside': 'inside',
    'outside': 'outside',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SettingsStorageAssetPresetsInnerFitEnum
  ];
  @override
  final String wireName = 'SettingsStorageAssetPresetsInnerFitEnum';

  @override
  Object serialize(Serializers serializers,
          SettingsStorageAssetPresetsInnerFitEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SettingsStorageAssetPresetsInnerFitEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SettingsStorageAssetPresetsInnerFitEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SettingsStorageAssetPresetsInnerFormatEnumSerializer
    implements PrimitiveSerializer<SettingsStorageAssetPresetsInnerFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'empty': '',
    'jpeg': 'jpeg',
    'png': 'png',
    'webp': 'webp',
    'tiff': 'tiff',
    'avif': 'avif',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '': 'empty',
    'jpeg': 'jpeg',
    'png': 'png',
    'webp': 'webp',
    'tiff': 'tiff',
    'avif': 'avif',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SettingsStorageAssetPresetsInnerFormatEnum
  ];
  @override
  final String wireName = 'SettingsStorageAssetPresetsInnerFormatEnum';

  @override
  Object serialize(Serializers serializers,
          SettingsStorageAssetPresetsInnerFormatEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SettingsStorageAssetPresetsInnerFormatEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SettingsStorageAssetPresetsInnerFormatEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SettingsStorageAssetPresetsInner
    extends SettingsStorageAssetPresetsInner {
  @override
  final String? key;
  @override
  final SettingsStorageAssetPresetsInnerFitEnum? fit;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final bool? withoutEnlargement;
  @override
  final int? quality;
  @override
  final SettingsStorageAssetPresetsInnerFormatEnum? format;
  @override
  final BuiltList<SettingsStorageAssetPresetsInnerTransformsInner>? transforms;

  factory _$SettingsStorageAssetPresetsInner(
          [void Function(SettingsStorageAssetPresetsInnerBuilder)? updates]) =>
      (SettingsStorageAssetPresetsInnerBuilder()..update(updates))._build();

  _$SettingsStorageAssetPresetsInner._(
      {this.key,
      this.fit,
      this.width,
      this.height,
      this.withoutEnlargement,
      this.quality,
      this.format,
      this.transforms})
      : super._();
  @override
  SettingsStorageAssetPresetsInner rebuild(
          void Function(SettingsStorageAssetPresetsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsStorageAssetPresetsInnerBuilder toBuilder() =>
      SettingsStorageAssetPresetsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsStorageAssetPresetsInner &&
        key == other.key &&
        fit == other.fit &&
        width == other.width &&
        height == other.height &&
        withoutEnlargement == other.withoutEnlargement &&
        quality == other.quality &&
        format == other.format &&
        transforms == other.transforms;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, fit.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, withoutEnlargement.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, transforms.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SettingsStorageAssetPresetsInner')
          ..add('key', key)
          ..add('fit', fit)
          ..add('width', width)
          ..add('height', height)
          ..add('withoutEnlargement', withoutEnlargement)
          ..add('quality', quality)
          ..add('format', format)
          ..add('transforms', transforms))
        .toString();
  }
}

class SettingsStorageAssetPresetsInnerBuilder
    implements
        Builder<SettingsStorageAssetPresetsInner,
            SettingsStorageAssetPresetsInnerBuilder> {
  _$SettingsStorageAssetPresetsInner? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  SettingsStorageAssetPresetsInnerFitEnum? _fit;
  SettingsStorageAssetPresetsInnerFitEnum? get fit => _$this._fit;
  set fit(SettingsStorageAssetPresetsInnerFitEnum? fit) => _$this._fit = fit;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  bool? _withoutEnlargement;
  bool? get withoutEnlargement => _$this._withoutEnlargement;
  set withoutEnlargement(bool? withoutEnlargement) =>
      _$this._withoutEnlargement = withoutEnlargement;

  int? _quality;
  int? get quality => _$this._quality;
  set quality(int? quality) => _$this._quality = quality;

  SettingsStorageAssetPresetsInnerFormatEnum? _format;
  SettingsStorageAssetPresetsInnerFormatEnum? get format => _$this._format;
  set format(SettingsStorageAssetPresetsInnerFormatEnum? format) =>
      _$this._format = format;

  ListBuilder<SettingsStorageAssetPresetsInnerTransformsInner>? _transforms;
  ListBuilder<SettingsStorageAssetPresetsInnerTransformsInner> get transforms =>
      _$this._transforms ??=
          ListBuilder<SettingsStorageAssetPresetsInnerTransformsInner>();
  set transforms(
          ListBuilder<SettingsStorageAssetPresetsInnerTransformsInner>?
              transforms) =>
      _$this._transforms = transforms;

  SettingsStorageAssetPresetsInnerBuilder() {
    SettingsStorageAssetPresetsInner._defaults(this);
  }

  SettingsStorageAssetPresetsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _fit = $v.fit;
      _width = $v.width;
      _height = $v.height;
      _withoutEnlargement = $v.withoutEnlargement;
      _quality = $v.quality;
      _format = $v.format;
      _transforms = $v.transforms?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsStorageAssetPresetsInner other) {
    _$v = other as _$SettingsStorageAssetPresetsInner;
  }

  @override
  void update(void Function(SettingsStorageAssetPresetsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SettingsStorageAssetPresetsInner build() => _build();

  _$SettingsStorageAssetPresetsInner _build() {
    _$SettingsStorageAssetPresetsInner _$result;
    try {
      _$result = _$v ??
          _$SettingsStorageAssetPresetsInner._(
            key: key,
            fit: fit,
            width: width,
            height: height,
            withoutEnlargement: withoutEnlargement,
            quality: quality,
            format: format,
            transforms: _transforms?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transforms';
        _transforms?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SettingsStorageAssetPresetsInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
