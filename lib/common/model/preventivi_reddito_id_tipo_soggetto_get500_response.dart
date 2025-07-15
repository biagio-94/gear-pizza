//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preventivi_reddito_id_tipo_soggetto_get500_response.g.dart';

/// PreventiviRedditoIdTipoSoggettoGet500Response
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class PreventiviRedditoIdTipoSoggettoGet500Response
    implements
        Built<PreventiviRedditoIdTipoSoggettoGet500Response,
            PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  PreventiviRedditoIdTipoSoggettoGet500Response._();

  factory PreventiviRedditoIdTipoSoggettoGet500Response(
      [void Function(PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder b)
          updates]) = _$PreventiviRedditoIdTipoSoggettoGet500Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreventiviRedditoIdTipoSoggettoGet500Response>
      get serializer =>
          _$PreventiviRedditoIdTipoSoggettoGet500ResponseSerializer();
}

class _$PreventiviRedditoIdTipoSoggettoGet500ResponseSerializer
    implements
        PrimitiveSerializer<PreventiviRedditoIdTipoSoggettoGet500Response> {
  @override
  final Iterable<Type> types = const [
    PreventiviRedditoIdTipoSoggettoGet500Response,
    _$PreventiviRedditoIdTipoSoggettoGet500Response
  ];

  @override
  final String wireName = r'PreventiviRedditoIdTipoSoggettoGet500Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreventiviRedditoIdTipoSoggettoGet500Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreventiviRedditoIdTipoSoggettoGet500Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreventiviRedditoIdTipoSoggettoGet500Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreventiviRedditoIdTipoSoggettoGet500ResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
