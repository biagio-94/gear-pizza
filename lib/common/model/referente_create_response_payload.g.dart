// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referente_create_response_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReferenteCreateResponsePayload extends ReferenteCreateResponsePayload {
  @override
  final String? id;

  factory _$ReferenteCreateResponsePayload(
          [void Function(ReferenteCreateResponsePayloadBuilder)? updates]) =>
      (new ReferenteCreateResponsePayloadBuilder()..update(updates))._build();

  _$ReferenteCreateResponsePayload._({this.id}) : super._();

  @override
  ReferenteCreateResponsePayload rebuild(
          void Function(ReferenteCreateResponsePayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReferenteCreateResponsePayloadBuilder toBuilder() =>
      new ReferenteCreateResponsePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferenteCreateResponsePayload && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReferenteCreateResponsePayload')
          ..add('id', id))
        .toString();
  }
}

class ReferenteCreateResponsePayloadBuilder
    implements
        Builder<ReferenteCreateResponsePayload,
            ReferenteCreateResponsePayloadBuilder> {
  _$ReferenteCreateResponsePayload? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ReferenteCreateResponsePayloadBuilder() {
    ReferenteCreateResponsePayload._defaults(this);
  }

  ReferenteCreateResponsePayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferenteCreateResponsePayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReferenteCreateResponsePayload;
  }

  @override
  void update(void Function(ReferenteCreateResponsePayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferenteCreateResponsePayload build() => _build();

  _$ReferenteCreateResponsePayload _build() {
    final _$result = _$v ??
        new _$ReferenteCreateResponsePayload._(
          id: id,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
