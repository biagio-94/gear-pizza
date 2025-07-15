//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gearpizza/common/models/settings_storage_asset_presets_inner_transforms_inner_arguments_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'settings_storage_asset_presets_inner_transforms_inner.g.dart';

/// SettingsStorageAssetPresetsInnerTransformsInner
///
/// Properties:
/// * [method] - The Sharp method name
/// * [arguments] - A list of arguments to pass to the Sharp method
@BuiltValue()
abstract class SettingsStorageAssetPresetsInnerTransformsInner
    implements
        Built<SettingsStorageAssetPresetsInnerTransformsInner,
            SettingsStorageAssetPresetsInnerTransformsInnerBuilder> {
  /// The Sharp method name
  @BuiltValueField(wireName: r'method')
  String? get method;

  /// A list of arguments to pass to the Sharp method
  @BuiltValueField(wireName: r'arguments')
  BuiltList<SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner>?
      get arguments;

  SettingsStorageAssetPresetsInnerTransformsInner._();

  factory SettingsStorageAssetPresetsInnerTransformsInner(
          [void updates(
              SettingsStorageAssetPresetsInnerTransformsInnerBuilder b)]) =
      _$SettingsStorageAssetPresetsInnerTransformsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          SettingsStorageAssetPresetsInnerTransformsInnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SettingsStorageAssetPresetsInnerTransformsInner>
      get serializer =>
          _$SettingsStorageAssetPresetsInnerTransformsInnerSerializer();
}

class _$SettingsStorageAssetPresetsInnerTransformsInnerSerializer
    implements
        PrimitiveSerializer<SettingsStorageAssetPresetsInnerTransformsInner> {
  @override
  final Iterable<Type> types = const [
    SettingsStorageAssetPresetsInnerTransformsInner,
    _$SettingsStorageAssetPresetsInnerTransformsInner
  ];

  @override
  final String wireName = r'SettingsStorageAssetPresetsInnerTransformsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SettingsStorageAssetPresetsInnerTransformsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(String),
      );
    }
    if (object.arguments != null) {
      yield r'arguments';
      yield serializers.serialize(
        object.arguments,
        specifiedType: const FullType.nullable(BuiltList, [
          FullType(
              SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner)
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SettingsStorageAssetPresetsInnerTransformsInner object, {
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
    required SettingsStorageAssetPresetsInnerTransformsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.method = valueDes;
          break;
        case r'arguments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(
                  SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner)
            ]),
          ) as BuiltList<
              SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner>?;
          if (valueDes == null) continue;
          result.arguments.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SettingsStorageAssetPresetsInnerTransformsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SettingsStorageAssetPresetsInnerTransformsInnerBuilder();
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
