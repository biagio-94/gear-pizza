//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'read_single_items_pizzas_id_parameter.g.dart';

/// ReadSingleItemsPizzasIdParameter
@BuiltValue()
abstract class ReadSingleItemsPizzasIdParameter
    implements
        Built<ReadSingleItemsPizzasIdParameter,
            ReadSingleItemsPizzasIdParameterBuilder> {
  /// One Of [String], [int]
  OneOf get oneOf;

  ReadSingleItemsPizzasIdParameter._();

  factory ReadSingleItemsPizzasIdParameter(
          [void updates(ReadSingleItemsPizzasIdParameterBuilder b)]) =
      _$ReadSingleItemsPizzasIdParameter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadSingleItemsPizzasIdParameterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadSingleItemsPizzasIdParameter> get serializer =>
      _$ReadSingleItemsPizzasIdParameterSerializer();
}

class _$ReadSingleItemsPizzasIdParameterSerializer
    implements PrimitiveSerializer<ReadSingleItemsPizzasIdParameter> {
  @override
  final Iterable<Type> types = const [
    ReadSingleItemsPizzasIdParameter,
    _$ReadSingleItemsPizzasIdParameter
  ];

  @override
  final String wireName = r'ReadSingleItemsPizzasIdParameter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadSingleItemsPizzasIdParameter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ReadSingleItemsPizzasIdParameter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ReadSingleItemsPizzasIdParameter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadSingleItemsPizzasIdParameterBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(int),
      FullType(String),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
