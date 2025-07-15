// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Oauth200Response extends Oauth200Response {
  @override
  final bool? public;
  @override
  final BuiltList<String>? data;

  factory _$Oauth200Response(
          [void Function(Oauth200ResponseBuilder)? updates]) =>
      (Oauth200ResponseBuilder()..update(updates))._build();

  _$Oauth200Response._({this.public, this.data}) : super._();
  @override
  Oauth200Response rebuild(void Function(Oauth200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Oauth200ResponseBuilder toBuilder() =>
      Oauth200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Oauth200Response &&
        public == other.public &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, public.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Oauth200Response')
          ..add('public', public)
          ..add('data', data))
        .toString();
  }
}

class Oauth200ResponseBuilder
    implements Builder<Oauth200Response, Oauth200ResponseBuilder> {
  _$Oauth200Response? _$v;

  bool? _public;
  bool? get public => _$this._public;
  set public(bool? public) => _$this._public = public;

  ListBuilder<String>? _data;
  ListBuilder<String> get data => _$this._data ??= ListBuilder<String>();
  set data(ListBuilder<String>? data) => _$this._data = data;

  Oauth200ResponseBuilder() {
    Oauth200Response._defaults(this);
  }

  Oauth200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _public = $v.public;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Oauth200Response other) {
    _$v = other as _$Oauth200Response;
  }

  @override
  void update(void Function(Oauth200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Oauth200Response build() => _build();

  _$Oauth200Response _build() {
    _$Oauth200Response _$result;
    try {
      _$result = _$v ??
          _$Oauth200Response._(
            public: public,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Oauth200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
