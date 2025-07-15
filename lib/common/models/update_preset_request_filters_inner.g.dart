// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_preset_request_filters_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatePresetRequestFiltersInner
    extends UpdatePresetRequestFiltersInner {
  @override
  final String? field;
  @override
  final String? operator_;
  @override
  final int? value;

  factory _$UpdatePresetRequestFiltersInner(
          [void Function(UpdatePresetRequestFiltersInnerBuilder)? updates]) =>
      (UpdatePresetRequestFiltersInnerBuilder()..update(updates))._build();

  _$UpdatePresetRequestFiltersInner._({this.field, this.operator_, this.value})
      : super._();
  @override
  UpdatePresetRequestFiltersInner rebuild(
          void Function(UpdatePresetRequestFiltersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatePresetRequestFiltersInnerBuilder toBuilder() =>
      UpdatePresetRequestFiltersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePresetRequestFiltersInner &&
        field == other.field &&
        operator_ == other.operator_ &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, field.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdatePresetRequestFiltersInner')
          ..add('field', field)
          ..add('operator_', operator_)
          ..add('value', value))
        .toString();
  }
}

class UpdatePresetRequestFiltersInnerBuilder
    implements
        Builder<UpdatePresetRequestFiltersInner,
            UpdatePresetRequestFiltersInnerBuilder> {
  _$UpdatePresetRequestFiltersInner? _$v;

  String? _field;
  String? get field => _$this._field;
  set field(String? field) => _$this._field = field;

  String? _operator_;
  String? get operator_ => _$this._operator_;
  set operator_(String? operator_) => _$this._operator_ = operator_;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  UpdatePresetRequestFiltersInnerBuilder() {
    UpdatePresetRequestFiltersInner._defaults(this);
  }

  UpdatePresetRequestFiltersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _field = $v.field;
      _operator_ = $v.operator_;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePresetRequestFiltersInner other) {
    _$v = other as _$UpdatePresetRequestFiltersInner;
  }

  @override
  void update(void Function(UpdatePresetRequestFiltersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatePresetRequestFiltersInner build() => _build();

  _$UpdatePresetRequestFiltersInner _build() {
    final _$result = _$v ??
        _$UpdatePresetRequestFiltersInner._(
          field: field,
          operator_: operator_,
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
