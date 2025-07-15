// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_comment200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateComment200Response extends CreateComment200Response {
  @override
  final Activity? data;

  factory _$CreateComment200Response(
          [void Function(CreateComment200ResponseBuilder)? updates]) =>
      (CreateComment200ResponseBuilder()..update(updates))._build();

  _$CreateComment200Response._({this.data}) : super._();
  @override
  CreateComment200Response rebuild(
          void Function(CreateComment200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateComment200ResponseBuilder toBuilder() =>
      CreateComment200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateComment200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'CreateComment200Response')
          ..add('data', data))
        .toString();
  }
}

class CreateComment200ResponseBuilder
    implements
        Builder<CreateComment200Response, CreateComment200ResponseBuilder> {
  _$CreateComment200Response? _$v;

  ActivityBuilder? _data;
  ActivityBuilder get data => _$this._data ??= ActivityBuilder();
  set data(ActivityBuilder? data) => _$this._data = data;

  CreateComment200ResponseBuilder() {
    CreateComment200Response._defaults(this);
  }

  CreateComment200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateComment200Response other) {
    _$v = other as _$CreateComment200Response;
  }

  @override
  void update(void Function(CreateComment200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateComment200Response build() => _build();

  _$CreateComment200Response _build() {
    _$CreateComment200Response _$result;
    try {
      _$result = _$v ??
          _$CreateComment200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateComment200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
