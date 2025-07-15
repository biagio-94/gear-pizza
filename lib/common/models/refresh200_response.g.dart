// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Refresh200Response extends Refresh200Response {
  @override
  final Refresh200ResponseData? data;

  factory _$Refresh200Response(
          [void Function(Refresh200ResponseBuilder)? updates]) =>
      (Refresh200ResponseBuilder()..update(updates))._build();

  _$Refresh200Response._({this.data}) : super._();
  @override
  Refresh200Response rebuild(
          void Function(Refresh200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Refresh200ResponseBuilder toBuilder() =>
      Refresh200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Refresh200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'Refresh200Response')
          ..add('data', data))
        .toString();
  }
}

class Refresh200ResponseBuilder
    implements Builder<Refresh200Response, Refresh200ResponseBuilder> {
  _$Refresh200Response? _$v;

  Refresh200ResponseDataBuilder? _data;
  Refresh200ResponseDataBuilder get data =>
      _$this._data ??= Refresh200ResponseDataBuilder();
  set data(Refresh200ResponseDataBuilder? data) => _$this._data = data;

  Refresh200ResponseBuilder() {
    Refresh200Response._defaults(this);
  }

  Refresh200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Refresh200Response other) {
    _$v = other as _$Refresh200Response;
  }

  @override
  void update(void Function(Refresh200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Refresh200Response build() => _build();

  _$Refresh200Response _build() {
    _$Refresh200Response _$result;
    try {
      _$result = _$v ??
          _$Refresh200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Refresh200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
