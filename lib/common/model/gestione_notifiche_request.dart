//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gestione_notifiche_request.g.dart';

/// GestioneNotificheRequest
///
/// Properties:
/// * [tokenFirebase]
/// * [notifiche]
@BuiltValue()
abstract class GestioneNotificheRequest
    implements
        Built<GestioneNotificheRequest, GestioneNotificheRequestBuilder> {
  @BuiltValueField(wireName: r'tokenFirebase')
  String? get tokenFirebase;

  @BuiltValueField(wireName: r'notifiche')
  bool? get notifiche;

  GestioneNotificheRequest._();

  factory GestioneNotificheRequest(
          [void Function(GestioneNotificheRequestBuilder b) updates]) =
      _$GestioneNotificheRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GestioneNotificheRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GestioneNotificheRequest> get serializer =>
      _$GestioneNotificheRequestSerializer();
}

class _$GestioneNotificheRequestSerializer
    implements PrimitiveSerializer<GestioneNotificheRequest> {
  @override
  final Iterable<Type> types = const [
    GestioneNotificheRequest,
    _$GestioneNotificheRequest
  ];

  @override
  final String wireName = r'GestioneNotificheRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GestioneNotificheRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tokenFirebase != null) {
      yield r'tokenFirebase';
      yield serializers.serialize(
        object.tokenFirebase,
        specifiedType: const FullType(String),
      );
    }
    if (object.notifiche != null) {
      yield r'notifiche';
      yield serializers.serialize(
        object.notifiche,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GestioneNotificheRequest object, {
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
    required GestioneNotificheRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tokenFirebase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenFirebase = valueDes;
          break;
        case r'notifiche':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.notifiche = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GestioneNotificheRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GestioneNotificheRequestBuilder();
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
