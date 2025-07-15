// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'importo_minimo_commissioni.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportoMinimoCommissioni extends ImportoMinimoCommissioni {
  @override
  final num? importoMinimoCommissioni;

  factory _$ImportoMinimoCommissioni(
          [void Function(ImportoMinimoCommissioniBuilder)? updates]) =>
      (new ImportoMinimoCommissioniBuilder()..update(updates))._build();

  _$ImportoMinimoCommissioni._({this.importoMinimoCommissioni}) : super._();

  @override
  ImportoMinimoCommissioni rebuild(
          void Function(ImportoMinimoCommissioniBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportoMinimoCommissioniBuilder toBuilder() =>
      new ImportoMinimoCommissioniBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportoMinimoCommissioni &&
        importoMinimoCommissioni == other.importoMinimoCommissioni;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, importoMinimoCommissioni.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportoMinimoCommissioni')
          ..add('importoMinimoCommissioni', importoMinimoCommissioni))
        .toString();
  }
}

class ImportoMinimoCommissioniBuilder
    implements
        Builder<ImportoMinimoCommissioni, ImportoMinimoCommissioniBuilder> {
  _$ImportoMinimoCommissioni? _$v;

  num? _importoMinimoCommissioni;
  num? get importoMinimoCommissioni => _$this._importoMinimoCommissioni;
  set importoMinimoCommissioni(num? importoMinimoCommissioni) =>
      _$this._importoMinimoCommissioni = importoMinimoCommissioni;

  ImportoMinimoCommissioniBuilder() {
    ImportoMinimoCommissioni._defaults(this);
  }

  ImportoMinimoCommissioniBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importoMinimoCommissioni = $v.importoMinimoCommissioni;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportoMinimoCommissioni other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportoMinimoCommissioni;
  }

  @override
  void update(void Function(ImportoMinimoCommissioniBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportoMinimoCommissioni build() => _build();

  _$ImportoMinimoCommissioni _build() {
    final _$result = _$v ??
        new _$ImportoMinimoCommissioni._(
          importoMinimoCommissioni: importoMinimoCommissioni,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
