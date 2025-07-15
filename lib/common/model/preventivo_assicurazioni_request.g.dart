// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preventivo_assicurazioni_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreventivoAssicurazioniRequest extends PreventivoAssicurazioniRequest {
  @override
  final int id;
  @override
  final BuiltList<ServizioPreventivo> servizi;

  factory _$PreventivoAssicurazioniRequest(
          [void Function(PreventivoAssicurazioniRequestBuilder)? updates]) =>
      (new PreventivoAssicurazioniRequestBuilder()..update(updates))._build();

  _$PreventivoAssicurazioniRequest._({required this.id, required this.servizi})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'PreventivoAssicurazioniRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(
        servizi, r'PreventivoAssicurazioniRequest', 'servizi');
  }

  @override
  PreventivoAssicurazioniRequest rebuild(
          void Function(PreventivoAssicurazioniRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreventivoAssicurazioniRequestBuilder toBuilder() =>
      new PreventivoAssicurazioniRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreventivoAssicurazioniRequest &&
        id == other.id &&
        servizi == other.servizi;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, servizi.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreventivoAssicurazioniRequest')
          ..add('id', id)
          ..add('servizi', servizi))
        .toString();
  }
}

class PreventivoAssicurazioniRequestBuilder
    implements
        Builder<PreventivoAssicurazioniRequest,
            PreventivoAssicurazioniRequestBuilder> {
  _$PreventivoAssicurazioniRequest? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ListBuilder<ServizioPreventivo>? _servizi;
  ListBuilder<ServizioPreventivo> get servizi =>
      _$this._servizi ??= new ListBuilder<ServizioPreventivo>();
  set servizi(ListBuilder<ServizioPreventivo>? servizi) =>
      _$this._servizi = servizi;

  PreventivoAssicurazioniRequestBuilder() {
    PreventivoAssicurazioniRequest._defaults(this);
  }

  PreventivoAssicurazioniRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _servizi = $v.servizi.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreventivoAssicurazioniRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PreventivoAssicurazioniRequest;
  }

  @override
  void update(void Function(PreventivoAssicurazioniRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreventivoAssicurazioniRequest build() => _build();

  _$PreventivoAssicurazioniRequest _build() {
    _$PreventivoAssicurazioniRequest _$result;
    try {
      _$result = _$v ??
          new _$PreventivoAssicurazioniRequest._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PreventivoAssicurazioniRequest', 'id'),
            servizi: servizi.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'servizi';
        servizi.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PreventivoAssicurazioniRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
