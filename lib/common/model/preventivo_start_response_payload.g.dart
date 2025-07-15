// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_start_response_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoStartResponsePayload extends PreventivoStartResponsePayload {
  @override
  final int? id;

  factory _$PreventivoStartResponsePayload(
          [void Function(PreventivoStartResponsePayloadBuilder)? updates]) =>
      (new PreventivoStartResponsePayloadBuilder()..update(updates))._build();

  _$PreventivoStartResponsePayload._({this.id}) : super._();

  @override
  PreventivoStartResponsePayload rebuild(
          void Function(PreventivoStartResponsePayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoStartResponsePayloadBuilder toBuilder() =>
      new PreventivoStartResponsePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoStartResponsePayload && id == other.id;
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
    return (newBuiltValueToStringHelper(r'PreventivoStartResponsePayload')
          ..add('id', id))
        .toString();
  }
}

class PreventivoStartResponsePayloadBuilder
    implements
        Builder<PreventivoStartResponsePayload,
            PreventivoStartResponsePayloadBuilder> {
  _$PreventivoStartResponsePayload? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  PreventivoStartResponsePayloadBuilder() {
    PreventivoStartResponsePayload._defaults(this);
  }

  PreventivoStartResponsePayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoStartResponsePayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoStartResponsePayload;
  }

  @override
  void update(void Function(PreventivoStartResponsePayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoStartResponsePayload build() => _build();

  _$PreventivoStartResponsePayload _build() {
    final _$result = _$v ??
        new _$PreventivoStartResponsePayload._(
          id: id,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
