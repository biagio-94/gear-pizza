// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_preset_request_filters_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePresetRequestFiltersInner
    extends CreatePresetRequestFiltersInner {
  @override
  final String? key;
  @override
  final String? field;
  @override
  final String? operator_;
  @override
  final int? value;

  factory _$CreatePresetRequestFiltersInner(
          [void Function(CreatePresetRequestFiltersInnerBuilder)? updates]) =>
      (CreatePresetRequestFiltersInnerBuilder()..update(updates))._build();

  _$CreatePresetRequestFiltersInner._(
      {this.key, this.field, this.operator_, this.value})
      : super._();
  @override
  CreatePresetRequestFiltersInner rebuild(
          void Function(CreatePresetRequestFiltersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePresetRequestFiltersInnerBuilder toBuilder() =>
      CreatePresetRequestFiltersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePresetRequestFiltersInner &&
        key == other.key &&
        field == other.field &&
        operator_ == other.operator_ &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, field.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePresetRequestFiltersInner')
          ..add('key', key)
          ..add('field', field)
          ..add('operator_', operator_)
          ..add('value', value))
        .toString();
  }
}

class CreatePresetRequestFiltersInnerBuilder
    implements
        Builder<CreatePresetRequestFiltersInner,
            CreatePresetRequestFiltersInnerBuilder> {
  _$CreatePresetRequestFiltersInner? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _field;
  String? get field => _$this._field;
  set field(String? field) => _$this._field = field;

  String? _operator_;
  String? get operator_ => _$this._operator_;
  set operator_(String? operator_) => _$this._operator_ = operator_;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  CreatePresetRequestFiltersInnerBuilder() {
    CreatePresetRequestFiltersInner._defaults(this);
  }

  CreatePresetRequestFiltersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _field = $v.field;
      _operator_ = $v.operator_;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePresetRequestFiltersInner other) {
    _$v = other as _$CreatePresetRequestFiltersInner;
  }

  @override
  void update(void Function(CreatePresetRequestFiltersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePresetRequestFiltersInner build() => _build();

  _$CreatePresetRequestFiltersInner _build() {
    final _$result = _$v ??
        _$CreatePresetRequestFiltersInner._(
          key: key,
          field: field,
          operator_: operator_,
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
