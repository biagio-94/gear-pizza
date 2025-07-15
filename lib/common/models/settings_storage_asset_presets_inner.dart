//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/settings_storage_asset_presets_inner_transforms_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'settings_storage_asset_presets_inner.g.dart';

/// SettingsStorageAssetPresetsInner
///
/// Properties:
/// * [key] - Key for the asset. Used in the assets endpoint.
/// * [fit] - Whether to crop the thumbnail to match the size, or maintain the aspect ratio.
/// * [width] - Width of the thumbnail.
/// * [height] - Height of the thumbnail.
/// * [withoutEnlargement] - No image upscale
/// * [quality] - Quality of the compression used.
/// * [format] - Reformat output image
/// * [transforms] - Additional transformations to apply
@BuiltValue()
abstract class SettingsStorageAssetPresetsInner
    implements
        Built<SettingsStorageAssetPresetsInner,
            SettingsStorageAssetPresetsInnerBuilder> {
  /// Key for the asset. Used in the assets endpoint.
  @BuiltValueField(wireName: r'key')
  String? get key;

  /// Whether to crop the thumbnail to match the size, or maintain the aspect ratio.
  @BuiltValueField(wireName: r'fit')
  SettingsStorageAssetPresetsInnerFitEnum? get fit;
  // enum fitEnum {  cover,  contain,  inside,  outside,  };

  /// Width of the thumbnail.
  @BuiltValueField(wireName: r'width')
  int? get width;

  /// Height of the thumbnail.
  @BuiltValueField(wireName: r'height')
  int? get height;

  /// No image upscale
  @BuiltValueField(wireName: r'withoutEnlargement')
  bool? get withoutEnlargement;

  /// Quality of the compression used.
  @BuiltValueField(wireName: r'quality')
  int? get quality;

  /// Reformat output image
  @BuiltValueField(wireName: r'format')
  SettingsStorageAssetPresetsInnerFormatEnum? get format;
  // enum formatEnum {  ,  jpeg,  png,  webp,  tiff,  avif,  };

  /// Additional transformations to apply
  @BuiltValueField(wireName: r'transforms')
  BuiltList<SettingsStorageAssetPresetsInnerTransformsInner>? get transforms;

  SettingsStorageAssetPresetsInner._();

  factory SettingsStorageAssetPresetsInner(
          [void updates(SettingsStorageAssetPresetsInnerBuilder b)]) =
      _$SettingsStorageAssetPresetsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SettingsStorageAssetPresetsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SettingsStorageAssetPresetsInner> get serializer =>
      _$SettingsStorageAssetPresetsInnerSerializer();
}

