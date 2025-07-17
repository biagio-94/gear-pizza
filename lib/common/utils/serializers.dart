//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:gearpizza/common/utils/date_serializer.dart';
import 'package:gearpizza/features/auth/models/login_response.dart';
import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:gearpizza/common/models/date.dart';

import 'package:gearpizza/common/models/activity.dart';
import 'package:gearpizza/common/models/activity_collection.dart';
import 'package:gearpizza/common/models/activity_user.dart';
import 'package:gearpizza/common/models/collections.dart';
import 'package:gearpizza/common/models/collections_group.dart';
import 'package:gearpizza/common/models/create_comment200_response.dart';
import 'package:gearpizza/common/models/create_comment_request.dart';
import 'package:gearpizza/common/models/create_items_customers200_response.dart';
import 'package:gearpizza/common/models/create_items_customers_request.dart';
import 'package:gearpizza/common/models/create_items_orders200_response.dart';
import 'package:gearpizza/common/models/create_items_orders_pizzas200_response.dart';
import 'package:gearpizza/common/models/create_items_orders_pizzas_request.dart';
import 'package:gearpizza/common/models/create_items_orders_request.dart';
import 'package:gearpizza/common/models/create_items_pizzas200_response.dart';
import 'package:gearpizza/common/models/create_items_pizzas_allergens200_response.dart';
import 'package:gearpizza/common/models/create_items_pizzas_allergens_request.dart';
import 'package:gearpizza/common/models/create_items_pizzas_request.dart';
import 'package:gearpizza/common/models/create_preset200_response.dart';
import 'package:gearpizza/common/models/create_preset_request.dart';
import 'package:gearpizza/common/models/create_preset_request_filters_inner.dart';
import 'package:gearpizza/common/models/export_request.dart';
import 'package:gearpizza/common/models/fields.dart';
import 'package:gearpizza/common/models/fields_group.dart';
import 'package:gearpizza/common/models/files.dart';
import 'package:gearpizza/common/models/files_folder.dart';
import 'package:gearpizza/common/models/files_modified_by.dart';
import 'package:gearpizza/common/models/files_uploaded_by.dart';
import 'package:gearpizza/common/models/folders.dart';
import 'package:gearpizza/common/models/folders_parent.dart';
import 'package:gearpizza/common/models/get_activities200_response.dart';
import 'package:gearpizza/common/models/get_asset404_response.dart';
import 'package:gearpizza/common/models/get_asset404_response_error.dart';
import 'package:gearpizza/common/models/get_collection200_response.dart';
import 'package:gearpizza/common/models/get_collection_field200_response.dart';
import 'package:gearpizza/common/models/get_collections200_response.dart';
import 'package:gearpizza/common/models/get_fields200_response.dart';
import 'package:gearpizza/common/models/get_file200_response.dart';
import 'package:gearpizza/common/models/get_files200_response.dart';
import 'package:gearpizza/common/models/get_presets200_response.dart';
import 'package:gearpizza/common/models/get_relation200_response.dart';
import 'package:gearpizza/common/models/get_relations200_response.dart';
import 'package:gearpizza/common/models/get_role200_response.dart';
import 'package:gearpizza/common/models/get_roles200_response.dart';
import 'package:gearpizza/common/models/get_settings200_response.dart';
import 'package:gearpizza/common/models/get_user200_response.dart';
import 'package:gearpizza/common/models/get_users200_response.dart';
import 'package:gearpizza/common/models/hash_generate200_response.dart';
import 'package:gearpizza/common/models/hash_generate_request.dart';
import 'package:gearpizza/common/models/hash_verify200_response.dart';
import 'package:gearpizza/common/models/hash_verify_request.dart';
import 'package:gearpizza/common/models/items_allergens.dart';
import 'package:gearpizza/common/models/items_customers.dart';
import 'package:gearpizza/common/models/items_orders.dart';
import 'package:gearpizza/common/models/items_orders_customer.dart';
import 'package:gearpizza/common/models/items_orders_pizzas.dart';
import 'package:gearpizza/common/models/items_orders_pizzas_inner.dart';
import 'package:gearpizza/common/models/items_orders_pizzas_orders_id.dart';
import 'package:gearpizza/common/models/items_pizzas.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens_allergens_id.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens_inner.dart';
import 'package:gearpizza/common/models/items_pizzas_allergens_pizzas_id.dart';
import 'package:gearpizza/common/models/items_pizzas_cover_image.dart';
import 'package:gearpizza/common/models/items_pizzas_restaurant.dart';
import 'package:gearpizza/common/models/items_restaurants.dart';
import 'package:gearpizza/common/models/items_restaurants_pizzas_inner.dart';
import 'package:gearpizza/common/models/login200_response.dart';
import 'package:gearpizza/common/models/login200_response_data.dart';
import 'package:gearpizza/common/models/login_request.dart';
import 'package:gearpizza/common/models/logout_request.dart';
import 'package:gearpizza/common/models/oauth200_response.dart';
import 'package:gearpizza/common/models/oauth_provider200_response.dart';
import 'package:gearpizza/common/models/oauth_provider200_response_data.dart';
import 'package:gearpizza/common/models/password_request_request.dart';
import 'package:gearpizza/common/models/password_reset_request.dart';
import 'package:gearpizza/common/models/presets.dart';
import 'package:gearpizza/common/models/presets_collection.dart';
import 'package:gearpizza/common/models/presets_role.dart';
import 'package:gearpizza/common/models/presets_user.dart';
import 'package:gearpizza/common/models/query.dart';
import 'package:gearpizza/common/models/random200_response.dart';
import 'package:gearpizza/common/models/read_items_allergens200_response.dart';
import 'package:gearpizza/common/models/read_items_customers200_response.dart';
import 'package:gearpizza/common/models/read_items_orders200_response.dart';
import 'package:gearpizza/common/models/read_items_orders_pizzas200_response.dart';
import 'package:gearpizza/common/models/read_items_pizzas200_response.dart';
import 'package:gearpizza/common/models/read_items_pizzas_allergens200_response.dart';
import 'package:gearpizza/common/models/read_items_restaurants200_response.dart';
import 'package:gearpizza/common/models/read_single_items_allergens200_response.dart';
import 'package:gearpizza/common/models/read_single_items_customers200_response.dart';
import 'package:gearpizza/common/models/read_single_items_orders200_response.dart';
import 'package:gearpizza/common/models/read_single_items_orders_pizzas200_response.dart';
import 'package:gearpizza/common/models/read_single_items_pizzas200_response.dart';
import 'package:gearpizza/common/models/read_single_items_pizzas_allergens200_response.dart';
import 'package:gearpizza/common/models/read_single_items_pizzas_id_parameter.dart';
import 'package:gearpizza/common/models/read_single_items_restaurants200_response.dart';
import 'package:gearpizza/common/models/refresh200_response.dart';
import 'package:gearpizza/common/models/refresh200_response_data.dart';
import 'package:gearpizza/common/models/refresh_request.dart';
import 'package:gearpizza/common/models/relations.dart';
import 'package:gearpizza/common/models/roles.dart';
import 'package:gearpizza/common/models/roles_children_inner.dart';
import 'package:gearpizza/common/models/roles_parent.dart';
import 'package:gearpizza/common/models/roles_users_inner.dart';
import 'package:gearpizza/common/models/server_info200_response.dart';
import 'package:gearpizza/common/models/settings.dart';
import 'package:gearpizza/common/models/settings_public_background.dart';
import 'package:gearpizza/common/models/settings_public_favicon.dart';
import 'package:gearpizza/common/models/settings_public_registration_role.dart';
import 'package:gearpizza/common/models/settings_storage_asset_presets_inner.dart';
import 'package:gearpizza/common/models/settings_storage_asset_presets_inner_transforms_inner.dart';
import 'package:gearpizza/common/models/settings_storage_asset_presets_inner_transforms_inner_arguments_inner.dart';
import 'package:gearpizza/common/models/sort_request.dart';
import 'package:gearpizza/common/models/update_items_customers200_response.dart';
import 'package:gearpizza/common/models/update_items_orders200_response.dart';
import 'package:gearpizza/common/models/update_items_orders_pizzas200_response.dart';
import 'package:gearpizza/common/models/update_items_pizzas200_response.dart';
import 'package:gearpizza/common/models/update_items_pizzas_allergens200_response.dart';
import 'package:gearpizza/common/models/update_items_restaurants200_response.dart';
import 'package:gearpizza/common/models/update_items_restaurants_request.dart';
import 'package:gearpizza/common/models/update_preset_request.dart';
import 'package:gearpizza/common/models/update_preset_request_filters_inner.dart';
import 'package:gearpizza/common/models/update_presets_request.dart';
import 'package:gearpizza/common/models/users.dart';
import 'package:gearpizza/common/models/users_avatar.dart';
import 'package:gearpizza/common/models/users_role.dart';
import 'package:gearpizza/common/models/x_metadata.dart';

