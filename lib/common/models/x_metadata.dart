//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'x_metadata.g.dart';

/// XMetadata
///
/// Properties:
/// * [totalCount] - Returns the total item count of the collection you're querying.
/// * [filterCount] - Returns the item count of the collection you're querying, taking the current filter/search parameters into account.
@BuiltValue()
abstract class XMetadata implements Built<XMetadata, XMetadataBuilder> {
  /// Returns the total item count of the collection you're querying.
  @BuiltValueField(wireName: r'total_count')
  int? get totalCount;

  /// Returns the item count of the collection you're querying, taking the current filter/search parameters into account.
  @BuiltValueField(wireName: r'filter_count')
  int? get filterCount;

  XMetadata._();

  factory XMetadata([void updates(XMetadataBuilder b)]) = _$XMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XMetadata> get serializer => _$XMetadataSerializer();
}

class _$XMetadataSerializer implements PrimitiveSerializer<XMetadata> {
  @override
  final Iterable<Type> types = const [XMetadata, _$XMetadata];

  @override
  final String wireName = r'XMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalCount != null) {
      yield r'total_count';
      yield serializers.serialize(
        object.totalCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.filterCount != null) {
      yield r'filter_count';
      yield serializers.serialize(
        object.filterCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XMetadata object, {
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
    required XMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalCount = valueDes;
          break;
        case r'filter_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.filterCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  XMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XMetadataBuilder();
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
