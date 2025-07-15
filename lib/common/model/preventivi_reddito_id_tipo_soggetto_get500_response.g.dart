// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivi_reddito_id_tipo_soggetto_get500_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventiviRedditoIdTipoSoggettoGet500Response
    extends PreventiviRedditoIdTipoSoggettoGet500Response {
  @override
  final String? error;

  factory _$PreventiviRedditoIdTipoSoggettoGet500Response(
          [void Function(PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder)?
              updates]) =>
      (new PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder()
            ..update(updates))
          ._build();

  _$PreventiviRedditoIdTipoSoggettoGet500Response._({this.error}) : super._();

  @override
  PreventiviRedditoIdTipoSoggettoGet500Response rebuild(
          void Function(PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder toBuilder() =>
      new PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventiviRedditoIdTipoSoggettoGet500Response &&
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
            r'PreventiviRedditoIdTipoSoggettoGet500Response')
          ..add('error', error))
        .toString();
  }
}

class PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder
    implements
        Builder<PreventiviRedditoIdTipoSoggettoGet500Response,
            PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder> {
  _$PreventiviRedditoIdTipoSoggettoGet500Response? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder() {
    PreventiviRedditoIdTipoSoggettoGet500Response._defaults(this);
  }

  PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventiviRedditoIdTipoSoggettoGet500Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventiviRedditoIdTipoSoggettoGet500Response;
  }

  @override
  void update(
      void Function(PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventiviRedditoIdTipoSoggettoGet500Response build() => _build();

  _$PreventiviRedditoIdTipoSoggettoGet500Response _build() {
    final _$result = _$v ??
        new _$PreventiviRedditoIdTipoSoggettoGet500Response._(
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
