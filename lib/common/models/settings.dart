//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/settings_public_favicon.dart';
import 'package:gearpizza/common/models/settings_storage_asset_presets_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/settings_public_registration_role.dart';
import 'package:built_value/json_object.dart';
import 'package:gearpizza/common/models/settings_public_background.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'settings.g.dart';

/// Settings
///
/// Properties:
/// * [id] - Unique identifier for the setting.
/// * [projectName] - The name of the project.
/// * [projectUrl] - The url of the project.
/// * [projectColor] - The brand color of the project.
/// * [projectLogo] - The logo of the project.
/// * [publicForeground] - The foreground of the project.
/// * [publicBackground]
/// * [publicNote] - Note rendered on the public pages of the app.
/// * [authLoginAttempts] - Allowed authentication login attempts before the user's status is set to blocked.
/// * [authPasswordPolicy] - Authentication password policy.
/// * [storageAssetTransform] - What transformations are allowed in the assets endpoint.
/// * [storageAssetPresets] - Array of allowed
/// * [customCss]
/// * [storageDefaultFolder] - Default folder to place files
/// * [basemaps]
/// * [mapboxKey]
/// * [moduleBar]
/// * [projectDescriptor]
/// * [defaultLanguage]
/// * [customAspectRatios]
/// * [publicFavicon]
/// * [defaultAppearance]
/// * [defaultThemeLight]
/// * [themeLightOverrides]
/// * [defaultThemeDark]
/// * [themeDarkOverrides]
/// * [reportErrorUrl]
/// * [reportBugUrl]
/// * [reportFeatureUrl]
/// * [publicRegistration] - $t:fields.directus_settings.public_registration_note
/// * [publicRegistrationVerifyEmail] - $t:fields.directus_settings.public_registration_verify_email_note
/// * [publicRegistrationRole]
/// * [publicRegistrationEmailFilter] - $t:fields.directus_settings.public_registration_email_filter_note
@BuiltValue()
abstract class Settings implements Built<Settings, SettingsBuilder> {
  /// Unique identifier for the setting.
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// The name of the project.
  @BuiltValueField(wireName: r'project_name')
  String? get projectName;

  /// The url of the project.
  @BuiltValueField(wireName: r'project_url')
  String? get projectUrl;

  /// The brand color of the project.
  @BuiltValueField(wireName: r'project_color')
  String? get projectColor;

  /// The logo of the project.
  @BuiltValueField(wireName: r'project_logo')
  String? get projectLogo;

  /// The foreground of the project.
  @BuiltValueField(wireName: r'public_foreground')
  String? get publicForeground;

  @BuiltValueField(wireName: r'public_background')
  SettingsPublicBackground? get publicBackground;

  /// Note rendered on the public pages of the app.
  @BuiltValueField(wireName: r'public_note')
  String? get publicNote;

  /// Allowed authentication login attempts before the user's status is set to blocked.
  @BuiltValueField(wireName: r'auth_login_attempts')
  int? get authLoginAttempts;

  /// Authentication password policy.
  @BuiltValueField(wireName: r'auth_password_policy')
  String? get authPasswordPolicy;

  /// What transformations are allowed in the assets endpoint.
  @BuiltValueField(wireName: r'storage_asset_transform')
  SettingsStorageAssetTransformEnum? get storageAssetTransform;
  // enum storageAssetTransformEnum {  all,  none,  presets,  };

  /// Array of allowed
  @BuiltValueField(wireName: r'storage_asset_presets')
  BuiltList<SettingsStorageAssetPresetsInner>? get storageAssetPresets;

  @BuiltValueField(wireName: r'custom_css')
  String? get customCss;

  /// Default folder to place files
  @BuiltValueField(wireName: r'storage_default_folder')
  String? get storageDefaultFolder;

  @BuiltValueField(wireName: r'basemaps')
  JsonObject? get basemaps;

  @BuiltValueField(wireName: r'mapbox_key')
  String? get mapboxKey;

  @BuiltValueField(wireName: r'module_bar')
  JsonObject? get moduleBar;

  @BuiltValueField(wireName: r'project_descriptor')
  String? get projectDescriptor;

  @BuiltValueField(wireName: r'default_language')
  String? get defaultLanguage;

  @BuiltValueField(wireName: r'custom_aspect_ratios')
  JsonObject? get customAspectRatios;

  @BuiltValueField(wireName: r'public_favicon')
  SettingsPublicFavicon? get publicFavicon;

  @BuiltValueField(wireName: r'default_appearance')
  String? get defaultAppearance;

  @BuiltValueField(wireName: r'default_theme_light')
  String? get defaultThemeLight;

  @BuiltValueField(wireName: r'theme_light_overrides')
  JsonObject? get themeLightOverrides;

  @BuiltValueField(wireName: r'default_theme_dark')
  String? get defaultThemeDark;

  @BuiltValueField(wireName: r'theme_dark_overrides')
  JsonObject? get themeDarkOverrides;

  @BuiltValueField(wireName: r'report_error_url')
  String? get reportErrorUrl;

  @BuiltValueField(wireName: r'report_bug_url')
  String? get reportBugUrl;

