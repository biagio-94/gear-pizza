// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_single_items_pizzas200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadSingleItemsPizzas200Response
    extends ReadSingleItemsPizzas200Response {
  @override
  final ItemsPizzas? data;

  factory _$ReadSingleItemsPizzas200Response(
          [void Function(ReadSingleItemsPizzas200ResponseBuilder)? updates]) =>
      (ReadSingleItemsPizzas200ResponseBuilder()..update(updates))._build();

  _$ReadSingleItemsPizzas200Response._({this.data}) : super._();
  @override
  ReadSingleItemsPizzas200Response rebuild(
          void Function(ReadSingleItemsPizzas200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadSingleItemsPizzas200ResponseBuilder toBuilder() =>
      ReadSingleItemsPizzas200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadSingleItemsPizzas200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'ReadSingleItemsPizzas200Response')
          ..add('data', data))
        .toString();
  }
}

class ReadSingleItemsPizzas200ResponseBuilder
    implements
        Builder<ReadSingleItemsPizzas200Response,
            ReadSingleItemsPizzas200ResponseBuilder> {
  _$ReadSingleItemsPizzas200Response? _$v;

  ItemsPizzasBuilder? _data;
  ItemsPizzasBuilder get data => _$this._data ??= ItemsPizzasBuilder();
  set data(ItemsPizzasBuilder? data) => _$this._data = data;

  ReadSingleItemsPizzas200ResponseBuilder() {
    ReadSingleItemsPizzas200Response._defaults(this);
  }

  ReadSingleItemsPizzas200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadSingleItemsPizzas200Response other) {
    _$v = other as _$ReadSingleItemsPizzas200Response;
  }

  @override
  void update(void Function(ReadSingleItemsPizzas200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadSingleItemsPizzas200Response build() => _build();

  _$ReadSingleItemsPizzas200Response _build() {
    _$ReadSingleItemsPizzas200Response _$result;
    try {
      _$result = _$v ??
          _$ReadSingleItemsPizzas200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReadSingleItemsPizzas200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
