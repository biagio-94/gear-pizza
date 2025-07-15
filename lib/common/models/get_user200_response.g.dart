// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUser200Response extends GetUser200Response {
  @override
  final Users? data;

  factory _$GetUser200Response(
          [void Function(GetUser200ResponseBuilder)? updates]) =>
      (GetUser200ResponseBuilder()..update(updates))._build();

  _$GetUser200Response._({this.data}) : super._();
  @override
  GetUser200Response rebuild(
          void Function(GetUser200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUser200ResponseBuilder toBuilder() =>
      GetUser200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUser200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GetUser200Response')
          ..add('data', data))
        .toString();
  }
}

class GetUser200ResponseBuilder
    implements Builder<GetUser200Response, GetUser200ResponseBuilder> {
  _$GetUser200Response? _$v;

  UsersBuilder? _data;
  UsersBuilder get data => _$this._data ??= UsersBuilder();
  set data(UsersBuilder? data) => _$this._data = data;

  GetUser200ResponseBuilder() {
    GetUser200Response._defaults(this);
  }

  GetUser200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUser200Response other) {
    _$v = other as _$GetUser200Response;
  }

  @override
  void update(void Function(GetUser200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUser200Response build() => _build();

  _$GetUser200Response _build() {
    _$GetUser200Response _$result;
    try {
      _$result = _$v ??
          _$GetUser200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetUser200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
