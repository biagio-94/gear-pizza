// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_items_orders_pizzas200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateItemsOrdersPizzas200Response
    extends CreateItemsOrdersPizzas200Response {
  @override
  final BuiltList<ItemsOrdersPizzas>? data;

  factory _$CreateItemsOrdersPizzas200Response(
          [void Function(CreateItemsOrdersPizzas200ResponseBuilder)?
              updates]) =>
      (CreateItemsOrdersPizzas200ResponseBuilder()..update(updates))._build();

  _$CreateItemsOrdersPizzas200Response._({this.data}) : super._();
  @override
  CreateItemsOrdersPizzas200Response rebuild(
          void Function(CreateItemsOrdersPizzas200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateItemsOrdersPizzas200ResponseBuilder toBuilder() =>
      CreateItemsOrdersPizzas200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateItemsOrdersPizzas200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'CreateItemsOrdersPizzas200Response')
          ..add('data', data))
        .toString();
  }
}

class CreateItemsOrdersPizzas200ResponseBuilder
    implements
        Builder<CreateItemsOrdersPizzas200Response,
            CreateItemsOrdersPizzas200ResponseBuilder> {
  _$CreateItemsOrdersPizzas200Response? _$v;

  ListBuilder<ItemsOrdersPizzas>? _data;
  ListBuilder<ItemsOrdersPizzas> get data =>
      _$this._data ??= ListBuilder<ItemsOrdersPizzas>();
  set data(ListBuilder<ItemsOrdersPizzas>? data) => _$this._data = data;

  CreateItemsOrdersPizzas200ResponseBuilder() {
    CreateItemsOrdersPizzas200Response._defaults(this);
  }

  CreateItemsOrdersPizzas200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateItemsOrdersPizzas200Response other) {
    _$v = other as _$CreateItemsOrdersPizzas200Response;
  }

  @override
  void update(
      void Function(CreateItemsOrdersPizzas200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateItemsOrdersPizzas200Response build() => _build();

  _$CreateItemsOrdersPizzas200Response _build() {
    _$CreateItemsOrdersPizzas200Response _$result;
    try {
      _$result = _$v ??
          _$CreateItemsOrdersPizzas200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateItemsOrdersPizzas200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
