// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_collections200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCollections200Response extends GetCollections200Response {
  @override
  final BuiltList<Collections>? data;

  factory _$GetCollections200Response(
          [void Function(GetCollections200ResponseBuilder)? updates]) =>
      (GetCollections200ResponseBuilder()..update(updates))._build();

  _$GetCollections200Response._({this.data}) : super._();
  @override
  GetCollections200Response rebuild(
          void Function(GetCollections200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCollections200ResponseBuilder toBuilder() =>
      GetCollections200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCollections200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GetCollections200Response')
          ..add('data', data))
        .toString();
  }
}

class GetCollections200ResponseBuilder
    implements
        Builder<GetCollections200Response, GetCollections200ResponseBuilder> {
  _$GetCollections200Response? _$v;

  ListBuilder<Collections>? _data;
  ListBuilder<Collections> get data =>
      _$this._data ??= ListBuilder<Collections>();
  set data(ListBuilder<Collections>? data) => _$this._data = data;

  GetCollections200ResponseBuilder() {
    GetCollections200Response._defaults(this);
  }

  GetCollections200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCollections200Response other) {
    _$v = other as _$GetCollections200Response;
  }

  @override
  void update(void Function(GetCollections200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCollections200Response build() => _build();

  _$GetCollections200Response _build() {
    _$GetCollections200Response _$result;
    try {
      _$result = _$v ??
          _$GetCollections200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetCollections200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