class _$SettingsStorageAssetPresetsInnerSerializer
    implements PrimitiveSerializer<SettingsStorageAssetPresetsInner> {
  @override
  final Iterable<Type> types = const [
    SettingsStorageAssetPresetsInner,
    _$SettingsStorageAssetPresetsInner
  ];

  @override
  final String wireName = r'SettingsStorageAssetPresetsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SettingsStorageAssetPresetsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.fit != null) {
      yield r'fit';
      yield serializers.serialize(
        object.fit,
        specifiedType: const FullType(SettingsStorageAssetPresetsInnerFitEnum),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(int),
      );
    }
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType(int),
      );
    }
    if (object.withoutEnlargement != null) {
      yield r'withoutEnlargement';
      yield serializers.serialize(
        object.withoutEnlargement,
        specifiedType: const FullType(bool),
      );
    }
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType(int),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType:
            const FullType(SettingsStorageAssetPresetsInnerFormatEnum),
      );
    }
    if (object.transforms != null) {
      yield r'transforms';
      yield serializers.serialize(
        object.transforms,
        specifiedType: const FullType.nullable(BuiltList,
            [FullType(SettingsStorageAssetPresetsInnerTransformsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SettingsStorageAssetPresetsInner object, {
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
    required SettingsStorageAssetPresetsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'fit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(SettingsStorageAssetPresetsInnerFitEnum),
          ) as SettingsStorageAssetPresetsInnerFitEnum;
          result.fit = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.width = valueDes;
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.height = valueDes;
          break;
        case r'withoutEnlargement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.withoutEnlargement = valueDes;
          break;
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quality = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(SettingsStorageAssetPresetsInnerFormatEnum),
          ) as SettingsStorageAssetPresetsInnerFormatEnum;
          result.format = valueDes;
          break;
        case r'transforms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList,
                [FullType(SettingsStorageAssetPresetsInnerTransformsInner)]),
          ) as BuiltList<SettingsStorageAssetPresetsInnerTransformsInner>?;
          if (valueDes == null) continue;
          result.transforms.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SettingsStorageAssetPresetsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SettingsStorageAssetPresetsInnerBuilder();
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

class SettingsStorageAssetPresetsInnerFitEnum extends EnumClass {
  /// Whether to crop the thumbnail to match the size, or maintain the aspect ratio.
  @BuiltValueEnumConst(wireName: r'cover')
  static const SettingsStorageAssetPresetsInnerFitEnum cover =
      _$settingsStorageAssetPresetsInnerFitEnum_cover;

  /// Whether to crop the thumbnail to match the size, or maintain the aspect ratio.
  @BuiltValueEnumConst(wireName: r'contain')
  static const SettingsStorageAssetPresetsInnerFitEnum contain =
      _$settingsStorageAssetPresetsInnerFitEnum_contain;

  /// Whether to crop the thumbnail to match the size, or maintain the aspect ratio.
  @BuiltValueEnumConst(wireName: r'inside')
  static const SettingsStorageAssetPresetsInnerFitEnum inside =
      _$settingsStorageAssetPresetsInnerFitEnum_inside;

  /// Whether to crop the thumbnail to match the size, or maintain the aspect ratio.
  @BuiltValueEnumConst(wireName: r'outside')
  static const SettingsStorageAssetPresetsInnerFitEnum outside =
      _$settingsStorageAssetPresetsInnerFitEnum_outside;

  static Serializer<SettingsStorageAssetPresetsInnerFitEnum> get serializer =>
      _$settingsStorageAssetPresetsInnerFitEnumSerializer;

  const SettingsStorageAssetPresetsInnerFitEnum._(String name) : super(name);

  static BuiltSet<SettingsStorageAssetPresetsInnerFitEnum> get values =>
      _$settingsStorageAssetPresetsInnerFitEnumValues;
  static SettingsStorageAssetPresetsInnerFitEnum valueOf(String name) =>
      _$settingsStorageAssetPresetsInnerFitEnumValueOf(name);
}

class SettingsStorageAssetPresetsInnerFormatEnum extends EnumClass {
  /// Reformat output image
  @BuiltValueEnumConst(wireName: r'')
  static const SettingsStorageAssetPresetsInnerFormatEnum empty =
      _$settingsStorageAssetPresetsInnerFormatEnum_empty;

  /// Reformat output image
  @BuiltValueEnumConst(wireName: r'jpeg')
  static const SettingsStorageAssetPresetsInnerFormatEnum jpeg =
      _$settingsStorageAssetPresetsInnerFormatEnum_jpeg;

  /// Reformat output image
  @BuiltValueEnumConst(wireName: r'png')
  static const SettingsStorageAssetPresetsInnerFormatEnum png =
      _$settingsStorageAssetPresetsInnerFormatEnum_png;

  /// Reformat output image
  @BuiltValueEnumConst(wireName: r'webp')
  static const SettingsStorageAssetPresetsInnerFormatEnum webp =
      _$settingsStorageAssetPresetsInnerFormatEnum_webp;

  /// Reformat output image
  @BuiltValueEnumConst(wireName: r'tiff')
  static const SettingsStorageAssetPresetsInnerFormatEnum tiff =
      _$settingsStorageAssetPresetsInnerFormatEnum_tiff;

  /// Reformat output image
  @BuiltValueEnumConst(wireName: r'avif')
  static const SettingsStorageAssetPresetsInnerFormatEnum avif =
      _$settingsStorageAssetPresetsInnerFormatEnum_avif;

  static Serializer<SettingsStorageAssetPresetsInnerFormatEnum>
      get serializer => _$settingsStorageAssetPresetsInnerFormatEnumSerializer;

  const SettingsStorageAssetPresetsInnerFormatEnum._(String name) : super(name);

  static BuiltSet<SettingsStorageAssetPresetsInnerFormatEnum> get values =>
      _$settingsStorageAssetPresetsInnerFormatEnumValues;
  static SettingsStorageAssetPresetsInnerFormatEnum valueOf(String name) =>
      _$settingsStorageAssetPresetsInnerFormatEnumValueOf(name);
}
