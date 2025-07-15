// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SettingsStorageAssetTransformEnum
    _$settingsStorageAssetTransformEnum_all =
    const SettingsStorageAssetTransformEnum._('all');
const SettingsStorageAssetTransformEnum
    _$settingsStorageAssetTransformEnum_none =
    const SettingsStorageAssetTransformEnum._('none');
const SettingsStorageAssetTransformEnum
    _$settingsStorageAssetTransformEnum_presets =
    const SettingsStorageAssetTransformEnum._('presets');

SettingsStorageAssetTransformEnum _$settingsStorageAssetTransformEnumValueOf(
    String name) {
  switch (name) {
    case 'all':
      return _$settingsStorageAssetTransformEnum_all;
    case 'none':
      return _$settingsStorageAssetTransformEnum_none;
    case 'presets':
      return _$settingsStorageAssetTransformEnum_presets;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SettingsStorageAssetTransformEnum>
    _$settingsStorageAssetTransformEnumValues = BuiltSet<
        SettingsStorageAssetTransformEnum>(const <SettingsStorageAssetTransformEnum>[
  _$settingsStorageAssetTransformEnum_all,
  _$settingsStorageAssetTransformEnum_none,
  _$settingsStorageAssetTransformEnum_presets,
]);

Serializer<SettingsStorageAssetTransformEnum>
    _$settingsStorageAssetTransformEnumSerializer =
    _$SettingsStorageAssetTransformEnumSerializer();

class _$SettingsStorageAssetTransformEnumSerializer
    implements PrimitiveSerializer<SettingsStorageAssetTransformEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
    'none': 'none',
    'presets': 'presets',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
    'none': 'none',
    'presets': 'presets',
  };

  @override
  final Iterable<Type> types = const <Type>[SettingsStorageAssetTransformEnum];
  @override
  final String wireName = 'SettingsStorageAssetTransformEnum';

  @override
  Object serialize(
          Serializers serializers, SettingsStorageAssetTransformEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SettingsStorageAssetTransformEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SettingsStorageAssetTransformEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Settings extends Settings {
  @override
  final int? id;
  @override
  final String? projectName;
  @override
  final String? projectUrl;
  @override
  final String? projectColor;
  @override
  final String? projectLogo;
  @override
  final String? publicForeground;
  @override
  final SettingsPublicBackground? publicBackground;
  @override
  final String? publicNote;
  @override
  final int? authLoginAttempts;
  @override
  final String? authPasswordPolicy;
  @override
  final SettingsStorageAssetTransformEnum? storageAssetTransform;
  @override
  final BuiltList<SettingsStorageAssetPresetsInner>? storageAssetPresets;
  @override
  final String? customCss;
  @override
  final String? storageDefaultFolder;
  @override
  final JsonObject? basemaps;
  @override
  final String? mapboxKey;
  @override
  final JsonObject? moduleBar;
  @override
  final String? projectDescriptor;
  @override
  final String? defaultLanguage;
  @override
  final JsonObject? customAspectRatios;
  @override
  final SettingsPublicFavicon? publicFavicon;
  @override
  final String? defaultAppearance;
  @override
  final String? defaultThemeLight;
  @override
  final JsonObject? themeLightOverrides;
  @override
  final String? defaultThemeDark;
  @override
  final JsonObject? themeDarkOverrides;
  @override
  final String? reportErrorUrl;
  @override
  final String? reportBugUrl;
  @override
  final String? reportFeatureUrl;
  @override
  final bool? publicRegistration;
  @override
  final bool? publicRegistrationVerifyEmail;
  @override
  final SettingsPublicRegistrationRole? publicRegistrationRole;
  @override
  final JsonObject? publicRegistrationEmailFilter;

  factory _$Settings([void Function(SettingsBuilder)? updates]) =>
      (SettingsBuilder()..update(updates))._build();

  _$Settings._(
      {this.id,
      this.projectName,
      this.projectUrl,
      this.projectColor,
      this.projectLogo,
      this.publicForeground,
      this.publicBackground,
      this.publicNote,
      this.authLoginAttempts,
      this.authPasswordPolicy,
      this.storageAssetTransform,
      this.storageAssetPresets,
      this.customCss,
      this.storageDefaultFolder,
      this.basemaps,
      this.mapboxKey,
      this.moduleBar,
      this.projectDescriptor,
      this.defaultLanguage,
      this.customAspectRatios,
      this.publicFavicon,
      this.defaultAppearance,
      this.defaultThemeLight,
      this.themeLightOverrides,
      this.defaultThemeDark,
      this.themeDarkOverrides,
      this.reportErrorUrl,
      this.reportBugUrl,
      this.reportFeatureUrl,
      this.publicRegistration,
      this.publicRegistrationVerifyEmail,
      this.publicRegistrationRole,
      this.publicRegistrationEmailFilter})
      : super._();
  @override
  Settings rebuild(void Function(SettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsBuilder toBuilder() => SettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Settings &&
        id == other.id &&
        projectName == other.projectName &&
        projectUrl == other.projectUrl &&
        projectColor == other.projectColor &&
        projectLogo == other.projectLogo &&
        publicForeground == other.publicForeground &&
        publicBackground == other.publicBackground &&
        publicNote == other.publicNote &&
        authLoginAttempts == other.authLoginAttempts &&
        authPasswordPolicy == other.authPasswordPolicy &&
        storageAssetTransform == other.storageAssetTransform &&
        storageAssetPresets == other.storageAssetPresets &&
        customCss == other.customCss &&
        storageDefaultFolder == other.storageDefaultFolder &&
        basemaps == other.basemaps &&
        mapboxKey == other.mapboxKey &&
        moduleBar == other.moduleBar &&
        projectDescriptor == other.projectDescriptor &&
        defaultLanguage == other.defaultLanguage &&
        customAspectRatios == other.customAspectRatios &&
        publicFavicon == other.publicFavicon &&
        defaultAppearance == other.defaultAppearance &&
        defaultThemeLight == other.defaultThemeLight &&
        themeLightOverrides == other.themeLightOverrides &&
        defaultThemeDark == other.defaultThemeDark &&
        themeDarkOverrides == other.themeDarkOverrides &&
        reportErrorUrl == other.reportErrorUrl &&
        reportBugUrl == other.reportBugUrl &&
        reportFeatureUrl == other.reportFeatureUrl &&
        publicRegistration == other.publicRegistration &&
        publicRegistrationVerifyEmail == other.publicRegistrationVerifyEmail &&
        publicRegistrationRole == other.publicRegistrationRole &&
        publicRegistrationEmailFilter == other.publicRegistrationEmailFilter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, projectName.hashCode);
    _$hash = $jc(_$hash, projectUrl.hashCode);
    _$hash = $jc(_$hash, projectColor.hashCode);
    _$hash = $jc(_$hash, projectLogo.hashCode);
    _$hash = $jc(_$hash, publicForeground.hashCode);
    _$hash = $jc(_$hash, publicBackground.hashCode);
    _$hash = $jc(_$hash, publicNote.hashCode);
    _$hash = $jc(_$hash, authLoginAttempts.hashCode);
    _$hash = $jc(_$hash, authPasswordPolicy.hashCode);
    _$hash = $jc(_$hash, storageAssetTransform.hashCode);
    _$hash = $jc(_$hash, storageAssetPresets.hashCode);
    _$hash = $jc(_$hash, customCss.hashCode);
    _$hash = $jc(_$hash, storageDefaultFolder.hashCode);
    _$hash = $jc(_$hash, basemaps.hashCode);
    _$hash = $jc(_$hash, mapboxKey.hashCode);
    _$hash = $jc(_$hash, moduleBar.hashCode);
    _$hash = $jc(_$hash, projectDescriptor.hashCode);
    _$hash = $jc(_$hash, defaultLanguage.hashCode);
    _$hash = $jc(_$hash, customAspectRatios.hashCode);
    _$hash = $jc(_$hash, publicFavicon.hashCode);
    _$hash = $jc(_$hash, defaultAppearance.hashCode);
    _$hash = $jc(_$hash, defaultThemeLight.hashCode);
    _$hash = $jc(_$hash, themeLightOverrides.hashCode);
    _$hash = $jc(_$hash, defaultThemeDark.hashCode);
    _$hash = $jc(_$hash, themeDarkOverrides.hashCode);
    _$hash = $jc(_$hash, reportErrorUrl.hashCode);
    _$hash = $jc(_$hash, reportBugUrl.hashCode);
    _$hash = $jc(_$hash, reportFeatureUrl.hashCode);
    _$hash = $jc(_$hash, publicRegistration.hashCode);
    _$hash = $jc(_$hash, publicRegistrationVerifyEmail.hashCode);
    _$hash = $jc(_$hash, publicRegistrationRole.hashCode);
    _$hash = $jc(_$hash, publicRegistrationEmailFilter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Settings')
          ..add('id', id)
          ..add('projectName', projectName)
          ..add('projectUrl', projectUrl)
          ..add('projectColor', projectColor)
          ..add('projectLogo', projectLogo)
          ..add('publicForeground', publicForeground)
          ..add('publicBackground', publicBackground)
          ..add('publicNote', publicNote)
          ..add('authLoginAttempts', authLoginAttempts)
          ..add('authPasswordPolicy', authPasswordPolicy)
          ..add('storageAssetTransform', storageAssetTransform)
          ..add('storageAssetPresets', storageAssetPresets)
          ..add('customCss', customCss)
          ..add('storageDefaultFolder', storageDefaultFolder)
          ..add('basemaps', basemaps)
          ..add('mapboxKey', mapboxKey)
          ..add('moduleBar', moduleBar)
          ..add('projectDescriptor', projectDescriptor)
          ..add('defaultLanguage', defaultLanguage)
          ..add('customAspectRatios', customAspectRatios)
          ..add('publicFavicon', publicFavicon)
          ..add('defaultAppearance', defaultAppearance)
          ..add('defaultThemeLight', defaultThemeLight)
          ..add('themeLightOverrides', themeLightOverrides)
          ..add('defaultThemeDark', defaultThemeDark)
          ..add('themeDarkOverrides', themeDarkOverrides)
          ..add('reportErrorUrl', reportErrorUrl)
          ..add('reportBugUrl', reportBugUrl)
          ..add('reportFeatureUrl', reportFeatureUrl)
          ..add('publicRegistration', publicRegistration)
          ..add('publicRegistrationVerifyEmail', publicRegistrationVerifyEmail)
          ..add('publicRegistrationRole', publicRegistrationRole)
          ..add('publicRegistrationEmailFilter', publicRegistrationEmailFilter))
        .toString();
  }
}

class SettingsBuilder implements Builder<Settings, SettingsBuilder> {
  _$Settings? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _projectName;
  String? get projectName => _$this._projectName;
  set projectName(String? projectName) => _$this._projectName = projectName;

  String? _projectUrl;
  String? get projectUrl => _$this._projectUrl;
  set projectUrl(String? projectUrl) => _$this._projectUrl = projectUrl;

  String? _projectColor;
  String? get projectColor => _$this._projectColor;
  set projectColor(String? projectColor) => _$this._projectColor = projectColor;

  String? _projectLogo;
  String? get projectLogo => _$this._projectLogo;
  set projectLogo(String? projectLogo) => _$this._projectLogo = projectLogo;

  String? _publicForeground;
  String? get publicForeground => _$this._publicForeground;
  set publicForeground(String? publicForeground) =>
      _$this._publicForeground = publicForeground;

  SettingsPublicBackgroundBuilder? _publicBackground;
  SettingsPublicBackgroundBuilder get publicBackground =>
      _$this._publicBackground ??= SettingsPublicBackgroundBuilder();
  set publicBackground(SettingsPublicBackgroundBuilder? publicBackground) =>
      _$this._publicBackground = publicBackground;

  String? _publicNote;
  String? get publicNote => _$this._publicNote;
  set publicNote(String? publicNote) => _$this._publicNote = publicNote;

  int? _authLoginAttempts;
  int? get authLoginAttempts => _$this._authLoginAttempts;
  set authLoginAttempts(int? authLoginAttempts) =>
      _$this._authLoginAttempts = authLoginAttempts;

  String? _authPasswordPolicy;
  String? get authPasswordPolicy => _$this._authPasswordPolicy;
  set authPasswordPolicy(String? authPasswordPolicy) =>
      _$this._authPasswordPolicy = authPasswordPolicy;

  SettingsStorageAssetTransformEnum? _storageAssetTransform;
  SettingsStorageAssetTransformEnum? get storageAssetTransform =>
      _$this._storageAssetTransform;
  set storageAssetTransform(
          SettingsStorageAssetTransformEnum? storageAssetTransform) =>
      _$this._storageAssetTransform = storageAssetTransform;

  ListBuilder<SettingsStorageAssetPresetsInner>? _storageAssetPresets;
  ListBuilder<SettingsStorageAssetPresetsInner> get storageAssetPresets =>
      _$this._storageAssetPresets ??=
          ListBuilder<SettingsStorageAssetPresetsInner>();
  set storageAssetPresets(
          ListBuilder<SettingsStorageAssetPresetsInner>? storageAssetPresets) =>
      _$this._storageAssetPresets = storageAssetPresets;

  String? _customCss;
  String? get customCss => _$this._customCss;
  set customCss(String? customCss) => _$this._customCss = customCss;

  String? _storageDefaultFolder;
  String? get storageDefaultFolder => _$this._storageDefaultFolder;
  set storageDefaultFolder(String? storageDefaultFolder) =>
      _$this._storageDefaultFolder = storageDefaultFolder;

  JsonObject? _basemaps;
  JsonObject? get basemaps => _$this._basemaps;
  set basemaps(JsonObject? basemaps) => _$this._basemaps = basemaps;

  String? _mapboxKey;
  String? get mapboxKey => _$this._mapboxKey;
  set mapboxKey(String? mapboxKey) => _$this._mapboxKey = mapboxKey;

  JsonObject? _moduleBar;
  JsonObject? get moduleBar => _$this._moduleBar;
  set moduleBar(JsonObject? moduleBar) => _$this._moduleBar = moduleBar;

  String? _projectDescriptor;
  String? get projectDescriptor => _$this._projectDescriptor;
  set projectDescriptor(String? projectDescriptor) =>
      _$this._projectDescriptor = projectDescriptor;

  String? _defaultLanguage;
  String? get defaultLanguage => _$this._defaultLanguage;
  set defaultLanguage(String? defaultLanguage) =>
      _$this._defaultLanguage = defaultLanguage;

  JsonObject? _customAspectRatios;
  JsonObject? get customAspectRatios => _$this._customAspectRatios;
  set customAspectRatios(JsonObject? customAspectRatios) =>
      _$this._customAspectRatios = customAspectRatios;

  SettingsPublicFaviconBuilder? _publicFavicon;
  SettingsPublicFaviconBuilder get publicFavicon =>
      _$this._publicFavicon ??= SettingsPublicFaviconBuilder();
  set publicFavicon(SettingsPublicFaviconBuilder? publicFavicon) =>
      _$this._publicFavicon = publicFavicon;

  String? _defaultAppearance;
  String? get defaultAppearance => _$this._defaultAppearance;
  set defaultAppearance(String? defaultAppearance) =>
      _$this._defaultAppearance = defaultAppearance;

  String? _defaultThemeLight;
  String? get defaultThemeLight => _$this._defaultThemeLight;
  set defaultThemeLight(String? defaultThemeLight) =>
      _$this._defaultThemeLight = defaultThemeLight;

  JsonObject? _themeLightOverrides;
  JsonObject? get themeLightOverrides => _$this._themeLightOverrides;
  set themeLightOverrides(JsonObject? themeLightOverrides) =>
      _$this._themeLightOverrides = themeLightOverrides;

  String? _defaultThemeDark;
  String? get defaultThemeDark => _$this._defaultThemeDark;
  set defaultThemeDark(String? defaultThemeDark) =>
      _$this._defaultThemeDark = defaultThemeDark;

  JsonObject? _themeDarkOverrides;
  JsonObject? get themeDarkOverrides => _$this._themeDarkOverrides;
  set themeDarkOverrides(JsonObject? themeDarkOverrides) =>
      _$this._themeDarkOverrides = themeDarkOverrides;

  String? _reportErrorUrl;
  String? get reportErrorUrl => _$this._reportErrorUrl;
  set reportErrorUrl(String? reportErrorUrl) =>
      _$this._reportErrorUrl = reportErrorUrl;

  String? _reportBugUrl;
  String? get reportBugUrl => _$this._reportBugUrl;
  set reportBugUrl(String? reportBugUrl) => _$this._reportBugUrl = reportBugUrl;

  String? _reportFeatureUrl;
  String? get reportFeatureUrl => _$this._reportFeatureUrl;
  set reportFeatureUrl(String? reportFeatureUrl) =>
      _$this._reportFeatureUrl = reportFeatureUrl;

  bool? _publicRegistration;
  bool? get publicRegistration => _$this._publicRegistration;
  set publicRegistration(bool? publicRegistration) =>
      _$this._publicRegistration = publicRegistration;

  bool? _publicRegistrationVerifyEmail;
  bool? get publicRegistrationVerifyEmail =>
      _$this._publicRegistrationVerifyEmail;
  set publicRegistrationVerifyEmail(bool? publicRegistrationVerifyEmail) =>
      _$this._publicRegistrationVerifyEmail = publicRegistrationVerifyEmail;

  SettingsPublicRegistrationRoleBuilder? _publicRegistrationRole;
  SettingsPublicRegistrationRoleBuilder get publicRegistrationRole =>
      _$this._publicRegistrationRole ??=
          SettingsPublicRegistrationRoleBuilder();
  set publicRegistrationRole(
          SettingsPublicRegistrationRoleBuilder? publicRegistrationRole) =>
      _$this._publicRegistrationRole = publicRegistrationRole;

  JsonObject? _publicRegistrationEmailFilter;
  JsonObject? get publicRegistrationEmailFilter =>
      _$this._publicRegistrationEmailFilter;
  set publicRegistrationEmailFilter(
          JsonObject? publicRegistrationEmailFilter) =>
      _$this._publicRegistrationEmailFilter = publicRegistrationEmailFilter;

  SettingsBuilder() {
    Settings._defaults(this);
  }

  SettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _projectName = $v.projectName;
      _projectUrl = $v.projectUrl;
      _projectColor = $v.projectColor;
      _projectLogo = $v.projectLogo;
      _publicForeground = $v.publicForeground;
      _publicBackground = $v.publicBackground?.toBuilder();
      _publicNote = $v.publicNote;
      _authLoginAttempts = $v.authLoginAttempts;
      _authPasswordPolicy = $v.authPasswordPolicy;
      _storageAssetTransform = $v.storageAssetTransform;
      _storageAssetPresets = $v.storageAssetPresets?.toBuilder();
      _customCss = $v.customCss;
      _storageDefaultFolder = $v.storageDefaultFolder;
      _basemaps = $v.basemaps;
      _mapboxKey = $v.mapboxKey;
      _moduleBar = $v.moduleBar;
      _projectDescriptor = $v.projectDescriptor;
      _defaultLanguage = $v.defaultLanguage;
      _customAspectRatios = $v.customAspectRatios;
      _publicFavicon = $v.publicFavicon?.toBuilder();
      _defaultAppearance = $v.defaultAppearance;
      _defaultThemeLight = $v.defaultThemeLight;
      _themeLightOverrides = $v.themeLightOverrides;
      _defaultThemeDark = $v.defaultThemeDark;
      _themeDarkOverrides = $v.themeDarkOverrides;
      _reportErrorUrl = $v.reportErrorUrl;
      _reportBugUrl = $v.reportBugUrl;
      _reportFeatureUrl = $v.reportFeatureUrl;
      _publicRegistration = $v.publicRegistration;
      _publicRegistrationVerifyEmail = $v.publicRegistrationVerifyEmail;
      _publicRegistrationRole = $v.publicRegistrationRole?.toBuilder();
      _publicRegistrationEmailFilter = $v.publicRegistrationEmailFilter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Settings other) {
    _$v = other as _$Settings;
  }

  @override
  void update(void Function(SettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Settings build() => _build();

  _$Settings _build() {
    _$Settings _$result;
    try {
      _$result = _$v ??
          _$Settings._(
            id: id,
            projectName: projectName,
            projectUrl: projectUrl,
            projectColor: projectColor,
            projectLogo: projectLogo,
            publicForeground: publicForeground,
            publicBackground: _publicBackground?.build(),
            publicNote: publicNote,
            authLoginAttempts: authLoginAttempts,
            authPasswordPolicy: authPasswordPolicy,
            storageAssetTransform: storageAssetTransform,
            storageAssetPresets: _storageAssetPresets?.build(),
            customCss: customCss,
            storageDefaultFolder: storageDefaultFolder,
            basemaps: basemaps,
            mapboxKey: mapboxKey,
            moduleBar: moduleBar,
            projectDescriptor: projectDescriptor,
            defaultLanguage: defaultLanguage,
            customAspectRatios: customAspectRatios,
            publicFavicon: _publicFavicon?.build(),
            defaultAppearance: defaultAppearance,
            defaultThemeLight: defaultThemeLight,
            themeLightOverrides: themeLightOverrides,
            defaultThemeDark: defaultThemeDark,
            themeDarkOverrides: themeDarkOverrides,
            reportErrorUrl: reportErrorUrl,
            reportBugUrl: reportBugUrl,
            reportFeatureUrl: reportFeatureUrl,
            publicRegistration: publicRegistration,
            publicRegistrationVerifyEmail: publicRegistrationVerifyEmail,
            publicRegistrationRole: _publicRegistrationRole?.build(),
            publicRegistrationEmailFilter: publicRegistrationEmailFilter,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'publicBackground';
        _publicBackground?.build();

        _$failedField = 'storageAssetPresets';
        _storageAssetPresets?.build();

        _$failedField = 'publicFavicon';
        _publicFavicon?.build();

        _$failedField = 'publicRegistrationRole';
        _publicRegistrationRole?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Settings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
