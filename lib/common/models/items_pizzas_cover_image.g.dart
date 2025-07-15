// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_pizzas_cover_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemsPizzasCoverImage extends ItemsPizzasCoverImage {
  @override
  final OneOf oneOf;

  factory _$ItemsPizzasCoverImage(
          [void Function(ItemsPizzasCoverImageBuilder)? updates]) =>
      (ItemsPizzasCoverImageBuilder()..update(updates))._build();

  _$ItemsPizzasCoverImage._({required this.oneOf}) : super._();
  @override
  ItemsPizzasCoverImage rebuild(
          void Function(ItemsPizzasCoverImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsPizzasCoverImageBuilder toBuilder() =>
      ItemsPizzasCoverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsPizzasCoverImage && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemsPizzasCoverImage')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ItemsPizzasCoverImageBuilder
    implements Builder<ItemsPizzasCoverImage, ItemsPizzasCoverImageBuilder> {
  _$ItemsPizzasCoverImage? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ItemsPizzasCoverImageBuilder() {
    ItemsPizzasCoverImage._defaults(this);
  }

  ItemsPizzasCoverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsPizzasCoverImage other) {
    _$v = other as _$ItemsPizzasCoverImage;
  }

  @override
  void update(void Function(ItemsPizzasCoverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsPizzasCoverImage build() => _build();

  _$ItemsPizzasCoverImage _build() {
    final _$result = _$v ??
        _$ItemsPizzasCoverImage._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ItemsPizzasCoverImage', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
