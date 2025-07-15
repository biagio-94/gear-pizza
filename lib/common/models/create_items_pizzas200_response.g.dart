// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_items_pizzas200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateItemsPizzas200Response extends CreateItemsPizzas200Response {
  @override
  final BuiltList<ItemsPizzas>? data;

  factory _$CreateItemsPizzas200Response(
          [void Function(CreateItemsPizzas200ResponseBuilder)? updates]) =>
      (CreateItemsPizzas200ResponseBuilder()..update(updates))._build();

  _$CreateItemsPizzas200Response._({this.data}) : super._();
  @override
  CreateItemsPizzas200Response rebuild(
          void Function(CreateItemsPizzas200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateItemsPizzas200ResponseBuilder toBuilder() =>
      CreateItemsPizzas200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateItemsPizzas200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'CreateItemsPizzas200Response')
          ..add('data', data))
        .toString();
  }
}

class CreateItemsPizzas200ResponseBuilder
    implements
        Builder<CreateItemsPizzas200Response,
            CreateItemsPizzas200ResponseBuilder> {
  _$CreateItemsPizzas200Response? _$v;

  ListBuilder<ItemsPizzas>? _data;
  ListBuilder<ItemsPizzas> get data =>
      _$this._data ??= ListBuilder<ItemsPizzas>();
  set data(ListBuilder<ItemsPizzas>? data) => _$this._data = data;

  CreateItemsPizzas200ResponseBuilder() {
    CreateItemsPizzas200Response._defaults(this);
  }

  CreateItemsPizzas200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateItemsPizzas200Response other) {
    _$v = other as _$CreateItemsPizzas200Response;
  }

  @override
  void update(void Function(CreateItemsPizzas200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateItemsPizzas200Response build() => _build();

  _$CreateItemsPizzas200Response _build() {
    _$CreateItemsPizzas200Response _$result;
    try {
      _$result = _$v ??
          _$CreateItemsPizzas200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateItemsPizzas200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
