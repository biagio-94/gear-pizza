// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_activities200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetActivities200Response extends GetActivities200Response {
  @override
  final BuiltList<Activity>? data;
  @override
  final XMetadata? meta;

  factory _$GetActivities200Response(
          [void Function(GetActivities200ResponseBuilder)? updates]) =>
      (GetActivities200ResponseBuilder()..update(updates))._build();

  _$GetActivities200Response._({this.data, this.meta}) : super._();
  @override
  GetActivities200Response rebuild(
          void Function(GetActivities200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetActivities200ResponseBuilder toBuilder() =>
      GetActivities200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetActivities200Response &&
        data == other.data &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetActivities200Response')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class GetActivities200ResponseBuilder
    implements
        Builder<GetActivities200Response, GetActivities200ResponseBuilder> {
  _$GetActivities200Response? _$v;

  ListBuilder<Activity>? _data;
  ListBuilder<Activity> get data => _$this._data ??= ListBuilder<Activity>();
  set data(ListBuilder<Activity>? data) => _$this._data = data;

  XMetadataBuilder? _meta;
  XMetadataBuilder get meta => _$this._meta ??= XMetadataBuilder();
  set meta(XMetadataBuilder? meta) => _$this._meta = meta;

  GetActivities200ResponseBuilder() {
    GetActivities200Response._defaults(this);
  }

  GetActivities200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetActivities200Response other) {
    _$v = other as _$GetActivities200Response;
  }

  @override
  void update(void Function(GetActivities200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetActivities200Response build() => _build();

  _$GetActivities200Response _build() {
    _$GetActivities200Response _$result;
    try {
      _$result = _$v ??
          _$GetActivities200Response._(
            data: _data?.build(),
            meta: _meta?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetActivities200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
