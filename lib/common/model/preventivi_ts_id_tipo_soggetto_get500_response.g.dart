// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivi_ts_id_tipo_soggetto_get500_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventiviTsIdTipoSoggettoGet500Response
    extends PreventiviTsIdTipoSoggettoGet500Response {
  @override
  final String? error;

  factory _$PreventiviTsIdTipoSoggettoGet500Response(
          [void Function(PreventiviTsIdTipoSoggettoGet500ResponseBuilder)?
              updates]) =>
      (new PreventiviTsIdTipoSoggettoGet500ResponseBuilder()..update(updates))
          ._build();

  _$PreventiviTsIdTipoSoggettoGet500Response._({this.error}) : super._();

  @override
  PreventiviTsIdTipoSoggettoGet500Response rebuild(
          void Function(PreventiviTsIdTipoSoggettoGet500ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventiviTsIdTipoSoggettoGet500ResponseBuilder toBuilder() =>
      new PreventiviTsIdTipoSoggettoGet500ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventiviTsIdTipoSoggettoGet500Response &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PreventiviTsIdTipoSoggettoGet500Response')
          ..add('error', error))
        .toString();
  }
}

class PreventiviTsIdTipoSoggettoGet500ResponseBuilder
    implements
        Builder<PreventiviTsIdTipoSoggettoGet500Response,
            PreventiviTsIdTipoSoggettoGet500ResponseBuilder> {
  _$PreventiviTsIdTipoSoggettoGet500Response? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  PreventiviTsIdTipoSoggettoGet500ResponseBuilder() {
    PreventiviTsIdTipoSoggettoGet500Response._defaults(this);
  }

  PreventiviTsIdTipoSoggettoGet500ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventiviTsIdTipoSoggettoGet500Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventiviTsIdTipoSoggettoGet500Response;
  }

  @override
  void update(
      void Function(PreventiviTsIdTipoSoggettoGet500ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventiviTsIdTipoSoggettoGet500Response build() => _build();

  _$PreventiviTsIdTipoSoggettoGet500Response _build() {
    final _$result = _$v ??
        new _$PreventiviTsIdTipoSoggettoGet500Response._(
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
