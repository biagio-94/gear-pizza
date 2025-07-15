// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExportRequestFormatEnum _$exportRequestFormatEnum_csv =
    const ExportRequestFormatEnum._('csv');
const ExportRequestFormatEnum _$exportRequestFormatEnum_xml =
    const ExportRequestFormatEnum._('xml');
const ExportRequestFormatEnum _$exportRequestFormatEnum_json =
    const ExportRequestFormatEnum._('json');

ExportRequestFormatEnum _$exportRequestFormatEnumValueOf(String name) {
  switch (name) {
    case 'csv':
      return _$exportRequestFormatEnum_csv;
    case 'xml':
      return _$exportRequestFormatEnum_xml;
    case 'json':
      return _$exportRequestFormatEnum_json;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExportRequestFormatEnum> _$exportRequestFormatEnumValues =
    BuiltSet<ExportRequestFormatEnum>(const <ExportRequestFormatEnum>[
  _$exportRequestFormatEnum_csv,
  _$exportRequestFormatEnum_xml,
  _$exportRequestFormatEnum_json,
]);

Serializer<ExportRequestFormatEnum> _$exportRequestFormatEnumSerializer =
    _$ExportRequestFormatEnumSerializer();

class _$ExportRequestFormatEnumSerializer
    implements PrimitiveSerializer<ExportRequestFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'csv': 'csv',
    'xml': 'xml',
    'json': 'json',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'csv': 'csv',
    'xml': 'xml',
    'json': 'json',
  };

  @override
  final Iterable<Type> types = const <Type>[ExportRequestFormatEnum];
  @override
  final String wireName = 'ExportRequestFormatEnum';

  @override
  Object serialize(Serializers serializers, ExportRequestFormatEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExportRequestFormatEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExportRequestFormatEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExportRequest extends ExportRequest {
  @override
  final ExportRequestFormatEnum format;
  @override
  final Query query;
  @override
  final Files file;

  factory _$ExportRequest([void Function(ExportRequestBuilder)? updates]) =>
      (ExportRequestBuilder()..update(updates))._build();

  _$ExportRequest._(
      {required this.format, required this.query, required this.file})
      : super._();
  @override
  ExportRequest rebuild(void Function(ExportRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportRequestBuilder toBuilder() => ExportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportRequest &&
        format == other.format &&
        query == other.query &&
        file == other.file;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, query.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportRequest')
          ..add('format', format)
          ..add('query', query)
          ..add('file', file))
        .toString();
  }
}

class ExportRequestBuilder
    implements Builder<ExportRequest, ExportRequestBuilder> {
  _$ExportRequest? _$v;

  ExportRequestFormatEnum? _format;
  ExportRequestFormatEnum? get format => _$this._format;
  set format(ExportRequestFormatEnum? format) => _$this._format = format;

  QueryBuilder? _query;
  QueryBuilder get query => _$this._query ??= QueryBuilder();
  set query(QueryBuilder? query) => _$this._query = query;

  FilesBuilder? _file;
  FilesBuilder get file => _$this._file ??= FilesBuilder();
  set file(FilesBuilder? file) => _$this._file = file;

  ExportRequestBuilder() {
    ExportRequest._defaults(this);
  }

  ExportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _format = $v.format;
      _query = $v.query.toBuilder();
      _file = $v.file.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportRequest other) {
    _$v = other as _$ExportRequest;
  }

  @override
  void update(void Function(ExportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportRequest build() => _build();

  _$ExportRequest _build() {
    _$ExportRequest _$result;
    try {
      _$result = _$v ??
          _$ExportRequest._(
            format: BuiltValueNullFieldError.checkNotNull(
                format, r'ExportRequest', 'format'),
            query: query.build(),
            file: file.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'query';
        query.build();
        _$failedField = 'file';
        file.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ExportRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
