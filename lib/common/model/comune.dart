// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comune.g.dart';

/// Comune
///
/// Properties:
/// * [codice]
/// * [nome]
@BuiltValue()
abstract class Comune implements Built<Comune, ComuneBuilder> {
  @BuiltValueField(wireName: r'codice')
  String? get codice;

  @BuiltValueField(wireName: r'nome')
  String? get descrizione;

  Comune._();
  factory Comune([void Function(ComuneBuilder b) updates]) = _$Comune;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComuneBuilder b) => b;
}

class _$ComuneSerializer implements StructuredSerializer<Comune> {
  @override
  final Iterable<Type> types = const [Comune, _$Comune];
  @override
  final String wireName = 'Comune';

  @override
  Iterable<Object?> serialize(Serializers serializers, Comune object,
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
    return result;
  }

  @override
  Comune deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ComuneBuilder();
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
      }
    }
    return result.build();
  }
}
