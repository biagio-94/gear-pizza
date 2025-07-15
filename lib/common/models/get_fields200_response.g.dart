// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_fields200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFields200Response extends GetFields200Response {
  @override
  final BuiltList<Fields>? data;

  factory _$GetFields200Response(
          [void Function(GetFields200ResponseBuilder)? updates]) =>
      (GetFields200ResponseBuilder()..update(updates))._build();

  _$GetFields200Response._({this.data}) : super._();
  @override
  GetFields200Response rebuild(
          void Function(GetFields200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFields200ResponseBuilder toBuilder() =>
      GetFields200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFields200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GetFields200Response')
          ..add('data', data))
        .toString();
  }
}

class GetFields200ResponseBuilder
    implements Builder<GetFields200Response, GetFields200ResponseBuilder> {
  _$GetFields200Response? _$v;

  ListBuilder<Fields>? _data;
  ListBuilder<Fields> get data => _$this._data ??= ListBuilder<Fields>();
  set data(ListBuilder<Fields>? data) => _$this._data = data;

  GetFields200ResponseBuilder() {
    GetFields200Response._defaults(this);
  }

  GetFields200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFields200Response other) {
    _$v = other as _$GetFields200Response;
  }

  @override
  void update(void Function(GetFields200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFields200Response build() => _build();

  _$GetFields200Response _build() {
    _$GetFields200Response _$result;
    try {
      _$result = _$v ??
          _$GetFields200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetFields200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