part 'serializers.g.dart';

@SerializersFor([
  Activity,
  ActivityCollection,
  ActivityUser,
  Collections,
  CollectionsGroup,
  CreateComment200Response,
  CreateCommentRequest,
  CreateItemsCustomers200Response,
  CreateItemsCustomersRequest,
  CreateItemsOrders200Response,
  CreateItemsOrdersPizzas200Response,
  CreateItemsOrdersPizzasRequest,
  CreateItemsOrdersRequest,
  CreateItemsPizzas200Response,
  CreateItemsPizzasAllergens200Response,
  CreateItemsPizzasAllergensRequest,
  CreateItemsPizzasRequest,
  CreatePreset200Response,
  CreatePresetRequest,
  CreatePresetRequestFiltersInner,
  ExportRequest,
  Fields,
  FieldsGroup,
  Files,
  FilesFolder,
  FilesModifiedBy,
  FilesUploadedBy,
  Folders,
  FoldersParent,
  GetActivities200Response,
  GetAsset404Response,
  GetAsset404ResponseError,
  GetCollection200Response,
  GetCollectionField200Response,
  GetCollections200Response,
  GetFields200Response,
  GetFile200Response,
  GetFiles200Response,
  GetPresets200Response,
  GetRelation200Response,
  GetRelations200Response,
  GetRole200Response,
  GetRoles200Response,
  GetSettings200Response,
  GetUser200Response,
  GetUsers200Response,
  HashGenerate200Response,
  HashGenerateRequest,
  HashVerify200Response,
  HashVerifyRequest,
  ItemsAllergens,
  ItemsCustomers,
  ItemsOrders,
  ItemsOrdersCustomer,
  ItemsOrdersPizzas,
  ItemsOrdersPizzasInner,
  ItemsOrdersPizzasOrdersId,
  ItemsPizzas,
  ItemsPizzasAllergens,
  ItemsPizzasAllergensAllergensId,
  ItemsPizzasAllergensInner,
  ItemsPizzasAllergensPizzasId,
  ItemsPizzasCoverImage,
  ItemsPizzasRestaurant,
  ItemsRestaurants,
  ItemsRestaurantsPizzasInner,
  Login200Response,
  Login200ResponseData,
  LoginRequest,
  LogoutRequest,
  Oauth200Response,
  OauthProvider200Response,
  OauthProvider200ResponseData,
  PasswordRequestRequest,
  PasswordResetRequest,
  Presets,
  PresetsCollection,
  PresetsRole,
  PresetsUser,
  Query,
  Random200Response,
  ReadItemsAllergens200Response,
  ReadItemsCustomers200Response,
  ReadItemsOrders200Response,
  ReadItemsOrdersPizzas200Response,
  ReadItemsPizzas200Response,
  ReadItemsPizzasAllergens200Response,
  ReadItemsRestaurants200Response,
  ReadSingleItemsAllergens200Response,
  ReadSingleItemsCustomers200Response,
  ReadSingleItemsOrders200Response,
  ReadSingleItemsOrdersPizzas200Response,
  ReadSingleItemsPizzas200Response,
  ReadSingleItemsPizzasAllergens200Response,
  ReadSingleItemsPizzasIdParameter,
  ReadSingleItemsRestaurants200Response,
  Refresh200Response,
  Refresh200ResponseData,
  RefreshRequest,
  Relations,
  Roles,
  LoginResponse,
  RolesChildrenInner,
  RolesParent,
  RolesUsersInner,
  ServerInfo200Response,
  Settings,
  SettingsPublicBackground,
  SettingsPublicFavicon,
  SettingsPublicRegistrationRole,
  SettingsStorageAssetPresetsInner,
  SettingsStorageAssetPresetsInnerTransformsInner,
  SettingsStorageAssetPresetsInnerTransformsInnerArgumentsInner,
  SortRequest,
  UpdateItemsCustomers200Response,
  UpdateItemsOrders200Response,
  UpdateItemsOrdersPizzas200Response,
  UpdateItemsPizzas200Response,
  UpdateItemsPizzasAllergens200Response,
  UpdateItemsRestaurants200Response,
  UpdateItemsRestaurantsRequest,
  UpdatePresetRequest,
  UpdatePresetRequestFiltersInner,
  UpdatePresetsRequest,
  Users,
  UsersAvatar,
  UsersRole,
  XMetadata,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
