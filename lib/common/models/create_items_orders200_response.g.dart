// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_items_orders200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateItemsOrders200Response extends CreateItemsOrders200Response {
  @override
  final BuiltList<ItemsOrders>? data;

  factory _$CreateItemsOrders200Response(
          [void Function(CreateItemsOrders200ResponseBuilder)? updates]) =>
      (CreateItemsOrders200ResponseBuilder()..update(updates))._build();

  _$CreateItemsOrders200Response._({this.data}) : super._();
  @override
  CreateItemsOrders200Response rebuild(
          void Function(CreateItemsOrders200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateItemsOrders200ResponseBuilder toBuilder() =>
      CreateItemsOrders200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateItemsOrders200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'CreateItemsOrders200Response')
          ..add('data', data))
        .toString();
  }
}

class CreateItemsOrders200ResponseBuilder
    implements
        Builder<CreateItemsOrders200Response,
            CreateItemsOrders200ResponseBuilder> {
  _$CreateItemsOrders200Response? _$v;

  ListBuilder<ItemsOrders>? _data;
  ListBuilder<ItemsOrders> get data =>
      _$this._data ??= ListBuilder<ItemsOrders>();
  set data(ListBuilder<ItemsOrders>? data) => _$this._data = data;

  CreateItemsOrders200ResponseBuilder() {
    CreateItemsOrders200Response._defaults(this);
  }

  CreateItemsOrders200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateItemsOrders200Response other) {
    _$v = other as _$CreateItemsOrders200Response;
  }

  @override
  void update(void Function(CreateItemsOrders200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateItemsOrders200Response build() => _build();

  _$CreateItemsOrders200Response _build() {
    _$CreateItemsOrders200Response _$result;
    try {
      _$result = _$v ??
          _$CreateItemsOrders200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateItemsOrders200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
