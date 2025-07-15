// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_collection_field200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCollectionField200Response extends GetCollectionField200Response {
  @override
  final Fields? data;

  factory _$GetCollectionField200Response(
          [void Function(GetCollectionField200ResponseBuilder)? updates]) =>
      (GetCollectionField200ResponseBuilder()..update(updates))._build();

  _$GetCollectionField200Response._({this.data}) : super._();
  @override
  GetCollectionField200Response rebuild(
          void Function(GetCollectionField200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCollectionField200ResponseBuilder toBuilder() =>
      GetCollectionField200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCollectionField200Response && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetCollectionField200Response')
          ..add('data', data))
        .toString();
  }
}

class GetCollectionField200ResponseBuilder
    implements
        Builder<GetCollectionField200Response,
            GetCollectionField200ResponseBuilder> {
  _$GetCollectionField200Response? _$v;

  FieldsBuilder? _data;
  FieldsBuilder get data => _$this._data ??= FieldsBuilder();
  set data(FieldsBuilder? data) => _$this._data = data;

  GetCollectionField200ResponseBuilder() {
    GetCollectionField200Response._defaults(this);
  }

  GetCollectionField200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCollectionField200Response other) {
    _$v = other as _$GetCollectionField200Response;
  }

  @override
  void update(void Function(GetCollectionField200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCollectionField200Response build() => _build();

  _$GetCollectionField200Response _build() {
    _$GetCollectionField200Response _$result;
    try {
      _$result = _$v ??
          _$GetCollectionField200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetCollectionField200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
