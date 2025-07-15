// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_presets_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatePresetsRequest extends UpdatePresetsRequest {
  @override
  final BuiltList<String>? keys;
  @override
  final CreatePresetRequest? data;

  factory _$UpdatePresetsRequest(
          [void Function(UpdatePresetsRequestBuilder)? updates]) =>
      (UpdatePresetsRequestBuilder()..update(updates))._build();

  _$UpdatePresetsRequest._({this.keys, this.data}) : super._();
  @override
  UpdatePresetsRequest rebuild(
          void Function(UpdatePresetsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatePresetsRequestBuilder toBuilder() =>
      UpdatePresetsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePresetsRequest &&
        keys == other.keys &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keys.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdatePresetsRequest')
          ..add('keys', keys)
          ..add('data', data))
        .toString();
  }
}

class UpdatePresetsRequestBuilder
    implements Builder<UpdatePresetsRequest, UpdatePresetsRequestBuilder> {
  _$UpdatePresetsRequest? _$v;

  ListBuilder<String>? _keys;
  ListBuilder<String> get keys => _$this._keys ??= ListBuilder<String>();
  set keys(ListBuilder<String>? keys) => _$this._keys = keys;

  CreatePresetRequestBuilder? _data;
  CreatePresetRequestBuilder get data =>
      _$this._data ??= CreatePresetRequestBuilder();
  set data(CreatePresetRequestBuilder? data) => _$this._data = data;

  UpdatePresetsRequestBuilder() {
    UpdatePresetsRequest._defaults(this);
  }

  UpdatePresetsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keys = $v.keys?.toBuilder();
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePresetsRequest other) {
    _$v = other as _$UpdatePresetsRequest;
  }

  @override
  void update(void Function(UpdatePresetsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatePresetsRequest build() => _build();

  _$UpdatePresetsRequest _build() {
    _$UpdatePresetsRequest _$result;
    try {
      _$result = _$v ??
          _$UpdatePresetsRequest._(
            keys: _keys?.build(),
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keys';
        _keys?.build();
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdatePresetsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
