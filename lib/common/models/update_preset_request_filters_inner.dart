//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_preset_request_filters_inner.g.dart';

/// UpdatePresetRequestFiltersInner
///
/// Properties:
/// * [field]
/// * [operator_]
/// * [value]
@BuiltValue()
abstract class UpdatePresetRequestFiltersInner
    implements
        Built<UpdatePresetRequestFiltersInner,
            UpdatePresetRequestFiltersInnerBuilder> {
  @BuiltValueField(wireName: r'field')
  String? get field;

  @BuiltValueField(wireName: r'operator')
  String? get operator_;

  @BuiltValueField(wireName: r'value')
  int? get value;

  UpdatePresetRequestFiltersInner._();

  factory UpdatePresetRequestFiltersInner(
          [void updates(UpdatePresetRequestFiltersInnerBuilder b)]) =
      _$UpdatePresetRequestFiltersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdatePresetRequestFiltersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdatePresetRequestFiltersInner> get serializer =>
      _$UpdatePresetRequestFiltersInnerSerializer();
}

class _$UpdatePresetRequestFiltersInnerSerializer
    implements PrimitiveSerializer<UpdatePresetRequestFiltersInner> {
  @override
  final Iterable<Type> types = const [
    UpdatePresetRequestFiltersInner,
    _$UpdatePresetRequestFiltersInner
  ];

  @override
  final String wireName = r'UpdatePresetRequestFiltersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdatePresetRequestFiltersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.field != null) {
      yield r'field';
      yield serializers.serialize(
        object.field,
        specifiedType: const FullType(String),
      );
    }
    if (object.operator_ != null) {
      yield r'operator';
      yield serializers.serialize(
        object.operator_,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdatePresetRequestFiltersInner object, {
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
    required UpdatePresetRequestFiltersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.field = valueDes;
          break;
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operator_ = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdatePresetRequestFiltersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdatePresetRequestFiltersInnerBuilder();
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
