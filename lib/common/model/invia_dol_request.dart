//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invia_dol_request.g.dart';

/// InviaDolRequest
///
/// Properties:
/// * [id]
@BuiltValue()
abstract class InviaDolRequest
    implements Built<InviaDolRequest, InviaDolRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  InviaDolRequest._();

  factory InviaDolRequest([void Function(InviaDolRequestBuilder b) updates]) =
      _$InviaDolRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InviaDolRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InviaDolRequest> get serializer =>
      _$InviaDolRequestSerializer();
}

class _$InviaDolRequestSerializer
    implements PrimitiveSerializer<InviaDolRequest> {
  @override
  final Iterable<Type> types = const [InviaDolRequest, _$InviaDolRequest];

  @override
  final String wireName = r'InviaDolRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InviaDolRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InviaDolRequest object, {
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
    required InviaDolRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InviaDolRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InviaDolRequestBuilder();
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
