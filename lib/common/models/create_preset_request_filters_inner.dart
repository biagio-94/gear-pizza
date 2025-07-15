//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_preset_request_filters_inner.g.dart';

/// CreatePresetRequestFiltersInner
///
/// Properties:
/// * [key]
/// * [field]
/// * [operator_]
/// * [value]
@BuiltValue()
abstract class CreatePresetRequestFiltersInner
    implements
        Built<CreatePresetRequestFiltersInner,
            CreatePresetRequestFiltersInnerBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'field')
  String? get field;

  @BuiltValueField(wireName: r'operator')
  String? get operator_;

  @BuiltValueField(wireName: r'value')
  int? get value;

  CreatePresetRequestFiltersInner._();

  factory CreatePresetRequestFiltersInner(
          [void updates(CreatePresetRequestFiltersInnerBuilder b)]) =
      _$CreatePresetRequestFiltersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePresetRequestFiltersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePresetRequestFiltersInner> get serializer =>
      _$CreatePresetRequestFiltersInnerSerializer();
}

class _$CreatePresetRequestFiltersInnerSerializer
    implements PrimitiveSerializer<CreatePresetRequestFiltersInner> {
  @override
  final Iterable<Type> types = const [
    CreatePresetRequestFiltersInner,
    _$CreatePresetRequestFiltersInner
  ];

  @override
  final String wireName = r'CreatePresetRequestFiltersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePresetRequestFiltersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
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
    CreatePresetRequestFiltersInner object, {
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
    required CreatePresetRequestFiltersInnerBuilder result,
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
  CreatePresetRequestFiltersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePresetRequestFiltersInnerBuilder();
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
