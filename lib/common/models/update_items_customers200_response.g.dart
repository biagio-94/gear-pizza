// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_items_customers200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateItemsCustomers200Response
    extends UpdateItemsCustomers200Response {
  @override
  final BuiltList<ItemsCustomers>? data;

  factory _$UpdateItemsCustomers200Response(
          [void Function(UpdateItemsCustomers200ResponseBuilder)? updates]) =>
      (UpdateItemsCustomers200ResponseBuilder()..update(updates))._build();

  _$UpdateItemsCustomers200Response._({this.data}) : super._();
  @override
  UpdateItemsCustomers200Response rebuild(
          void Function(UpdateItemsCustomers200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateItemsCustomers200ResponseBuilder toBuilder() =>
      UpdateItemsCustomers200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateItemsCustomers200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'UpdateItemsCustomers200Response')
          ..add('data', data))
        .toString();
  }
}

class UpdateItemsCustomers200ResponseBuilder
    implements
        Builder<UpdateItemsCustomers200Response,
            UpdateItemsCustomers200ResponseBuilder> {
  _$UpdateItemsCustomers200Response? _$v;

  ListBuilder<ItemsCustomers>? _data;
  ListBuilder<ItemsCustomers> get data =>
      _$this._data ??= ListBuilder<ItemsCustomers>();
  set data(ListBuilder<ItemsCustomers>? data) => _$this._data = data;

  UpdateItemsCustomers200ResponseBuilder() {
    UpdateItemsCustomers200Response._defaults(this);
  }

  UpdateItemsCustomers200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateItemsCustomers200Response other) {
    _$v = other as _$UpdateItemsCustomers200Response;
  }

  @override
  void update(void Function(UpdateItemsCustomers200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateItemsCustomers200Response build() => _build();

  _$UpdateItemsCustomers200Response _build() {
    _$UpdateItemsCustomers200Response _$result;
    try {
      _$result = _$v ??
          _$UpdateItemsCustomers200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateItemsCustomers200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
