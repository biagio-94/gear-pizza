// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fields.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Fields extends Fields {
  @override
  final int? id;
  @override
  final String? collection;
  @override
  final String? field;
  @override
  final BuiltList<String>? special;
  @override
  final String? interface_;
  @override
  final JsonObject? options;
  @override
  final String? display;
  @override
  final JsonObject? displayOptions;
  @override
  final bool? readonly;
  @override
  final bool? hidden;
  @override
  final int? sort;
  @override
  final String? width;
  @override
  final JsonObject? translations;
  @override
  final String? note;
  @override
  final JsonObject? conditions;
  @override
  final bool? required_;
  @override
  final FieldsGroup? group;
  @override
  final JsonObject? validation;
  @override
  final String? validationMessage;

  factory _$Fields([void Function(FieldsBuilder)? updates]) =>
      (FieldsBuilder()..update(updates))._build();

  _$Fields._(
      {this.id,
      this.collection,
      this.field,
      this.special,
      this.interface_,
      this.options,
      this.display,
      this.displayOptions,
      this.readonly,
      this.hidden,
      this.sort,
      this.width,
      this.translations,
      this.note,
      this.conditions,
      this.required_,
      this.group,
      this.validation,
      this.validationMessage})
      : super._();
  @override
  Fields rebuild(void Function(FieldsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldsBuilder toBuilder() => FieldsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Fields &&
        id == other.id &&
        collection == other.collection &&
        field == other.field &&
        special == other.special &&
        interface_ == other.interface_ &&
        options == other.options &&
        display == other.display &&
        displayOptions == other.displayOptions &&
        readonly == other.readonly &&
        hidden == other.hidden &&
        sort == other.sort &&
        width == other.width &&
        translations == other.translations &&
        note == other.note &&
        conditions == other.conditions &&
        required_ == other.required_ &&
        group == other.group &&
        validation == other.validation &&
        validationMessage == other.validationMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, collection.hashCode);
    _$hash = $jc(_$hash, field.hashCode);
    _$hash = $jc(_$hash, special.hashCode);
    _$hash = $jc(_$hash, interface_.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, display.hashCode);
    _$hash = $jc(_$hash, displayOptions.hashCode);
    _$hash = $jc(_$hash, readonly.hashCode);
    _$hash = $jc(_$hash, hidden.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, translations.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, conditions.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, validation.hashCode);
    _$hash = $jc(_$hash, validationMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Fields')
          ..add('id', id)
          ..add('collection', collection)
          ..add('field', field)
          ..add('special', special)
          ..add('interface_', interface_)
          ..add('options', options)
          ..add('display', display)
          ..add('displayOptions', displayOptions)
          ..add('readonly', readonly)
          ..add('hidden', hidden)
          ..add('sort', sort)
          ..add('width', width)
          ..add('translations', translations)
          ..add('note', note)
          ..add('conditions', conditions)
          ..add('required_', required_)
          ..add('group', group)
          ..add('validation', validation)
          ..add('validationMessage', validationMessage))
        .toString();
  }
}

class FieldsBuilder implements Builder<Fields, FieldsBuilder> {
  _$Fields? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _collection;
  String? get collection => _$this._collection;
  set collection(String? collection) => _$this._collection = collection;

  String? _field;
  String? get field => _$this._field;
  set field(String? field) => _$this._field = field;

  ListBuilder<String>? _special;
  ListBuilder<String> get special => _$this._special ??= ListBuilder<String>();
  set special(ListBuilder<String>? special) => _$this._special = special;

  String? _interface_;
  String? get interface_ => _$this._interface_;
  set interface_(String? interface_) => _$this._interface_ = interface_;

  JsonObject? _options;
  JsonObject? get options => _$this._options;
  set options(JsonObject? options) => _$this._options = options;

  String? _display;
  String? get display => _$this._display;
  set display(String? display) => _$this._display = display;

  JsonObject? _displayOptions;
  JsonObject? get displayOptions => _$this._displayOptions;
  set displayOptions(JsonObject? displayOptions) =>
      _$this._displayOptions = displayOptions;

  bool? _readonly;
  bool? get readonly => _$this._readonly;
  set readonly(bool? readonly) => _$this._readonly = readonly;

  bool? _hidden;
  bool? get hidden => _$this._hidden;
  set hidden(bool? hidden) => _$this._hidden = hidden;

  int? _sort;
  int? get sort => _$this._sort;
  set sort(int? sort) => _$this._sort = sort;

  String? _width;
  String? get width => _$this._width;
  set width(String? width) => _$this._width = width;

  JsonObject? _translations;
  JsonObject? get translations => _$this._translations;
  set translations(JsonObject? translations) =>
      _$this._translations = translations;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  JsonObject? _conditions;
  JsonObject? get conditions => _$this._conditions;
  set conditions(JsonObject? conditions) => _$this._conditions = conditions;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  FieldsGroupBuilder? _group;
  FieldsGroupBuilder get group => _$this._group ??= FieldsGroupBuilder();
  set group(FieldsGroupBuilder? group) => _$this._group = group;

  JsonObject? _validation;
  JsonObject? get validation => _$this._validation;
  set validation(JsonObject? validation) => _$this._validation = validation;

  String? _validationMessage;
  String? get validationMessage => _$this._validationMessage;
  set validationMessage(String? validationMessage) =>
      _$this._validationMessage = validationMessage;

  FieldsBuilder() {
    Fields._defaults(this);
  }

  FieldsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _collection = $v.collection;
      _field = $v.field;
      _special = $v.special?.toBuilder();
      _interface_ = $v.interface_;
      _options = $v.options;
      _display = $v.display;
      _displayOptions = $v.displayOptions;
      _readonly = $v.readonly;
      _hidden = $v.hidden;
      _sort = $v.sort;
      _width = $v.width;
      _translations = $v.translations;
      _note = $v.note;
      _conditions = $v.conditions;
      _required_ = $v.required_;
      _group = $v.group?.toBuilder();
      _validation = $v.validation;
      _validationMessage = $v.validationMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Fields other) {
    _$v = other as _$Fields;
  }

  @override
  void update(void Function(FieldsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Fields build() => _build();

  _$Fields _build() {
    _$Fields _$result;
    try {
      _$result = _$v ??
          _$Fields._(
            id: id,
            collection: collection,
            field: field,
            special: _special?.build(),
            interface_: interface_,
            options: options,
            display: display,
            displayOptions: displayOptions,
            readonly: readonly,
            hidden: hidden,
            sort: sort,
            width: width,
            translations: translations,
            note: note,
            conditions: conditions,
            required_: required_,
            group: _group?.build(),
            validation: validation,
            validationMessage: validationMessage,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'special';
        _special?.build();

        _$failedField = 'group';
        _group?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Fields', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
