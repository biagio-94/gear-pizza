// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivi_ts_id_tipo_soggetto_post500_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventiviTsIdTipoSoggettoPost500Response
    extends PreventiviTsIdTipoSoggettoPost500Response {
  @override
  final String? error;

  factory _$PreventiviTsIdTipoSoggettoPost500Response(
          [void Function(PreventiviTsIdTipoSoggettoPost500ResponseBuilder)?
              updates]) =>
      (new PreventiviTsIdTipoSoggettoPost500ResponseBuilder()..update(updates))
          ._build();

  _$PreventiviTsIdTipoSoggettoPost500Response._({this.error}) : super._();

  @override
  PreventiviTsIdTipoSoggettoPost500Response rebuild(
          void Function(PreventiviTsIdTipoSoggettoPost500ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventiviTsIdTipoSoggettoPost500ResponseBuilder toBuilder() =>
      new PreventiviTsIdTipoSoggettoPost500ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventiviTsIdTipoSoggettoPost500Response &&
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
            r'PreventiviTsIdTipoSoggettoPost500Response')
          ..add('error', error))
        .toString();
  }
}

class PreventiviTsIdTipoSoggettoPost500ResponseBuilder
    implements
        Builder<PreventiviTsIdTipoSoggettoPost500Response,
            PreventiviTsIdTipoSoggettoPost500ResponseBuilder> {
  _$PreventiviTsIdTipoSoggettoPost500Response? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  PreventiviTsIdTipoSoggettoPost500ResponseBuilder() {
    PreventiviTsIdTipoSoggettoPost500Response._defaults(this);
  }

  PreventiviTsIdTipoSoggettoPost500ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventiviTsIdTipoSoggettoPost500Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventiviTsIdTipoSoggettoPost500Response;
  }

  @override
  void update(
      void Function(PreventiviTsIdTipoSoggettoPost500ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventiviTsIdTipoSoggettoPost500Response build() => _build();

  _$PreventiviTsIdTipoSoggettoPost500Response _build() {
    final _$result = _$v ??
        new _$PreventiviTsIdTipoSoggettoPost500Response._(
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
