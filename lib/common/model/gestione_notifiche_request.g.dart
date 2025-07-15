// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gestione_notifiche_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GestioneNotificheRequest extends GestioneNotificheRequest {
  @override
  final String? tokenFirebase;
  @override
  final bool? notifiche;

  factory _$GestioneNotificheRequest(
          [void Function(GestioneNotificheRequestBuilder)? updates]) =>
      (new GestioneNotificheRequestBuilder()..update(updates))._build();

  _$GestioneNotificheRequest._({this.tokenFirebase, this.notifiche})
      : super._();

  @override
  GestioneNotificheRequest rebuild(
          void Function(GestioneNotificheRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GestioneNotificheRequestBuilder toBuilder() =>
      new GestioneNotificheRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GestioneNotificheRequest &&
        tokenFirebase == other.tokenFirebase &&
        notifiche == other.notifiche;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenFirebase.hashCode);
    _$hash = $jc(_$hash, notifiche.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GestioneNotificheRequest')
          ..add('tokenFirebase', tokenFirebase)
          ..add('notifiche', notifiche))
        .toString();
  }
}

class GestioneNotificheRequestBuilder
    implements
        Builder<GestioneNotificheRequest, GestioneNotificheRequestBuilder> {
  _$GestioneNotificheRequest? _$v;

  String? _tokenFirebase;
  String? get tokenFirebase => _$this._tokenFirebase;
  set tokenFirebase(String? tokenFirebase) =>
      _$this._tokenFirebase = tokenFirebase;

  bool? _notifiche;
  bool? get notifiche => _$this._notifiche;
  set notifiche(bool? notifiche) => _$this._notifiche = notifiche;

  GestioneNotificheRequestBuilder() {
    GestioneNotificheRequest._defaults(this);
  }

  GestioneNotificheRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenFirebase = $v.tokenFirebase;
      _notifiche = $v.notifiche;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GestioneNotificheRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GestioneNotificheRequest;
  }

  @override
  void update(void Function(GestioneNotificheRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GestioneNotificheRequest build() => _build();

  _$GestioneNotificheRequest _build() {
    final _$result = _$v ??
        new _$GestioneNotificheRequest._(
          tokenFirebase: tokenFirebase,
          notifiche: notifiche,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
