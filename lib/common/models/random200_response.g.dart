// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Random200Response extends Random200Response {
  @override
  final String? data;

  factory _$Random200Response(
          [void Function(Random200ResponseBuilder)? updates]) =>
      (Random200ResponseBuilder()..update(updates))._build();

  _$Random200Response._({this.data}) : super._();
  @override
  Random200Response rebuild(void Function(Random200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Random200ResponseBuilder toBuilder() =>
      Random200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Random200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'Random200Response')
          ..add('data', data))
        .toString();
  }
}

class Random200ResponseBuilder
    implements Builder<Random200Response, Random200ResponseBuilder> {
  _$Random200Response? _$v;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  Random200ResponseBuilder() {
    Random200Response._defaults(this);
  }

  Random200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Random200Response other) {
    _$v = other as _$Random200Response;
  }

  @override
  void update(void Function(Random200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Random200Response build() => _build();

  _$Random200Response _build() {
    final _$result = _$v ??
        _$Random200Response._(
          data: data,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
