// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_relations200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRelations200Response extends GetRelations200Response {
  @override
  final BuiltList<Relations>? data;

  factory _$GetRelations200Response(
          [void Function(GetRelations200ResponseBuilder)? updates]) =>
      (GetRelations200ResponseBuilder()..update(updates))._build();

  _$GetRelations200Response._({this.data}) : super._();
  @override
  GetRelations200Response rebuild(
          void Function(GetRelations200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRelations200ResponseBuilder toBuilder() =>
      GetRelations200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRelations200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GetRelations200Response')
          ..add('data', data))
        .toString();
  }
}

class GetRelations200ResponseBuilder
    implements
        Builder<GetRelations200Response, GetRelations200ResponseBuilder> {
  _$GetRelations200Response? _$v;

  ListBuilder<Relations>? _data;
  ListBuilder<Relations> get data => _$this._data ??= ListBuilder<Relations>();
  set data(ListBuilder<Relations>? data) => _$this._data = data;

  GetRelations200ResponseBuilder() {
    GetRelations200Response._defaults(this);
  }

  GetRelations200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRelations200Response other) {
    _$v = other as _$GetRelations200Response;
  }

  @override
  void update(void Function(GetRelations200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRelations200Response build() => _build();

  _$GetRelations200Response _build() {
    _$GetRelations200Response _$result;
    try {
      _$result = _$v ??
          _$GetRelations200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetRelations200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
