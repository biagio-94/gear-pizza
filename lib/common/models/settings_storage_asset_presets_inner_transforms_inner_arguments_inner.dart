//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'settings_storage_asset_presets_inner_transforms_inner_arguments_inner.g.dart';

/// SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner
///
/// Properties:
/// * [argument] - A JSON representation of the argument value
@BuiltValue()
abstract class SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner
    implements
        Built<SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner,
            SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInnerBuilder> {
  /// A JSON representation of the argument value
  @BuiltValueField(wireName: r'argument')
  String? get argument;

  SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner._();

  factory SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner(
          [void updates(
              SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInnerBuilder
                  b)]) =
      _$SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInnerBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner>
      get serializer =>
          _$SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInnerSerializer();
}

class _$SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInnerSerializer
    implements
        PrimitiveSerializer<
            SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner> {
  @override
  final Iterable<Type> types = const [
    SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner,
    _$SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner
  ];

  @override
  final String wireName =
      r'SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.argument != null) {
      yield r'argument';
      yield serializers.serialize(
        object.argument,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner object, {
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
    required SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInnerBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'argument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.argument = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInnerBuilder();
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
