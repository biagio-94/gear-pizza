// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_items_pizzas200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateItemsPizzas200Response extends UpdateItemsPizzas200Response {
  @override
  final BuiltList<ItemsPizzas>? data;

  factory _$UpdateItemsPizzas200Response(
          [void Function(UpdateItemsPizzas200ResponseBuilder)? updates]) =>
      (UpdateItemsPizzas200ResponseBuilder()..update(updates))._build();

  _$UpdateItemsPizzas200Response._({this.data}) : super._();
  @override
  UpdateItemsPizzas200Response rebuild(
          void Function(UpdateItemsPizzas200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateItemsPizzas200ResponseBuilder toBuilder() =>
      UpdateItemsPizzas200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateItemsPizzas200Response && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateItemsPizzas200Response')
          ..add('data', data))
        .toString();
  }
}

class UpdateItemsPizzas200ResponseBuilder
    implements
        Builder<UpdateItemsPizzas200Response,
            UpdateItemsPizzas200ResponseBuilder> {
  _$UpdateItemsPizzas200Response? _$v;

  ListBuilder<ItemsPizzas>? _data;
  ListBuilder<ItemsPizzas> get data =>
      _$this._data ??= ListBuilder<ItemsPizzas>();
  set data(ListBuilder<ItemsPizzas>? data) => _$this._data = data;

  UpdateItemsPizzas200ResponseBuilder() {
    UpdateItemsPizzas200Response._defaults(this);
  }

  UpdateItemsPizzas200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateItemsPizzas200Response other) {
    _$v = other as _$UpdateItemsPizzas200Response;
  }

  @override
  void update(void Function(UpdateItemsPizzas200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateItemsPizzas200Response build() => _build();

  _$UpdateItemsPizzas200Response _build() {
    _$UpdateItemsPizzas200Response _$result;
    try {
      _$result = _$v ??
          _$UpdateItemsPizzas200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateItemsPizzas200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