  @BuiltValueField(wireName: r'report_feature_url')
  String? get reportFeatureUrl;

  /// $t:fields.directus_settings.public_registration_note
  @BuiltValueField(wireName: r'public_registration')
  bool? get publicRegistration;

  /// $t:fields.directus_settings.public_registration_verify_email_note
  @BuiltValueField(wireName: r'public_registration_verify_email')
  bool? get publicRegistrationVerifyEmail;

  @BuiltValueField(wireName: r'public_registration_role')
  SettingsPublicRegistrationRole? get publicRegistrationRole;

  /// $t:fields.directus_settings.public_registration_email_filter_note
  @BuiltValueField(wireName: r'public_registration_email_filter')
  JsonObject? get publicRegistrationEmailFilter;

  Settings._();

  factory Settings([void updates(SettingsBuilder b)]) = _$Settings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Settings> get serializer => _$SettingsSerializer();
}

class _$SettingsSerializer implements PrimitiveSerializer<Settings> {
  @override
  final Iterable<Type> types = const [Settings, _$Settings];

  @override
  final String wireName = r'Settings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Settings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.projectName != null) {
      yield r'project_name';
      yield serializers.serialize(
        object.projectName,
        specifiedType: const FullType(String),
      );
    }
    if (object.projectUrl != null) {
      yield r'project_url';
      yield serializers.serialize(
        object.projectUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.projectColor != null) {
      yield r'project_color';
      yield serializers.serialize(
        object.projectColor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.projectLogo != null) {
      yield r'project_logo';
      yield serializers.serialize(
        object.projectLogo,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.publicForeground != null) {
      yield r'public_foreground';
      yield serializers.serialize(
        object.publicForeground,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.publicBackground != null) {
      yield r'public_background';
      yield serializers.serialize(
        object.publicBackground,
        specifiedType: const FullType.nullable(SettingsPublicBackground),
      );
    }
    if (object.publicNote != null) {
      yield r'public_note';
      yield serializers.serialize(
        object.publicNote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.authLoginAttempts != null) {
      yield r'auth_login_attempts';
      yield serializers.serialize(
        object.authLoginAttempts,
        specifiedType: const FullType(int),
      );
    }
    if (object.authPasswordPolicy != null) {
      yield r'auth_password_policy';
      yield serializers.serialize(
        object.authPasswordPolicy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.storageAssetTransform != null) {
      yield r'storage_asset_transform';
      yield serializers.serialize(
        object.storageAssetTransform,
        specifiedType:
            const FullType.nullable(SettingsStorageAssetTransformEnum),
      );
    }
    if (object.storageAssetPresets != null) {
      yield r'storage_asset_presets';
      yield serializers.serialize(
        object.storageAssetPresets,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(SettingsStorageAssetPresetsInner)]),
      );
    }
    if (object.customCss != null) {
      yield r'custom_css';
      yield serializers.serialize(
        object.customCss,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.storageDefaultFolder != null) {
      yield r'storage_default_folder';
      yield serializers.serialize(
        object.storageDefaultFolder,
        specifiedType: const FullType(String),
      );
    }
    if (object.basemaps != null) {
      yield r'basemaps';
      yield serializers.serialize(
        object.basemaps,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.mapboxKey != null) {
      yield r'mapbox_key';
      yield serializers.serialize(
        object.mapboxKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.moduleBar != null) {
      yield r'module_bar';
      yield serializers.serialize(
        object.moduleBar,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.projectDescriptor != null) {
      yield r'project_descriptor';
      yield serializers.serialize(
        object.projectDescriptor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.defaultLanguage != null) {
      yield r'default_language';
      yield serializers.serialize(
        object.defaultLanguage,
        specifiedType: const FullType(String),
      );
    }
    if (object.customAspectRatios != null) {
      yield r'custom_aspect_ratios';
      yield serializers.serialize(
        object.customAspectRatios,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.publicFavicon != null) {
      yield r'public_favicon';
      yield serializers.serialize(
        object.publicFavicon,
        specifiedType: const FullType.nullable(SettingsPublicFavicon),
      );
    }
    if (object.defaultAppearance != null) {
      yield r'default_appearance';
      yield serializers.serialize(
        object.defaultAppearance,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultThemeLight != null) {
      yield r'default_theme_light';
      yield serializers.serialize(
        object.defaultThemeLight,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.themeLightOverrides != null) {
      yield r'theme_light_overrides';
      yield serializers.serialize(
        object.themeLightOverrides,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.defaultThemeDark != null) {
      yield r'default_theme_dark';
      yield serializers.serialize(
        object.defaultThemeDark,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.themeDarkOverrides != null) {
      yield r'theme_dark_overrides';
      yield serializers.serialize(
        object.themeDarkOverrides,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.reportErrorUrl != null) {
      yield r'report_error_url';
      yield serializers.serialize(
        object.reportErrorUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reportBugUrl != null) {
      yield r'report_bug_url';
      yield serializers.serialize(
        object.reportBugUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reportFeatureUrl != null) {
      yield r'report_feature_url';
      yield serializers.serialize(
        object.reportFeatureUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.publicRegistration != null) {
      yield r'public_registration';
      yield serializers.serialize(
        object.publicRegistration,
        specifiedType: const FullType(bool),
      );
    }
    if (object.publicRegistrationVerifyEmail != null) {
      yield r'public_registration_verify_email';
      yield serializers.serialize(
        object.publicRegistrationVerifyEmail,
        specifiedType: const FullType(bool),
      );
    }
    if (object.publicRegistrationRole != null) {
      yield r'public_registration_role';
      yield serializers.serialize(
        object.publicRegistrationRole,
        specifiedType: const FullType.nullable(SettingsPublicRegistrationRole),
      );
    }
    if (object.publicRegistrationEmailFilter != null) {
      yield r'public_registration_email_filter';
      yield serializers.serialize(
        object.publicRegistrationEmailFilter,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Settings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'project_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectName = valueDes;
          break;
        case r'project_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.projectUrl = valueDes;
          break;
        case r'project_color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.projectColor = valueDes;
          break;
        case r'project_logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.projectLogo = valueDes;
          break;
        case r'public_foreground':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publicForeground = valueDes;
          break;
        case r'public_background':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SettingsPublicBackground),
          ) as SettingsPublicBackground?;
          if (valueDes == null) continue;
          result.publicBackground.replace(valueDes);
          break;
        case r'public_note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publicNote = valueDes;
          break;
        case r'auth_login_attempts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.authLoginAttempts = valueDes;
          break;
        case r'auth_password_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.authPasswordPolicy = valueDes;
          break;
        case r'storage_asset_transform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(SettingsStorageAssetTransformEnum),
          ) as SettingsStorageAssetTransformEnum?;
          if (valueDes == null) continue;
          result.storageAssetTransform = valueDes;
          break;
        case r'storage_asset_presets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(SettingsStorageAssetPresetsInner)]),
          ) as BuiltList<SettingsStorageAssetPresetsInner>?;
          if (valueDes == null) continue;
          result.storageAssetPresets.replace(valueDes);
          break;
        case r'custom_css':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customCss = valueDes;
          break;
        case r'storage_default_folder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.storageDefaultFolder = valueDes;
          break;
        case r'basemaps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.basemaps = valueDes;
          break;
        case r'mapbox_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mapboxKey = valueDes;
          break;
        case r'module_bar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.moduleBar = valueDes;
          break;
        case r'project_descriptor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.projectDescriptor = valueDes;
          break;
        case r'default_language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultLanguage = valueDes;
          break;
        case r'custom_aspect_ratios':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.customAspectRatios = valueDes;
          break;
        case r'public_favicon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SettingsPublicFavicon),
          ) as SettingsPublicFavicon?;
          if (valueDes == null) continue;
          result.publicFavicon.replace(valueDes);
          break;
        case r'default_appearance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultAppearance = valueDes;
          break;
        case r'default_theme_light':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.defaultThemeLight = valueDes;
          break;
        case r'theme_light_overrides':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.themeLightOverrides = valueDes;
          break;
        case r'default_theme_dark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.defaultThemeDark = valueDes;
          break;
        case r'theme_dark_overrides':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.themeDarkOverrides = valueDes;
          break;
        case r'report_error_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reportErrorUrl = valueDes;
          break;
        case r'report_bug_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reportBugUrl = valueDes;
          break;
        case r'report_feature_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reportFeatureUrl = valueDes;
          break;
        case r'public_registration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.publicRegistration = valueDes;
          break;
        case r'public_registration_verify_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.publicRegistrationVerifyEmail = valueDes;
          break;
        case r'public_registration_role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(SettingsPublicRegistrationRole),
          ) as SettingsPublicRegistrationRole?;
          if (valueDes == null) continue;
          result.publicRegistrationRole.replace(valueDes);
          break;
        case r'public_registration_email_filter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.publicRegistrationEmailFilter = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Settings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SettingsBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class SettingsStorageAssetTransformEnum extends EnumClass {
  /// What transformations are allowed in the assets endpoint.
  @BuiltValueEnumConst(wireName: r'all')
  static const SettingsStorageAssetTransformEnum all =
      _$settingsStorageAssetTransformEnum_all;

  /// What transformations are allowed in the assets endpoint.
  @BuiltValueEnumConst(wireName: r'none')
  static const SettingsStorageAssetTransformEnum none =
      _$settingsStorageAssetTransformEnum_none;

  /// What transformations are allowed in the assets endpoint.
  @BuiltValueEnumConst(wireName: r'presets')
  static const SettingsStorageAssetTransformEnum presets =
      _$settingsStorageAssetTransformEnum_presets;

  static Serializer<SettingsStorageAssetTransformEnum> get serializer =>
      _$settingsStorageAssetTransformEnumSerializer;

  const SettingsStorageAssetTransformEnum._(String name) : super(name);

  static BuiltSet<SettingsStorageAssetTransformEnum> get values =>
      _$settingsStorageAssetTransformEnumValues;
  static SettingsStorageAssetTransformEnum valueOf(String name) =>
      _$settingsStorageAssetTransformEnumValueOf(name);
}
