//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_comment_request.g.dart';

/// CreateCommentRequest
///
/// Properties:
/// * [collection]
/// * [item]
/// * [comment]
@BuiltValue()
abstract class CreateCommentRequest
    implements Built<CreateCommentRequest, CreateCommentRequestBuilder> {
  @BuiltValueField(wireName: r'collection')
  String get collection;

  @BuiltValueField(wireName: r'item')
  int get item;

  @BuiltValueField(wireName: r'comment')
  String get comment;

  CreateCommentRequest._();

  factory CreateCommentRequest([void updates(CreateCommentRequestBuilder b)]) =
      _$CreateCommentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateCommentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateCommentRequest> get serializer =>
      _$CreateCommentRequestSerializer();
}

class _$CreateCommentRequestSerializer
    implements PrimitiveSerializer<CreateCommentRequest> {
  @override
  final Iterable<Type> types = const [
    CreateCommentRequest,
    _$CreateCommentRequest
  ];

  @override
  final String wireName = r'CreateCommentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateCommentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'collection';
    yield serializers.serialize(
      object.collection,
      specifiedType: const FullType(String),
    );
    yield r'item';
    yield serializers.serialize(
      object.item,
      specifiedType: const FullType(int),
    );
    yield r'comment';
    yield serializers.serialize(
      object.comment,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateCommentRequest object, {
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
    required CreateCommentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.collection = valueDes;
          break;
        case r'item':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.item = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateCommentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCommentRequestBuilder();
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
