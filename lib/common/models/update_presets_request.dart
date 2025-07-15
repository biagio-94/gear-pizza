//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/create_preset_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_presets_request.g.dart';

/// UpdatePresetsRequest
///
/// Properties:
/// * [keys]
/// * [data]
@BuiltValue()
abstract class UpdatePresetsRequest
    implements Built<UpdatePresetsRequest, UpdatePresetsRequestBuilder> {
  @BuiltValueField(wireName: r'keys')
  BuiltList<String>? get keys;

  @BuiltValueField(wireName: r'data')
  CreatePresetRequest? get data;

  UpdatePresetsRequest._();

  factory UpdatePresetsRequest([void updates(UpdatePresetsRequestBuilder b)]) =
      _$UpdatePresetsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdatePresetsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdatePresetsRequest> get serializer =>
      _$UpdatePresetsRequestSerializer();
}

class _$UpdatePresetsRequestSerializer
    implements PrimitiveSerializer<UpdatePresetsRequest> {
  @override
  final Iterable<Type> types = const [
    UpdatePresetsRequest,
    _$UpdatePresetsRequest
  ];

  @override
  final String wireName = r'UpdatePresetsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdatePresetsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.keys != null) {
      yield r'keys';
      yield serializers.serialize(
        object.keys,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(CreatePresetRequest),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdatePresetsRequest object, {
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
    required UpdatePresetsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.keys.replace(valueDes);
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreatePresetRequest),
          ) as CreatePresetRequest;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdatePresetsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdatePresetsRequestBuilder();
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
