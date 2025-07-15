// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gearpizza/common/model/comune.dart';

part 'provincia.g.dart';

/// Provincia
///
/// Properties:
/// * [codice]
/// * [nome]
/// * [comuni]
@BuiltValue()
abstract class Provincia implements Built<Provincia, ProvinciaBuilder> {
  @BuiltValueField(wireName: r'codice')
  String? get codice;

  @BuiltValueField(wireName: r'nome')
  String? get descrizione;

  @BuiltValueField(wireName: r'comuni')
  BuiltList<Comune>? get comuni;

  Provincia._();
  factory Provincia([void Function(ProvinciaBuilder b) updates]) = _$Provincia;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProvinciaBuilder b) => b;
}

class _$ProvinciaSerializer implements StructuredSerializer<Provincia> {
  @override
  final Iterable<Type> types = const [Provincia, _$Provincia];
  @override
  final String wireName = 'Provincia';

  @override
  Iterable<Object?> serialize(Serializers serializers, Provincia object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.codice != null) {
      result
        ..add('codice')
        ..add(serializers.serialize(object.codice,
            specifiedType: const FullType(String)));
    }
    if (object.descrizione != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(object.descrizione,
            specifiedType: const FullType(String)));
    }
    if (object.comuni != null) {
      result
        ..add('comuni')
        ..add(serializers.serialize(object.comuni,
            specifiedType: const FullType(BuiltList, [FullType(Comune)])));
    }
    return result;
  }

  @override
  Provincia deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ProvinciaBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'codice':
          result.codice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nome':
          result.descrizione = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comuni':
          result.comuni.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, [FullType(Comune)]))
              as BuiltList<Comune>);
          break;
      }
    }
    return result.build();
  }
}
