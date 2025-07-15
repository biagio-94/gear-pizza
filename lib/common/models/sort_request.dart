//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sort_request.g.dart';

/// SortRequest
///
/// Properties:
/// * [item] - Primary key of item to move
/// * [to] - Primary key of item where to move the current item to
@BuiltValue()
abstract class SortRequest implements Built<SortRequest, SortRequestBuilder> {
  /// Primary key of item to move
  @BuiltValueField(wireName: r'item')
  num? get item;

  /// Primary key of item where to move the current item to
  @BuiltValueField(wireName: r'to')
  num? get to;

  SortRequest._();

  factory SortRequest([void updates(SortRequestBuilder b)]) = _$SortRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SortRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SortRequest> get serializer => _$SortRequestSerializer();
}

class _$SortRequestSerializer implements PrimitiveSerializer<SortRequest> {
  @override
  final Iterable<Type> types = const [SortRequest, _$SortRequest];

  @override
  final String wireName = r'SortRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SortRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.item != null) {
      yield r'item';
      yield serializers.serialize(
        object.item,
        specifiedType: const FullType(num),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SortRequest object, {
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
    required SortRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'item':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.item = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.to = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SortRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SortRequestBuilder();
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
