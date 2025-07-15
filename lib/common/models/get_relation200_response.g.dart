// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_relation200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRelation200Response extends GetRelation200Response {
  @override
  final Relations? data;

  factory _$GetRelation200Response(
          [void Function(GetRelation200ResponseBuilder)? updates]) =>
      (GetRelation200ResponseBuilder()..update(updates))._build();

  _$GetRelation200Response._({this.data}) : super._();
  @override
  GetRelation200Response rebuild(
          void Function(GetRelation200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRelation200ResponseBuilder toBuilder() =>
      GetRelation200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRelation200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GetRelation200Response')
          ..add('data', data))
        .toString();
  }
}

class GetRelation200ResponseBuilder
    implements Builder<GetRelation200Response, GetRelation200ResponseBuilder> {
  _$GetRelation200Response? _$v;

  RelationsBuilder? _data;
  RelationsBuilder get data => _$this._data ??= RelationsBuilder();
  set data(RelationsBuilder? data) => _$this._data = data;

  GetRelation200ResponseBuilder() {
    GetRelation200Response._defaults(this);
  }

  GetRelation200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRelation200Response other) {
    _$v = other as _$GetRelation200Response;
  }

  @override
  void update(void Function(GetRelation200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRelation200Response build() => _build();

  _$GetRelation200Response _build() {
    _$GetRelation200Response _$result;
    try {
      _$result = _$v ??
          _$GetRelation200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetRelation200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
