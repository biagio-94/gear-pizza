// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_preset200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePreset200Response extends CreatePreset200Response {
  @override
  final Presets? data;

  factory _$CreatePreset200Response(
          [void Function(CreatePreset200ResponseBuilder)? updates]) =>
      (CreatePreset200ResponseBuilder()..update(updates))._build();

  _$CreatePreset200Response._({this.data}) : super._();
  @override
  CreatePreset200Response rebuild(
          void Function(CreatePreset200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePreset200ResponseBuilder toBuilder() =>
      CreatePreset200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePreset200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'CreatePreset200Response')
          ..add('data', data))
        .toString();
  }
}

class CreatePreset200ResponseBuilder
    implements
        Builder<CreatePreset200Response, CreatePreset200ResponseBuilder> {
  _$CreatePreset200Response? _$v;

  PresetsBuilder? _data;
  PresetsBuilder get data => _$this._data ??= PresetsBuilder();
  set data(PresetsBuilder? data) => _$this._data = data;

  CreatePreset200ResponseBuilder() {
    CreatePreset200Response._defaults(this);
  }

  CreatePreset200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePreset200Response other) {
    _$v = other as _$CreatePreset200Response;
  }

  @override
  void update(void Function(CreatePreset200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePreset200Response build() => _build();

  _$CreatePreset200Response _build() {
    _$CreatePreset200Response _$result;
    try {
      _$result = _$v ??
          _$CreatePreset200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreatePreset200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
