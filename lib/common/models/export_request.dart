//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gearpizza/common/models/files.dart';
import 'package:gearpizza/common/models/query.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_request.g.dart';

/// ExportRequest
///
/// Properties:
/// * [format] - What file format to save the export to. One of csv, xml, json
/// * [query]
/// * [file]
@BuiltValue()
abstract class ExportRequest
    implements Built<ExportRequest, ExportRequestBuilder> {
  /// What file format to save the export to. One of csv, xml, json
  @BuiltValueField(wireName: r'format')
  ExportRequestFormatEnum get format;
  // enum formatEnum {  csv,  xml,  json,  };

  @BuiltValueField(wireName: r'query')
  Query get query;

  @BuiltValueField(wireName: r'file')
  Files get file;

  ExportRequest._();

  factory ExportRequest([void updates(ExportRequestBuilder b)]) =
      _$ExportRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportRequest> get serializer =>
      _$ExportRequestSerializer();
}

class _$ExportRequestSerializer implements PrimitiveSerializer<ExportRequest> {
  @override
  final Iterable<Type> types = const [ExportRequest, _$ExportRequest];

  @override
  final String wireName = r'ExportRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(ExportRequestFormatEnum),
    );
    yield r'query';
    yield serializers.serialize(
      object.query,
      specifiedType: const FullType(Query),
    );
    yield r'file';
    yield serializers.serialize(
      object.file,
      specifiedType: const FullType(Files),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportRequest object, {
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
    required ExportRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExportRequestFormatEnum),
          ) as ExportRequestFormatEnum;
          result.format = valueDes;
          break;
        case r'query':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Query),
          ) as Query;
          result.query.replace(valueDes);
          break;
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Files),
          ) as Files;
          result.file.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportRequestBuilder();
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

class ExportRequestFormatEnum extends EnumClass {
  /// What file format to save the export to. One of csv, xml, json
  @BuiltValueEnumConst(wireName: r'csv')
  static const ExportRequestFormatEnum csv = _$exportRequestFormatEnum_csv;

  /// What file format to save the export to. One of csv, xml, json
  @BuiltValueEnumConst(wireName: r'xml')
  static const ExportRequestFormatEnum xml = _$exportRequestFormatEnum_xml;

  /// What file format to save the export to. One of csv, xml, json
  @BuiltValueEnumConst(wireName: r'json')
  static const ExportRequestFormatEnum json = _$exportRequestFormatEnum_json;

  static Serializer<ExportRequestFormatEnum> get serializer =>
      _$exportRequestFormatEnumSerializer;

  const ExportRequestFormatEnum._(String name) : super(name);

  static BuiltSet<ExportRequestFormatEnum> get values =>
      _$exportRequestFormatEnumValues;
  static ExportRequestFormatEnum valueOf(String name) =>
      _$exportRequestFormatEnumValueOf(name);
}
