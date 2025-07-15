// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_collection200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCollection200Response extends GetCollection200Response {
  @override
  final Collections? data;

  factory _$GetCollection200Response(
          [void Function(GetCollection200ResponseBuilder)? updates]) =>
      (GetCollection200ResponseBuilder()..update(updates))._build();

  _$GetCollection200Response._({this.data}) : super._();
  @override
  GetCollection200Response rebuild(
          void Function(GetCollection200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCollection200ResponseBuilder toBuilder() =>
      GetCollection200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCollection200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GetCollection200Response')
          ..add('data', data))
        .toString();
  }
}

class GetCollection200ResponseBuilder
    implements
        Builder<GetCollection200Response, GetCollection200ResponseBuilder> {
  _$GetCollection200Response? _$v;

  CollectionsBuilder? _data;
  CollectionsBuilder get data => _$this._data ??= CollectionsBuilder();
  set data(CollectionsBuilder? data) => _$this._data = data;

  GetCollection200ResponseBuilder() {
    GetCollection200Response._defaults(this);
  }

  GetCollection200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCollection200Response other) {
    _$v = other as _$GetCollection200Response;
  }

  @override
  void update(void Function(GetCollection200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCollection200Response build() => _build();

  _$GetCollection200Response _build() {
    _$GetCollection200Response _$result;
    try {
      _$result = _$v ??
          _$GetCollection200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetCollection200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
