// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invia_dol_response_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InviaDolResponsePayload extends InviaDolResponsePayload {
  @override
  final int? id;
  @override
  final num? numeroBozza;

  factory _$InviaDolResponsePayload(
          [void Function(InviaDolResponsePayloadBuilder)? updates]) =>
      (new InviaDolResponsePayloadBuilder()..update(updates))._build();

  _$InviaDolResponsePayload._({this.id, this.numeroBozza}) : super._();

  @override
  InviaDolResponsePayload rebuild(
          void Function(InviaDolResponsePayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InviaDolResponsePayloadBuilder toBuilder() =>
      new InviaDolResponsePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InviaDolResponsePayload &&
        id == other.id &&
        numeroBozza == other.numeroBozza;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, numeroBozza.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InviaDolResponsePayload')
          ..add('id', id)
          ..add('numeroBozza', numeroBozza))
        .toString();
  }
}

class InviaDolResponsePayloadBuilder
    implements
        Builder<InviaDolResponsePayload, InviaDolResponsePayloadBuilder> {
  _$InviaDolResponsePayload? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  num? _numeroBozza;
  num? get numeroBozza => _$this._numeroBozza;
  set numeroBozza(num? numeroBozza) => _$this._numeroBozza = numeroBozza;

  InviaDolResponsePayloadBuilder() {
    InviaDolResponsePayload._defaults(this);
  }

  InviaDolResponsePayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _numeroBozza = $v.numeroBozza;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InviaDolResponsePayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InviaDolResponsePayload;
  }

  @override
  void update(void Function(InviaDolResponsePayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InviaDolResponsePayload build() => _build();

  _$InviaDolResponsePayload _build() {
    final _$result = _$v ??
        new _$InviaDolResponsePayload._(
          id: id,
          numeroBozza: numeroBozza,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
