//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:gearpizza/common/model/date.dart';

import 'package:gearpizza/common/model/allestimento.dart';
import 'package:gearpizza/common/model/api_error.dart';
import 'package:gearpizza/common/model/comune.dart';
import 'package:gearpizza/common/model/configurazione_prodotto.dart';
import 'package:gearpizza/common/model/dati_calc_rata.dart';
import 'package:gearpizza/common/model/dati_calcolatrice_request.dart';
import 'package:gearpizza/common/model/dati_calcolatrice_response.dart';
import 'package:gearpizza/common/model/dati_calcolatrice_response_item.dart';
import 'package:gearpizza/common/model/dati_contatto.dart';
import 'package:gearpizza/common/model/dati_contatto_referente.dart';
import 'package:gearpizza/common/model/dati_persona.dart';
import 'package:gearpizza/common/model/dati_reddito.dart';
import 'package:gearpizza/common/model/dati_tessera_sanitaria.dart';
import 'package:gearpizza/common/model/dati_tessera_sanitaria_response.dart';
import 'package:gearpizza/common/model/documenti_ocr_response.dart';
import 'package:gearpizza/common/model/funzionalita.dart';
import 'package:gearpizza/common/model/gestione_notifiche_request.dart';
import 'package:gearpizza/common/model/get_importo_commissioni_protette_request.dart';
import 'package:gearpizza/common/model/get_importo_commissioni_protette_response.dart';
import 'package:gearpizza/common/model/importo_minimo_commissioni.dart';
import 'package:gearpizza/common/model/importo_minimo_commissioni_request.dart';
import 'package:gearpizza/common/model/intermediario.dart';
import 'package:gearpizza/common/model/invia_dol_request.dart';
import 'package:gearpizza/common/model/invia_dol_response.dart';
import 'package:gearpizza/common/model/invia_dol_response_payload.dart';
import 'package:gearpizza/common/model/marca.dart';
import 'package:gearpizza/common/model/modello.dart';
import 'package:gearpizza/common/model/notifiche_elenco_item.dart';
import 'package:gearpizza/common/model/occupazione.dart';
import 'package:gearpizza/common/model/pacchetto_assicurativo.dart';
import 'package:gearpizza/common/model/preventivi_get_destinazione_bene.dart';
import 'package:gearpizza/common/model/preventivi_reddito_id_tipo_soggetto_get500_response.dart';
import 'package:gearpizza/common/model/preventivi_ts_id_tipo_soggetto_get500_response.dart';
import 'package:gearpizza/common/model/preventivi_ts_id_tipo_soggetto_post500_response.dart';
import 'package:gearpizza/common/model/preventivo_assicurazioni_request.dart';
import 'package:gearpizza/common/model/preventivo_dati_calc_rata_response.dart';
import 'package:gearpizza/common/model/preventivo_dati_finanziamento.dart';
import 'package:gearpizza/common/model/preventivo_dati_persona_response.dart';
import 'package:gearpizza/common/model/preventivo_dati_reddito_response.dart';
import 'package:gearpizza/common/model/preventivo_dati_targa_request.dart';
import 'package:gearpizza/common/model/preventivo_dati_targa_response.dart';
import 'package:gearpizza/common/model/preventivo_dati_targa_response_payload.dart';
import 'package:gearpizza/common/model/preventivo_elenco_item.dart';
import 'package:gearpizza/common/model/preventivo_salva_calc_rata_request.dart';
import 'package:gearpizza/common/model/preventivo_start_request.dart';
import 'package:gearpizza/common/model/preventivo_start_response.dart';
import 'package:gearpizza/common/model/preventivo_start_response_payload.dart';
import 'package:gearpizza/common/model/provincia.dart';
import 'package:gearpizza/common/model/referente_create_response.dart';
import 'package:gearpizza/common/model/referente_create_response_payload.dart';
import 'package:gearpizza/common/model/referente_response.dart';
import 'package:gearpizza/common/model/servizio.dart';
import 'package:gearpizza/common/model/servizio_assicurativo.dart';
import 'package:gearpizza/common/model/servizio_preventivo.dart';
import 'package:gearpizza/common/model/tabella_finanziaria.dart';
import 'package:gearpizza/common/model/tipo_documento.dart';
import 'package:gearpizza/common/utils/date_serializer.dart';
import 'package:gearpizza/features/auth/models/login_refresh_request.dart';
import 'package:gearpizza/features/auth/models/login_request.dart';
import 'package:gearpizza/features/auth/models/login_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  Allestimento,
  ApiError,
  Comune,
  ConfigurazioneProdotto,
  DatiContatto,
  DatiPersona,
  DatiReddito,
  DatiCalcRata,
  ImportoMinimoCommissioni,
  PreventivoDatiCalcRataResponse,
  DatiTesseraSanitaria,
  DatiTesseraSanitariaResponse,
  DocumentiOCRResponse,
  Funzionalita,
  GetImportoCommissioniProtetteRequest,
  GetImportoCommissioniProtetteResponse,
  Intermediario,
  InviaDolRequest,
  InviaDolResponse,
  NotificheElencoItem,
  GestioneNotificheRequest,
  LoginRefreshRequest,
  LoginRequest,
  LoginResponse,
  Marca,
  ImportoMinimoCommissioniRequest,
  Modello,
  Occupazione,
  PacchettoAssicurativo,
  PreventiviGetDestinazioneBene,
  PreventiviRedditoIdTipoSoggettoGet500Response,
  PreventiviTsIdTipoSoggettoGet500Response,
  PreventiviTsIdTipoSoggettoPost500Response,
  PreventivoAssicurazioniRequest,
  PreventivoDatiFinanziamento,
  PreventivoDatiPersonaResponse,
  PreventivoDatiRedditoResponse,
  PreventivoDatiTargaRequest,
  PreventivoDatiTargaResponse,
  PreventivoDatiTargaResponsePayload,
  PreventivoElencoItem,
  PreventivoSalvaCalcRataRequest,
  PreventivoStartRequest,
  PreventivoStartResponse,
  PreventivoStartResponsePayload,
  Provincia,
  Servizio,
  ServizioAssicurativo,
  ServizioPreventivo,
  TabellaFinanziaria,
  TipoDocumento,
  DatiCalcolatriceRequest,
  DatiCalcolatriceResponse,
  DatiCalcolatriceResponseItem,
  ReferenteResponse,
  DatiContattoReferente,
  ReferenteCreateResponse,
  ReferenteCreateResponsePayload
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Marca)]),
        () => ListBuilder<Marca>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Modello)]),
        () => ListBuilder<Modello>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TabellaFinanziaria)]),
        () => ListBuilder<TabellaFinanziaria>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TipoDocumento)]),
        () => ListBuilder<TipoDocumento>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Occupazione)]),
        () => ListBuilder<Occupazione>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Provincia)]),
        () => ListBuilder<Provincia>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PreventivoElencoItem)]),
        () => ListBuilder<PreventivoElencoItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Funzionalita)]),
        () => ListBuilder<Funzionalita>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PreventiviGetDestinazioneBene)]),
        () => ListBuilder<PreventiviGetDestinazioneBene>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ConfigurazioneProdotto)]),
        () => ListBuilder<ConfigurazioneProdotto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(BuiltList)]),
        () => MapBuilder<String, BuiltList>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Intermediario)]),
        () => ListBuilder<Intermediario>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
