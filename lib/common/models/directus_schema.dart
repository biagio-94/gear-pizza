// To parse this JSON data, do
//
//     final directusSchema = directusSchemaFromJson(jsonString);

import 'dart:convert';

DirectusSchema directusSchemaFromJson(String str) => DirectusSchema.fromJson(json.decode(str));

String directusSchemaToJson(DirectusSchema data) => json.encode(data.toJson());

class DirectusSchema {
    String openapi;
    Info info;
    List<Server> servers;
    Paths paths;
    List<Tag> tags;
    Components components;

    DirectusSchema({
        required this.openapi,
        required this.info,
        required this.servers,
        required this.paths,
        required this.tags,
        required this.components,
    });

    factory DirectusSchema.fromJson(Map<String, dynamic> json) => DirectusSchema(
        openapi: json["openapi"],
        info: Info.fromJson(json["info"]),
        servers: List<Server>.from(json["servers"].map((x) => Server.fromJson(x))),
        paths: Paths.fromJson(json["paths"]),
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        components: Components.fromJson(json["components"]),
    );

    Map<String, dynamic> toJson() => {
        "openapi": openapi,
        "info": info.toJson(),
        "servers": List<dynamic>.from(servers.map((x) => x.toJson())),
        "paths": paths.toJson(),
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "components": components.toJson(),
    };
}

class Components {
    Schemas schemas;
    Parameters parameters;
    ComponentsResponses responses;
    SecuritySchemes securitySchemes;

    Components({
        required this.schemas,
        required this.parameters,
        required this.responses,
        required this.securitySchemes,
    });

    factory Components.fromJson(Map<String, dynamic> json) => Components(
        schemas: Schemas.fromJson(json["schemas"]),
        parameters: Parameters.fromJson(json["parameters"]),
        responses: ComponentsResponses.fromJson(json["responses"]),
        securitySchemes: SecuritySchemes.fromJson(json["securitySchemes"]),
    );

    Map<String, dynamic> toJson() => {
        "schemas": schemas.toJson(),
        "parameters": parameters.toJson(),
        "responses": responses.toJson(),
        "securitySchemes": securitySchemes.toJson(),
    };
}

class Parameters {
    CollectionElement id;
    CollectionElement uuId;
    CollectionElement collection;
    CollectionElement search;
    CollectionElement page;
    CollectionElement offset;
    Fields sort;
    CollectionElement meta;
    CollectionElement limit;
    CollectionElement filter;
    Fields fields;
    Export parametersExport;
    CollectionElement version;

    Parameters({
        required this.id,
        required this.uuId,
        required this.collection,
        required this.search,
        required this.page,
        required this.offset,
        required this.sort,
        required this.meta,
        required this.limit,
        required this.filter,
        required this.fields,
        required this.parametersExport,
        required this.version,
    });

    factory Parameters.fromJson(Map<String, dynamic> json) => Parameters(
        id: CollectionElement.fromJson(json["Id"]),
        uuId: CollectionElement.fromJson(json["UUId"]),
        collection: CollectionElement.fromJson(json["Collection"]),
        search: CollectionElement.fromJson(json["Search"]),
        page: CollectionElement.fromJson(json["Page"]),
        offset: CollectionElement.fromJson(json["Offset"]),
        sort: Fields.fromJson(json["Sort"]),
        meta: CollectionElement.fromJson(json["Meta"]),
        limit: CollectionElement.fromJson(json["Limit"]),
        filter: CollectionElement.fromJson(json["Filter"]),
        fields: Fields.fromJson(json["Fields"]),
        parametersExport: Export.fromJson(json["Export"]),
        version: CollectionElement.fromJson(json["Version"]),
    );

    Map<String, dynamic> toJson() => {
        "Id": id.toJson(),
        "UUId": uuId.toJson(),
        "Collection": collection.toJson(),
        "Search": search.toJson(),
        "Page": page.toJson(),
        "Offset": offset.toJson(),
        "Sort": sort.toJson(),
        "Meta": meta.toJson(),
        "Limit": limit.toJson(),
        "Filter": filter.toJson(),
        "Fields": fields.toJson(),
        "Export": parametersExport.toJson(),
        "Version": version.toJson(),
    };
}

class CollectionElement {
    String? description;
    String? name;
    In? collectionIn;
    bool? required;
    CollectionSchema? schema;
    CollectionContent? content;
    CollectionRef? ref;

    CollectionElement({
        this.description,
        this.name,
        this.collectionIn,
        this.required,
        this.schema,
        this.content,
        this.ref,
    });

    factory CollectionElement.fromJson(Map<String, dynamic> json) => CollectionElement(
        description: json["description"],
        name: json["name"],
        collectionIn: inValues.map[json["in"]]!,
        required: json["required"],
        schema: json["schema"] == null ? null : CollectionSchema.fromJson(json["schema"]),
        content: json["content"] == null ? null : CollectionContent.fromJson(json["content"]),
        ref: collectionRefValues.map[json["\u0024ref"]]!,
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "name": name,
        "in": inValues.reverse[collectionIn],
        "required": required,
        "schema": schema?.toJson(),
        "content": content?.toJson(),
        "\u0024ref": collectionRefValues.reverse[ref],
    };
}

enum In {
    PATH,
    QUERY
}

final inValues = EnumValues({
    "path": In.PATH,
    "query": In.QUERY
});

class CollectionContent {
    PurpleApplicationJson applicationJson;

    CollectionContent({
        required this.applicationJson,
    });

    factory CollectionContent.fromJson(Map<String, dynamic> json) => CollectionContent(
        applicationJson: PurpleApplicationJson.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class PurpleApplicationJson {
    Filter schema;

    PurpleApplicationJson({
        required this.schema,
    });

    factory PurpleApplicationJson.fromJson(Map<String, dynamic> json) => PurpleApplicationJson(
        schema: Filter.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Filter {
    Type type;
    FilterExample example;

    Filter({
        required this.type,
        required this.example,
    });

    factory Filter.fromJson(Map<String, dynamic> json) => Filter(
        type: typeValues.map[json["type"]]!,
        example: FilterExample.fromJson(json["example"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "example": example.toJson(),
    };
}

class FilterExample {
    Field field;

    FilterExample({
        required this.field,
    });

    factory FilterExample.fromJson(Map<String, dynamic> json) => FilterExample(
        field: Field.fromJson(json["<field>"]),
    );

    Map<String, dynamic> toJson() => {
        "<field>": field.toJson(),
    };
}

class Field {
    String fieldOperator;

    Field({
        required this.fieldOperator,
    });

    factory Field.fromJson(Map<String, dynamic> json) => Field(
        fieldOperator: json["<operator>"],
    );

    Map<String, dynamic> toJson() => {
        "<operator>": fieldOperator,
    };
}

enum Type {
    ARRAY,
    BOOLEAN,
    INTEGER,
    NUMBER,
    OBJECT,
    STRING
}

final typeValues = EnumValues({
    "array": Type.ARRAY,
    "boolean": Type.BOOLEAN,
    "integer": Type.INTEGER,
    "number": Type.NUMBER,
    "object": Type.OBJECT,
    "string": Type.STRING
});

enum CollectionRef {
    COMPONENTS_PARAMETERS_FIELDS,
    COMPONENTS_PARAMETERS_META,
    COMPONENTS_PARAMETERS_SORT,
    COMPONENTS_PARAMETERS_VERSION
}

final collectionRefValues = EnumValues({
    "#/components/parameters/Fields": CollectionRef.COMPONENTS_PARAMETERS_FIELDS,
    "#/components/parameters/Meta": CollectionRef.COMPONENTS_PARAMETERS_META,
    "#/components/parameters/Sort": CollectionRef.COMPONENTS_PARAMETERS_SORT,
    "#/components/parameters/Version": CollectionRef.COMPONENTS_PARAMETERS_VERSION
});

class CollectionSchema {
    Type? type;
    String? example;
    List<RoleElement>? oneOf;

    CollectionSchema({
        this.type,
        this.example,
        this.oneOf,
    });

    factory CollectionSchema.fromJson(Map<String, dynamic> json) => CollectionSchema(
        type: typeValues.map[json["type"]]!,
        example: json["example"],
        oneOf: json["oneOf"] == null ? [] : List<RoleElement>.from(json["oneOf"]!.map((x) => RoleElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "example": example,
        "oneOf": oneOf == null ? [] : List<dynamic>.from(oneOf!.map((x) => x.toJson())),
    };
}

class RoleElement {
    Type type;
    String description;
    dynamic example;

    RoleElement({
        required this.type,
        required this.description,
        required this.example,
    });

    factory RoleElement.fromJson(Map<String, dynamic> json) => RoleElement(
        type: typeValues.map[json["type"]]!,
        description: json["description"],
        example: json["example"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "description": description,
        "example": example,
    };
}

class Fields {
    String description;
    In fieldsIn;
    String name;
    bool required;
    bool explode;
    KeysClass schema;

    Fields({
        required this.description,
        required this.fieldsIn,
        required this.name,
        required this.required,
        required this.explode,
        required this.schema,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        description: json["description"],
        fieldsIn: inValues.map[json["in"]]!,
        name: json["name"],
        required: json["required"],
        explode: json["explode"],
        schema: KeysClass.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "in": inValues.reverse[fieldsIn],
        "name": name,
        "required": required,
        "explode": explode,
        "schema": schema.toJson(),
    };
}

class KeysClass {
    Type type;
    IdClass items;

    KeysClass({
        required this.type,
        required this.items,
    });

    factory KeysClass.fromJson(Map<String, dynamic> json) => KeysClass(
        type: typeValues.map[json["type"]]!,
        items: IdClass.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "items": items.toJson(),
    };
}

class IdClass {
    Type type;

    IdClass({
        required this.type,
    });

    factory IdClass.fromJson(Map<String, dynamic> json) => IdClass(
        type: typeValues.map[json["type"]]!,
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
    };
}

class Export {
    String name;
    String description;
    In exportIn;
    bool required;
    ExportSchema schema;

    Export({
        required this.name,
        required this.description,
        required this.exportIn,
        required this.required,
        required this.schema,
    });

    factory Export.fromJson(Map<String, dynamic> json) => Export(
        name: json["name"],
        description: json["description"],
        exportIn: inValues.map[json["in"]]!,
        required: json["required"],
        schema: ExportSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "in": inValues.reverse[exportIn],
        "required": required,
        "schema": schema.toJson(),
    };
}

class ExportSchema {
    Type type;
    List<String> schemaEnum;

    ExportSchema({
        required this.type,
        required this.schemaEnum,
    });

    factory ExportSchema.fromJson(Map<String, dynamic> json) => ExportSchema(
        type: typeValues.map[json["type"]]!,
        schemaEnum: List<String>.from(json["enum"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "enum": List<dynamic>.from(schemaEnum.map((x) => x)),
    };
}

class ComponentsResponses {
    DError notFoundError;
    DError unauthorizedError;

    ComponentsResponses({
        required this.notFoundError,
        required this.unauthorizedError,
    });

    factory ComponentsResponses.fromJson(Map<String, dynamic> json) => ComponentsResponses(
        notFoundError: DError.fromJson(json["NotFoundError"]),
        unauthorizedError: DError.fromJson(json["UnauthorizedError"]),
    );

    Map<String, dynamic> toJson() => {
        "NotFoundError": notFoundError.toJson(),
        "UnauthorizedError": unauthorizedError.toJson(),
    };
}

class DError {
    String description;
    NotFoundErrorContent content;

    DError({
        required this.description,
        required this.content,
    });

    factory DError.fromJson(Map<String, dynamic> json) => DError(
        description: json["description"],
        content: NotFoundErrorContent.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "content": content.toJson(),
    };
}

class NotFoundErrorContent {
    FluffyApplicationJson applicationJson;

    NotFoundErrorContent({
        required this.applicationJson,
    });

    factory NotFoundErrorContent.fromJson(Map<String, dynamic> json) => NotFoundErrorContent(
        applicationJson: FluffyApplicationJson.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class FluffyApplicationJson {
    PurpleSchema schema;

    FluffyApplicationJson({
        required this.schema,
    });

    factory FluffyApplicationJson.fromJson(Map<String, dynamic> json) => FluffyApplicationJson(
        schema: PurpleSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class PurpleSchema {
    Type type;
    PurpleProperties properties;

    PurpleSchema({
        required this.type,
        required this.properties,
    });

    factory PurpleSchema.fromJson(Map<String, dynamic> json) => PurpleSchema(
        type: typeValues.map[json["type"]]!,
        properties: PurpleProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class PurpleProperties {
    Error error;

    PurpleProperties({
        required this.error,
    });

    factory PurpleProperties.fromJson(Map<String, dynamic> json) => PurpleProperties(
        error: Error.fromJson(json["error"]),
    );

    Map<String, dynamic> toJson() => {
        "error": error.toJson(),
    };
}

class Error {
    Type type;
    ErrorProperties properties;

    Error({
        required this.type,
        required this.properties,
    });

    factory Error.fromJson(Map<String, dynamic> json) => Error(
        type: typeValues.map[json["type"]]!,
        properties: ErrorProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class ErrorProperties {
    FileElement code;
    IdClass message;

    ErrorProperties({
        required this.code,
        required this.message,
    });

    factory ErrorProperties.fromJson(Map<String, dynamic> json) => ErrorProperties(
        code: FileElement.fromJson(json["code"]),
        message: IdClass.fromJson(json["message"]),
    );

    Map<String, dynamic> toJson() => {
        "code": code.toJson(),
        "message": message.toJson(),
    };
}

class FileElement {
    Type type;
    String format;

    FileElement({
        required this.type,
        required this.format,
    });

    factory FileElement.fromJson(Map<String, dynamic> json) => FileElement(
        type: typeValues.map[json["type"]]!,
        format: json["format"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "format": format,
    };
}

class Schemas {
    Files files;
    Folders folders;
    Roles roles;
    Users users;
    Query query;
    XMetadata xMetadata;
    Collections collections;
    Presets presets;
    SchemasFields fields;
    Relations relations;
    Activity activity;
    ItemsPizzas itemsPizzas;
    ItemsCustomers itemsCustomers;
    Settings settings;
    ItemsAllergens itemsAllergens;
    ItemsPizzasAllergens itemsPizzasAllergens;
    ItemsOrders itemsOrders;
    ItemsOrdersPizzas itemsOrdersPizzas;
    ItemsRestaurants itemsRestaurants;

    Schemas({
        required this.files,
        required this.folders,
        required this.roles,
        required this.users,
        required this.query,
        required this.xMetadata,
        required this.collections,
        required this.presets,
        required this.fields,
        required this.relations,
        required this.activity,
        required this.itemsPizzas,
        required this.itemsCustomers,
        required this.settings,
        required this.itemsAllergens,
        required this.itemsPizzasAllergens,
        required this.itemsOrders,
        required this.itemsOrdersPizzas,
        required this.itemsRestaurants,
    });

    factory Schemas.fromJson(Map<String, dynamic> json) => Schemas(
        files: Files.fromJson(json["Files"]),
        folders: Folders.fromJson(json["Folders"]),
        roles: Roles.fromJson(json["Roles"]),
        users: Users.fromJson(json["Users"]),
        query: Query.fromJson(json["Query"]),
        xMetadata: XMetadata.fromJson(json["x-metadata"]),
        collections: Collections.fromJson(json["Collections"]),
        presets: Presets.fromJson(json["Presets"]),
        fields: SchemasFields.fromJson(json["Fields"]),
        relations: Relations.fromJson(json["Relations"]),
        activity: Activity.fromJson(json["Activity"]),
        itemsPizzas: ItemsPizzas.fromJson(json["ItemsPizzas"]),
        itemsCustomers: ItemsCustomers.fromJson(json["ItemsCustomers"]),
        settings: Settings.fromJson(json["Settings"]),
        itemsAllergens: ItemsAllergens.fromJson(json["ItemsAllergens"]),
        itemsPizzasAllergens: ItemsPizzasAllergens.fromJson(json["ItemsPizzasAllergens"]),
        itemsOrders: ItemsOrders.fromJson(json["ItemsOrders"]),
        itemsOrdersPizzas: ItemsOrdersPizzas.fromJson(json["ItemsOrdersPizzas"]),
        itemsRestaurants: ItemsRestaurants.fromJson(json["ItemsRestaurants"]),
    );

    Map<String, dynamic> toJson() => {
        "Files": files.toJson(),
        "Folders": folders.toJson(),
        "Roles": roles.toJson(),
        "Users": users.toJson(),
        "Query": query.toJson(),
        "x-metadata": xMetadata.toJson(),
        "Collections": collections.toJson(),
        "Presets": presets.toJson(),
        "Fields": fields.toJson(),
        "Relations": relations.toJson(),
        "Activity": activity.toJson(),
        "ItemsPizzas": itemsPizzas.toJson(),
        "ItemsCustomers": itemsCustomers.toJson(),
        "Settings": settings.toJson(),
        "ItemsAllergens": itemsAllergens.toJson(),
        "ItemsPizzasAllergens": itemsPizzasAllergens.toJson(),
        "ItemsOrders": itemsOrders.toJson(),
        "ItemsOrdersPizzas": itemsOrdersPizzas.toJson(),
        "ItemsRestaurants": itemsRestaurants.toJson(),
    };
}

class Activity {
    Type type;
    ActivityProperties properties;
    String xCollection;

    Activity({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory Activity.fromJson(Map<String, dynamic> json) => Activity(
        type: typeValues.map[json["type"]]!,
        properties: ActivityProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class ActivityProperties {
    Action id;
    Action action;
    User user;
    Action timestamp;
    Ip ip;
    Action userAgent;
    PurpleCollection collection;
    Action item;
    Action comment;
    Action origin;
    Revisions revisions;

    ActivityProperties({
        required this.id,
        required this.action,
        required this.user,
        required this.timestamp,
        required this.ip,
        required this.userAgent,
        required this.collection,
        required this.item,
        required this.comment,
        required this.origin,
        required this.revisions,
    });

    factory ActivityProperties.fromJson(Map<String, dynamic> json) => ActivityProperties(
        id: Action.fromJson(json["id"]),
        action: Action.fromJson(json["action"]),
        user: User.fromJson(json["user"]),
        timestamp: Action.fromJson(json["timestamp"]),
        ip: Ip.fromJson(json["ip"]),
        userAgent: Action.fromJson(json["user_agent"]),
        collection: PurpleCollection.fromJson(json["collection"]),
        item: Action.fromJson(json["item"]),
        comment: Action.fromJson(json["comment"]),
        origin: Action.fromJson(json["origin"]),
        revisions: Revisions.fromJson(json["revisions"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "action": action.toJson(),
        "user": user.toJson(),
        "timestamp": timestamp.toJson(),
        "ip": ip.toJson(),
        "user_agent": userAgent.toJson(),
        "collection": collection.toJson(),
        "item": item.toJson(),
        "comment": comment.toJson(),
        "origin": origin.toJson(),
        "revisions": revisions.toJson(),
    };
}

class FluffyProperties {
    Limit? key;
    Action? fit;
    Limit? width;
    Limit? height;
    Limit? withoutEnlargement;
    Limit? quality;
    Action? format;
    Action? transforms;
    Limit? method;
    User? arguments;

    FluffyProperties({
        this.key,
        this.fit,
        this.width,
        this.height,
        this.withoutEnlargement,
        this.quality,
        this.format,
        this.transforms,
        this.method,
        this.arguments,
    });

    factory FluffyProperties.fromJson(Map<String, dynamic> json) => FluffyProperties(
        key: json["key"] == null ? null : Limit.fromJson(json["key"]),
        fit: json["fit"] == null ? null : Action.fromJson(json["fit"]),
        width: json["width"] == null ? null : Limit.fromJson(json["width"]),
        height: json["height"] == null ? null : Limit.fromJson(json["height"]),
        withoutEnlargement: json["withoutEnlargement"] == null ? null : Limit.fromJson(json["withoutEnlargement"]),
        quality: json["quality"] == null ? null : Limit.fromJson(json["quality"]),
        format: json["format"] == null ? null : Action.fromJson(json["format"]),
        transforms: json["transforms"] == null ? null : Action.fromJson(json["transforms"]),
        method: json["method"] == null ? null : Limit.fromJson(json["method"]),
        arguments: json["arguments"] == null ? null : User.fromJson(json["arguments"]),
    );

    Map<String, dynamic> toJson() => {
        "key": key?.toJson(),
        "fit": fit?.toJson(),
        "width": width?.toJson(),
        "height": height?.toJson(),
        "withoutEnlargement": withoutEnlargement?.toJson(),
        "quality": quality?.toJson(),
        "format": format?.toJson(),
        "transforms": transforms?.toJson(),
        "method": method?.toJson(),
        "arguments": arguments?.toJson(),
    };
}

class ActionItems {
    Type? type;
    List<ModifiedByOneOf>? oneOf;
    FluffyProperties? properties;

    ActionItems({
        this.type,
        this.oneOf,
        this.properties,
    });

    factory ActionItems.fromJson(Map<String, dynamic> json) => ActionItems(
        type: typeValues.map[json["type"]]!,
        oneOf: json["oneOf"] == null ? [] : List<ModifiedByOneOf>.from(json["oneOf"]!.map((x) => ModifiedByOneOf.fromJson(x))),
        properties: json["properties"] == null ? null : FluffyProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "oneOf": oneOf == null ? [] : List<dynamic>.from(oneOf!.map((x) => x.toJson())),
        "properties": properties?.toJson(),
    };
}

class Action {
    String? description;
    dynamic example;
    Type? type;
    List<String>? actionEnum;
    bool? nullable;
    String? format;
    ActionItems? items;
    List<SchemaElement>? oneOf;
    ActionProperties? properties;
    String? actionDefault;

    Action({
        this.description,
        this.example,
        this.type,
        this.actionEnum,
        this.nullable,
        this.format,
        this.items,
        this.oneOf,
        this.properties,
        this.actionDefault,
    });

    factory Action.fromJson(Map<String, dynamic> json) => Action(
        description: json["description"],
        example: json["example"],
        type: typeValues.map[json["type"]]!,
        actionEnum: json["enum"] == null ? [] : List<String>.from(json["enum"]!.map((x) => x)),
        nullable: json["nullable"],
        format: json["format"],
        items: json["items"] == null ? null : ActionItems.fromJson(json["items"]),
        oneOf: json["oneOf"] == null ? [] : List<SchemaElement>.from(json["oneOf"]!.map((x) => SchemaElement.fromJson(x))),
        properties: json["properties"] == null ? null : ActionProperties.fromJson(json["properties"]),
        actionDefault: json["default"],
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "example": example,
        "type": typeValues.reverse[type],
        "enum": actionEnum == null ? [] : List<dynamic>.from(actionEnum!.map((x) => x)),
        "nullable": nullable,
        "format": format,
        "items": items?.toJson(),
        "oneOf": oneOf == null ? [] : List<dynamic>.from(oneOf!.map((x) => x.toJson())),
        "properties": properties?.toJson(),
        "default": actionDefault,
    };
}

class User {
    String description;
    List<SchemaElement>? oneOf;
    bool? nullable;
    dynamic example;
    Type? type;
    FolderItems? items;
    String? format;
    List<String>? userEnum;
    String? userDefault;

    User({
        required this.description,
        this.oneOf,
        this.nullable,
        this.example,
        this.type,
        this.items,
        this.format,
        this.userEnum,
        this.userDefault,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        description: json["description"],
        oneOf: json["oneOf"] == null ? [] : List<SchemaElement>.from(json["oneOf"]!.map((x) => SchemaElement.fromJson(x))),
        nullable: json["nullable"],
        example: json["example"],
        type: typeValues.map[json["type"]]!,
        items: json["items"] == null ? null : FolderItems.fromJson(json["items"]),
        format: json["format"],
        userEnum: json["enum"] == null ? [] : List<String>.from(json["enum"]!.map((x) => x)),
        userDefault: json["default"],
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "oneOf": oneOf == null ? [] : List<dynamic>.from(oneOf!.map((x) => x.toJson())),
        "nullable": nullable,
        "example": example,
        "type": typeValues.reverse[type],
        "items": items?.toJson(),
        "format": format,
        "enum": userEnum == null ? [] : List<dynamic>.from(userEnum!.map((x) => x)),
        "default": userDefault,
    };
}

class FluffyExample {
    FluffyCards cards;

    FluffyExample({
        required this.cards,
    });

    factory FluffyExample.fromJson(Map<String, dynamic> json) => FluffyExample(
        cards: FluffyCards.fromJson(json["cards"]),
    );

    Map<String, dynamic> toJson() => {
        "cards": cards.toJson(),
    };
}

class FluffyCards {
    String sort;

    FluffyCards({
        required this.sort,
    });

    factory FluffyCards.fromJson(Map<String, dynamic> json) => FluffyCards(
        sort: json["sort"],
    );

    Map<String, dynamic> toJson() => {
        "sort": sort,
    };
}

class FolderItems {
    Type type;
    TentacledProperties? properties;

    FolderItems({
        required this.type,
        this.properties,
    });

    factory FolderItems.fromJson(Map<String, dynamic> json) => FolderItems(
        type: typeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : TentacledProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class TentacledProperties {
    Limit argument;

    TentacledProperties({
        required this.argument,
    });

    factory TentacledProperties.fromJson(Map<String, dynamic> json) => TentacledProperties(
        argument: Limit.fromJson(json["argument"]),
    );

    Map<String, dynamic> toJson() => {
        "argument": argument.toJson(),
    };
}

class Limit {
    Type type;
    String description;

    Limit({
        required this.type,
        required this.description,
    });

    factory Limit.fromJson(Map<String, dynamic> json) => Limit(
        type: typeValues.map[json["type"]]!,
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "description": description,
    };
}

class SchemaElement {
    Type? type;
    String? ref;

    SchemaElement({
        this.type,
        this.ref,
    });

    factory SchemaElement.fromJson(Map<String, dynamic> json) => SchemaElement(
        type: typeValues.map[json["type"]]!,
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "\u0024ref": ref,
    };
}

class ModifiedByOneOf {
    Type? type;
    Format? format;
    OneOfRef? ref;

    ModifiedByOneOf({
        this.type,
        this.format,
        this.ref,
    });

    factory ModifiedByOneOf.fromJson(Map<String, dynamic> json) => ModifiedByOneOf(
        type: typeValues.map[json["type"]]!,
        format: formatValues.map[json["format"]]!,
        ref: oneOfRefValues.map[json["\u0024ref"]]!,
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "format": formatValues.reverse[format],
        "\u0024ref": oneOfRefValues.reverse[ref],
    };
}

enum Format {
    UUID
}

final formatValues = EnumValues({
    "uuid": Format.UUID
});

enum OneOfRef {
    COMPONENTS_SCHEMAS_FILES,
    COMPONENTS_SCHEMAS_ROLES,
    COMPONENTS_SCHEMAS_USERS
}

final oneOfRefValues = EnumValues({
    "#/components/schemas/Files": OneOfRef.COMPONENTS_SCHEMAS_FILES,
    "#/components/schemas/Roles": OneOfRef.COMPONENTS_SCHEMAS_ROLES,
    "#/components/schemas/Users": OneOfRef.COMPONENTS_SCHEMAS_USERS
});

class PurpleExample {
    PurpleCards? cards;
    RelatedArticles? relatedArticles;

    PurpleExample({
        this.cards,
        this.relatedArticles,
    });

    factory PurpleExample.fromJson(Map<String, dynamic> json) => PurpleExample(
        cards: json["cards"] == null ? null : PurpleCards.fromJson(json["cards"]),
        relatedArticles: json["related_articles"] == null ? null : RelatedArticles.fromJson(json["related_articles"]),
    );

    Map<String, dynamic> toJson() => {
        "cards": cards?.toJson(),
        "related_articles": relatedArticles?.toJson(),
    };
}

class PurpleCards {
    String icon;
    String title;
    String subtitle;
    int size;

    PurpleCards({
        required this.icon,
        required this.title,
        required this.subtitle,
        required this.size,
    });

    factory PurpleCards.fromJson(Map<String, dynamic> json) => PurpleCards(
        icon: json["icon"],
        title: json["title"],
        subtitle: json["subtitle"],
        size: json["size"],
    );

    Map<String, dynamic> toJson() => {
        "icon": icon,
        "title": title,
        "subtitle": subtitle,
        "size": size,
    };
}

class RelatedArticles {
    int limit;

    RelatedArticles({
        required this.limit,
    });

    factory RelatedArticles.fromJson(Map<String, dynamic> json) => RelatedArticles(
        limit: json["_limit"],
    );

    Map<String, dynamic> toJson() => {
        "_limit": limit,
    };
}

class ActionProperties {
    IdClass id;
    IdClass type;

    ActionProperties({
        required this.id,
        required this.type,
    });

    factory ActionProperties.fromJson(Map<String, dynamic> json) => ActionProperties(
        id: IdClass.fromJson(json["id"]),
        type: IdClass.fromJson(json["type"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "type": type.toJson(),
    };
}

class PurpleCollection {
    String description;
    List<SchemaElement> oneOf;

    PurpleCollection({
        required this.description,
        required this.oneOf,
    });

    factory PurpleCollection.fromJson(Map<String, dynamic> json) => PurpleCollection(
        description: json["description"],
        oneOf: List<SchemaElement>.from(json["oneOf"].map((x) => SchemaElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "oneOf": List<dynamic>.from(oneOf.map((x) => x.toJson())),
    };
}

class Ip {
    String description;
    String example;
    List<FileElement> oneOf;

    Ip({
        required this.description,
        required this.example,
        required this.oneOf,
    });

    factory Ip.fromJson(Map<String, dynamic> json) => Ip(
        description: json["description"],
        example: json["example"],
        oneOf: List<FileElement>.from(json["oneOf"].map((x) => FileElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "example": example,
        "oneOf": List<dynamic>.from(oneOf.map((x) => x.toJson())),
    };
}

class Revisions {
    bool nullable;
    Type type;

    Revisions({
        required this.nullable,
        required this.type,
    });

    factory Revisions.fromJson(Map<String, dynamic> json) => Revisions(
        nullable: json["nullable"],
        type: typeValues.map[json["type"]]!,
    );

    Map<String, dynamic> toJson() => {
        "nullable": nullable,
        "type": typeValues.reverse[type],
    };
}

class Collections {
    Type type;
    CollectionsProperties properties;
    String xCollection;

    Collections({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory Collections.fromJson(Map<String, dynamic> json) => Collections(
        type: typeValues.map[json["type"]]!,
        properties: CollectionsProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class CollectionsProperties {
    Action collection;
    Revisions icon;
    Revisions note;
    Revisions displayTemplate;
    Revisions hidden;
    Revisions singleton;
    ItemDuplicationFields translations;
    Revisions archiveField;
    Revisions archiveAppFilter;
    Revisions archiveValue;
    Revisions unarchiveValue;
    Revisions sortField;
    Revisions accountability;
    Revisions color;
    ItemDuplicationFields itemDuplicationFields;
    Revisions sort;
    Group group;
    Revisions collapse;
    Revisions previewUrl;
    Revisions versioning;

    CollectionsProperties({
        required this.collection,
        required this.icon,
        required this.note,
        required this.displayTemplate,
        required this.hidden,
        required this.singleton,
        required this.translations,
        required this.archiveField,
        required this.archiveAppFilter,
        required this.archiveValue,
        required this.unarchiveValue,
        required this.sortField,
        required this.accountability,
        required this.color,
        required this.itemDuplicationFields,
        required this.sort,
        required this.group,
        required this.collapse,
        required this.previewUrl,
        required this.versioning,
    });

    factory CollectionsProperties.fromJson(Map<String, dynamic> json) => CollectionsProperties(
        collection: Action.fromJson(json["collection"]),
        icon: Revisions.fromJson(json["icon"]),
        note: Revisions.fromJson(json["note"]),
        displayTemplate: Revisions.fromJson(json["display_template"]),
        hidden: Revisions.fromJson(json["hidden"]),
        singleton: Revisions.fromJson(json["singleton"]),
        translations: ItemDuplicationFields.fromJson(json["translations"]),
        archiveField: Revisions.fromJson(json["archive_field"]),
        archiveAppFilter: Revisions.fromJson(json["archive_app_filter"]),
        archiveValue: Revisions.fromJson(json["archive_value"]),
        unarchiveValue: Revisions.fromJson(json["unarchive_value"]),
        sortField: Revisions.fromJson(json["sort_field"]),
        accountability: Revisions.fromJson(json["accountability"]),
        color: Revisions.fromJson(json["color"]),
        itemDuplicationFields: ItemDuplicationFields.fromJson(json["item_duplication_fields"]),
        sort: Revisions.fromJson(json["sort"]),
        group: Group.fromJson(json["group"]),
        collapse: Revisions.fromJson(json["collapse"]),
        previewUrl: Revisions.fromJson(json["preview_url"]),
        versioning: Revisions.fromJson(json["versioning"]),
    );

    Map<String, dynamic> toJson() => {
        "collection": collection.toJson(),
        "icon": icon.toJson(),
        "note": note.toJson(),
        "display_template": displayTemplate.toJson(),
        "hidden": hidden.toJson(),
        "singleton": singleton.toJson(),
        "translations": translations.toJson(),
        "archive_field": archiveField.toJson(),
        "archive_app_filter": archiveAppFilter.toJson(),
        "archive_value": archiveValue.toJson(),
        "unarchive_value": unarchiveValue.toJson(),
        "sort_field": sortField.toJson(),
        "accountability": accountability.toJson(),
        "color": color.toJson(),
        "item_duplication_fields": itemDuplicationFields.toJson(),
        "sort": sort.toJson(),
        "group": group.toJson(),
        "collapse": collapse.toJson(),
        "preview_url": previewUrl.toJson(),
        "versioning": versioning.toJson(),
    };
}

class Group {
    bool nullable;
    List<SchemaElement> oneOf;

    Group({
        required this.nullable,
        required this.oneOf,
    });

    factory Group.fromJson(Map<String, dynamic> json) => Group(
        nullable: json["nullable"],
        oneOf: List<SchemaElement>.from(json["oneOf"].map((x) => SchemaElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "nullable": nullable,
        "oneOf": List<dynamic>.from(oneOf.map((x) => x.toJson())),
    };
}

class ItemDuplicationFields {
    bool nullable;

    ItemDuplicationFields({
        required this.nullable,
    });

    factory ItemDuplicationFields.fromJson(Map<String, dynamic> json) => ItemDuplicationFields(
        nullable: json["nullable"],
    );

    Map<String, dynamic> toJson() => {
        "nullable": nullable,
    };
}

class SchemasFields {
    Type type;
    FieldsProperties properties;
    String xCollection;

    SchemasFields({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory SchemasFields.fromJson(Map<String, dynamic> json) => SchemasFields(
        type: typeValues.map[json["type"]]!,
        properties: FieldsProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class FieldsProperties {
    Revisions id;
    Action collection;
    Action field;
    Special special;
    Revisions propertiesInterface;
    ItemDuplicationFields options;
    Revisions display;
    ItemDuplicationFields displayOptions;
    Revisions readonly;
    Revisions hidden;
    Revisions sort;
    Revisions width;
    ItemDuplicationFields translations;
    Revisions note;
    ItemDuplicationFields conditions;
    Revisions required;
    Group group;
    ItemDuplicationFields validation;
    Revisions validationMessage;

    FieldsProperties({
        required this.id,
        required this.collection,
        required this.field,
        required this.special,
        required this.propertiesInterface,
        required this.options,
        required this.display,
        required this.displayOptions,
        required this.readonly,
        required this.hidden,
        required this.sort,
        required this.width,
        required this.translations,
        required this.note,
        required this.conditions,
        required this.required,
        required this.group,
        required this.validation,
        required this.validationMessage,
    });

    factory FieldsProperties.fromJson(Map<String, dynamic> json) => FieldsProperties(
        id: Revisions.fromJson(json["id"]),
        collection: Action.fromJson(json["collection"]),
        field: Action.fromJson(json["field"]),
        special: Special.fromJson(json["special"]),
        propertiesInterface: Revisions.fromJson(json["interface"]),
        options: ItemDuplicationFields.fromJson(json["options"]),
        display: Revisions.fromJson(json["display"]),
        displayOptions: ItemDuplicationFields.fromJson(json["display_options"]),
        readonly: Revisions.fromJson(json["readonly"]),
        hidden: Revisions.fromJson(json["hidden"]),
        sort: Revisions.fromJson(json["sort"]),
        width: Revisions.fromJson(json["width"]),
        translations: ItemDuplicationFields.fromJson(json["translations"]),
        note: Revisions.fromJson(json["note"]),
        conditions: ItemDuplicationFields.fromJson(json["conditions"]),
        required: Revisions.fromJson(json["required"]),
        group: Group.fromJson(json["group"]),
        validation: ItemDuplicationFields.fromJson(json["validation"]),
        validationMessage: Revisions.fromJson(json["validation_message"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "collection": collection.toJson(),
        "field": field.toJson(),
        "special": special.toJson(),
        "interface": propertiesInterface.toJson(),
        "options": options.toJson(),
        "display": display.toJson(),
        "display_options": displayOptions.toJson(),
        "readonly": readonly.toJson(),
        "hidden": hidden.toJson(),
        "sort": sort.toJson(),
        "width": width.toJson(),
        "translations": translations.toJson(),
        "note": note.toJson(),
        "conditions": conditions.toJson(),
        "required": required.toJson(),
        "group": group.toJson(),
        "validation": validation.toJson(),
        "validation_message": validationMessage.toJson(),
    };
}

class Special {
    bool nullable;
    Type type;
    IdClass items;

    Special({
        required this.nullable,
        required this.type,
        required this.items,
    });

    factory Special.fromJson(Map<String, dynamic> json) => Special(
        nullable: json["nullable"],
        type: typeValues.map[json["type"]]!,
        items: IdClass.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "nullable": nullable,
        "type": typeValues.reverse[type],
        "items": items.toJson(),
    };
}

class Files {
    Type type;
    FilesProperties properties;
    String xCollection;

    Files({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory Files.fromJson(Map<String, dynamic> json) => Files(
        type: typeValues.map[json["type"]]!,
        properties: FilesProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class FilesProperties {
    Action id;
    Action storage;
    Action filenameDisk;
    Action filenameDownload;
    Action title;
    Action type;
    User folder;
    User uploadedBy;
    Action createdOn;
    ModifiedBy modifiedBy;
    ModifiedOn modifiedOn;
    Action charset;
    Action filesize;
    Action width;
    User height;
    Action duration;
    Action embed;
    Action description;
    Action location;
    Action tags;
    Action metadata;
    Revisions focalPointX;
    Revisions focalPointY;
    Revisions tusId;
    ItemDuplicationFields tusData;
    Action uploadedOn;

    FilesProperties({
        required this.id,
        required this.storage,
        required this.filenameDisk,
        required this.filenameDownload,
        required this.title,
        required this.type,
        required this.folder,
        required this.uploadedBy,
        required this.createdOn,
        required this.modifiedBy,
        required this.modifiedOn,
        required this.charset,
        required this.filesize,
        required this.width,
        required this.height,
        required this.duration,
        required this.embed,
        required this.description,
        required this.location,
        required this.tags,
        required this.metadata,
        required this.focalPointX,
        required this.focalPointY,
        required this.tusId,
        required this.tusData,
        required this.uploadedOn,
    });

    factory FilesProperties.fromJson(Map<String, dynamic> json) => FilesProperties(
        id: Action.fromJson(json["id"]),
        storage: Action.fromJson(json["storage"]),
        filenameDisk: Action.fromJson(json["filename_disk"]),
        filenameDownload: Action.fromJson(json["filename_download"]),
        title: Action.fromJson(json["title"]),
        type: Action.fromJson(json["type"]),
        folder: User.fromJson(json["folder"]),
        uploadedBy: User.fromJson(json["uploaded_by"]),
        createdOn: Action.fromJson(json["created_on"]),
        modifiedBy: ModifiedBy.fromJson(json["modified_by"]),
        modifiedOn: ModifiedOn.fromJson(json["modified_on"]),
        charset: Action.fromJson(json["charset"]),
        filesize: Action.fromJson(json["filesize"]),
        width: Action.fromJson(json["width"]),
        height: User.fromJson(json["height"]),
        duration: Action.fromJson(json["duration"]),
        embed: Action.fromJson(json["embed"]),
        description: Action.fromJson(json["description"]),
        location: Action.fromJson(json["location"]),
        tags: Action.fromJson(json["tags"]),
        metadata: Action.fromJson(json["metadata"]),
        focalPointX: Revisions.fromJson(json["focal_point_x"]),
        focalPointY: Revisions.fromJson(json["focal_point_y"]),
        tusId: Revisions.fromJson(json["tus_id"]),
        tusData: ItemDuplicationFields.fromJson(json["tus_data"]),
        uploadedOn: Action.fromJson(json["uploaded_on"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "storage": storage.toJson(),
        "filename_disk": filenameDisk.toJson(),
        "filename_download": filenameDownload.toJson(),
        "title": title.toJson(),
        "type": type.toJson(),
        "folder": folder.toJson(),
        "uploaded_by": uploadedBy.toJson(),
        "created_on": createdOn.toJson(),
        "modified_by": modifiedBy.toJson(),
        "modified_on": modifiedOn.toJson(),
        "charset": charset.toJson(),
        "filesize": filesize.toJson(),
        "width": width.toJson(),
        "height": height.toJson(),
        "duration": duration.toJson(),
        "embed": embed.toJson(),
        "description": description.toJson(),
        "location": location.toJson(),
        "tags": tags.toJson(),
        "metadata": metadata.toJson(),
        "focal_point_x": focalPointX.toJson(),
        "focal_point_y": focalPointY.toJson(),
        "tus_id": tusId.toJson(),
        "tus_data": tusData.toJson(),
        "uploaded_on": uploadedOn.toJson(),
    };
}

class ModifiedBy {
    bool nullable;
    List<ModifiedByOneOf> oneOf;

    ModifiedBy({
        required this.nullable,
        required this.oneOf,
    });

    factory ModifiedBy.fromJson(Map<String, dynamic> json) => ModifiedBy(
        nullable: json["nullable"],
        oneOf: List<ModifiedByOneOf>.from(json["oneOf"].map((x) => ModifiedByOneOf.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "nullable": nullable,
        "oneOf": List<dynamic>.from(oneOf.map((x) => x.toJson())),
    };
}

class ModifiedOn {
    bool nullable;
    Type type;
    String format;

    ModifiedOn({
        required this.nullable,
        required this.type,
        required this.format,
    });

    factory ModifiedOn.fromJson(Map<String, dynamic> json) => ModifiedOn(
        nullable: json["nullable"],
        type: typeValues.map[json["type"]]!,
        format: json["format"],
    );

    Map<String, dynamic> toJson() => {
        "nullable": nullable,
        "type": typeValues.reverse[type],
        "format": format,
    };
}

class Folders {
    Type type;
    FoldersProperties properties;
    String xCollection;

    Folders({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory Folders.fromJson(Map<String, dynamic> json) => Folders(
        type: typeValues.map[json["type"]]!,
        properties: FoldersProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class FoldersProperties {
    Action id;
    Action name;
    Action parent;

    FoldersProperties({
        required this.id,
        required this.name,
        required this.parent,
    });

    factory FoldersProperties.fromJson(Map<String, dynamic> json) => FoldersProperties(
        id: Action.fromJson(json["id"]),
        name: Action.fromJson(json["name"]),
        parent: Action.fromJson(json["parent"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "parent": parent.toJson(),
    };
}

class ItemsAllergens {
    Type type;
    ItemsAllergensProperties properties;
    String xCollection;

    ItemsAllergens({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory ItemsAllergens.fromJson(Map<String, dynamic> json) => ItemsAllergens(
        type: typeValues.map[json["type"]]!,
        properties: ItemsAllergensProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class ItemsAllergensProperties {
    Revisions id;
    Revisions name;

    ItemsAllergensProperties({
        required this.id,
        required this.name,
    });

    factory ItemsAllergensProperties.fromJson(Map<String, dynamic> json) => ItemsAllergensProperties(
        id: Revisions.fromJson(json["id"]),
        name: Revisions.fromJson(json["name"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
    };
}

class ItemsCustomers {
    Type type;
    ItemsCustomersProperties properties;
    String xCollection;

    ItemsCustomers({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory ItemsCustomers.fromJson(Map<String, dynamic> json) => ItemsCustomers(
        type: typeValues.map[json["type"]]!,
        properties: ItemsCustomersProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class ItemsCustomersProperties {
    Revisions id;
    Revisions name;
    Revisions emailAddress;
    Group restaurant;

    ItemsCustomersProperties({
        required this.id,
        required this.name,
        required this.emailAddress,
        required this.restaurant,
    });

    factory ItemsCustomersProperties.fromJson(Map<String, dynamic> json) => ItemsCustomersProperties(
        id: Revisions.fromJson(json["id"]),
        name: Revisions.fromJson(json["name"]),
        emailAddress: Revisions.fromJson(json["email_address"]),
        restaurant: Group.fromJson(json["restaurant"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "email_address": emailAddress.toJson(),
        "restaurant": restaurant.toJson(),
    };
}

class ItemsOrders {
    Type type;
    ItemsOrdersProperties properties;
    String xCollection;

    ItemsOrders({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory ItemsOrders.fromJson(Map<String, dynamic> json) => ItemsOrders(
        type: typeValues.map[json["type"]]!,
        properties: ItemsOrdersProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class ItemsOrdersProperties {
    Revisions id;
    Group restaurant;
    Group customer;
    Revisions address;
    Revisions status;
    ModifiedBy helpingImage;
    Pizzas pizzas;

    ItemsOrdersProperties({
        required this.id,
        required this.restaurant,
        required this.customer,
        required this.address,
        required this.status,
        required this.helpingImage,
        required this.pizzas,
    });

    factory ItemsOrdersProperties.fromJson(Map<String, dynamic> json) => ItemsOrdersProperties(
        id: Revisions.fromJson(json["id"]),
        restaurant: Group.fromJson(json["restaurant"]),
        customer: Group.fromJson(json["customer"]),
        address: Revisions.fromJson(json["address"]),
        status: Revisions.fromJson(json["status"]),
        helpingImage: ModifiedBy.fromJson(json["helping_image"]),
        pizzas: Pizzas.fromJson(json["pizzas"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "restaurant": restaurant.toJson(),
        "customer": customer.toJson(),
        "address": address.toJson(),
        "status": status.toJson(),
        "helping_image": helpingImage.toJson(),
        "pizzas": pizzas.toJson(),
    };
}

class Pizzas {
    bool nullable;
    Type type;
    PizzasItems items;

    Pizzas({
        required this.nullable,
        required this.type,
        required this.items,
    });

    factory Pizzas.fromJson(Map<String, dynamic> json) => Pizzas(
        nullable: json["nullable"],
        type: typeValues.map[json["type"]]!,
        items: PizzasItems.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "nullable": nullable,
        "type": typeValues.reverse[type],
        "items": items.toJson(),
    };
}

class PizzasItems {
    List<SchemaElement> oneOf;

    PizzasItems({
        required this.oneOf,
    });

    factory PizzasItems.fromJson(Map<String, dynamic> json) => PizzasItems(
        oneOf: List<SchemaElement>.from(json["oneOf"].map((x) => SchemaElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "oneOf": List<dynamic>.from(oneOf.map((x) => x.toJson())),
    };
}

class ItemsOrdersPizzas {
    Type type;
    ItemsOrdersPizzasProperties properties;
    String xCollection;

    ItemsOrdersPizzas({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory ItemsOrdersPizzas.fromJson(Map<String, dynamic> json) => ItemsOrdersPizzas(
        type: typeValues.map[json["type"]]!,
        properties: ItemsOrdersPizzasProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class ItemsOrdersPizzasProperties {
    Revisions id;
    Group ordersId;
    Group pizzasId;

    ItemsOrdersPizzasProperties({
        required this.id,
        required this.ordersId,
        required this.pizzasId,
    });

    factory ItemsOrdersPizzasProperties.fromJson(Map<String, dynamic> json) => ItemsOrdersPizzasProperties(
        id: Revisions.fromJson(json["id"]),
        ordersId: Group.fromJson(json["orders_id"]),
        pizzasId: Group.fromJson(json["pizzas_id"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "orders_id": ordersId.toJson(),
        "pizzas_id": pizzasId.toJson(),
    };
}

class ItemsPizzas {
    Type type;
    ItemsPizzasProperties properties;
    String xCollection;

    ItemsPizzas({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory ItemsPizzas.fromJson(Map<String, dynamic> json) => ItemsPizzas(
        type: typeValues.map[json["type"]]!,
        properties: ItemsPizzasProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class ItemsPizzasProperties {
    Revisions id;
    Revisions name;
    Revisions description;
    ModifiedBy coverImage;
    Group restaurant;
    Pizzas allergens;

    ItemsPizzasProperties({
        required this.id,
        required this.name,
        required this.description,
        required this.coverImage,
        required this.restaurant,
        required this.allergens,
    });

    factory ItemsPizzasProperties.fromJson(Map<String, dynamic> json) => ItemsPizzasProperties(
        id: Revisions.fromJson(json["id"]),
        name: Revisions.fromJson(json["name"]),
        description: Revisions.fromJson(json["description"]),
        coverImage: ModifiedBy.fromJson(json["cover_image"]),
        restaurant: Group.fromJson(json["restaurant"]),
        allergens: Pizzas.fromJson(json["allergens"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "description": description.toJson(),
        "cover_image": coverImage.toJson(),
        "restaurant": restaurant.toJson(),
        "allergens": allergens.toJson(),
    };
}

class ItemsPizzasAllergens {
    Type type;
    ItemsPizzasAllergensProperties properties;
    String xCollection;

    ItemsPizzasAllergens({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory ItemsPizzasAllergens.fromJson(Map<String, dynamic> json) => ItemsPizzasAllergens(
        type: typeValues.map[json["type"]]!,
        properties: ItemsPizzasAllergensProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class ItemsPizzasAllergensProperties {
    Revisions id;
    Group pizzasId;
    Group allergensId;

    ItemsPizzasAllergensProperties({
        required this.id,
        required this.pizzasId,
        required this.allergensId,
    });

    factory ItemsPizzasAllergensProperties.fromJson(Map<String, dynamic> json) => ItemsPizzasAllergensProperties(
        id: Revisions.fromJson(json["id"]),
        pizzasId: Group.fromJson(json["pizzas_id"]),
        allergensId: Group.fromJson(json["allergens_id"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "pizzas_id": pizzasId.toJson(),
        "allergens_id": allergensId.toJson(),
    };
}

class ItemsRestaurants {
    Type type;
    ItemsRestaurantsProperties properties;
    String xCollection;

    ItemsRestaurants({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory ItemsRestaurants.fromJson(Map<String, dynamic> json) => ItemsRestaurants(
        type: typeValues.map[json["type"]]!,
        properties: ItemsRestaurantsProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class ItemsRestaurantsProperties {
    Revisions id;
    Revisions name;
    ModifiedBy coverImage;
    ModifiedBy owner;
    Pizzas pizzas;

    ItemsRestaurantsProperties({
        required this.id,
        required this.name,
        required this.coverImage,
        required this.owner,
        required this.pizzas,
    });

    factory ItemsRestaurantsProperties.fromJson(Map<String, dynamic> json) => ItemsRestaurantsProperties(
        id: Revisions.fromJson(json["id"]),
        name: Revisions.fromJson(json["name"]),
        coverImage: ModifiedBy.fromJson(json["cover_image"]),
        owner: ModifiedBy.fromJson(json["owner"]),
        pizzas: Pizzas.fromJson(json["pizzas"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "cover_image": coverImage.toJson(),
        "owner": owner.toJson(),
        "pizzas": pizzas.toJson(),
    };
}

class Presets {
    Type type;
    PresetsProperties properties;
    String xCollection;

    Presets({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory Presets.fromJson(Map<String, dynamic> json) => Presets(
        type: typeValues.map[json["type"]]!,
        properties: PresetsProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class PresetsProperties {
    Action id;
    User bookmark;
    Action user;
    Action role;
    User collection;
    Action search;
    Action layout;
    User layoutQuery;
    Action layoutOptions;
    Revisions refreshInterval;
    ItemDuplicationFields filter;
    Revisions icon;
    Revisions color;

    PresetsProperties({
        required this.id,
        required this.bookmark,
        required this.user,
        required this.role,
        required this.collection,
        required this.search,
        required this.layout,
        required this.layoutQuery,
        required this.layoutOptions,
        required this.refreshInterval,
        required this.filter,
        required this.icon,
        required this.color,
    });

    factory PresetsProperties.fromJson(Map<String, dynamic> json) => PresetsProperties(
        id: Action.fromJson(json["id"]),
        bookmark: User.fromJson(json["bookmark"]),
        user: Action.fromJson(json["user"]),
        role: Action.fromJson(json["role"]),
        collection: User.fromJson(json["collection"]),
        search: Action.fromJson(json["search"]),
        layout: Action.fromJson(json["layout"]),
        layoutQuery: User.fromJson(json["layout_query"]),
        layoutOptions: Action.fromJson(json["layout_options"]),
        refreshInterval: Revisions.fromJson(json["refresh_interval"]),
        filter: ItemDuplicationFields.fromJson(json["filter"]),
        icon: Revisions.fromJson(json["icon"]),
        color: Revisions.fromJson(json["color"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "bookmark": bookmark.toJson(),
        "user": user.toJson(),
        "role": role.toJson(),
        "collection": collection.toJson(),
        "search": search.toJson(),
        "layout": layout.toJson(),
        "layout_query": layoutQuery.toJson(),
        "layout_options": layoutOptions.toJson(),
        "refresh_interval": refreshInterval.toJson(),
        "filter": filter.toJson(),
        "icon": icon.toJson(),
        "color": color.toJson(),
    };
}

class Query {
    Type type;
    QueryProperties properties;

    Query({
        required this.type,
        required this.properties,
    });

    factory Query.fromJson(Map<String, dynamic> json) => Query(
        type: typeValues.map[json["type"]]!,
        properties: QueryProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class QueryProperties {
    Action fields;
    Filter filter;
    Limit search;
    Action sort;
    Limit limit;
    Limit offset;
    Limit page;
    Action deep;

    QueryProperties({
        required this.fields,
        required this.filter,
        required this.search,
        required this.sort,
        required this.limit,
        required this.offset,
        required this.page,
        required this.deep,
    });

    factory QueryProperties.fromJson(Map<String, dynamic> json) => QueryProperties(
        fields: Action.fromJson(json["fields"]),
        filter: Filter.fromJson(json["filter"]),
        search: Limit.fromJson(json["search"]),
        sort: Action.fromJson(json["sort"]),
        limit: Limit.fromJson(json["limit"]),
        offset: Limit.fromJson(json["offset"]),
        page: Limit.fromJson(json["page"]),
        deep: Action.fromJson(json["deep"]),
    );

    Map<String, dynamic> toJson() => {
        "fields": fields.toJson(),
        "filter": filter.toJson(),
        "search": search.toJson(),
        "sort": sort.toJson(),
        "limit": limit.toJson(),
        "offset": offset.toJson(),
        "page": page.toJson(),
        "deep": deep.toJson(),
    };
}

class Relations {
    Type type;
    RelationsProperties properties;
    String xCollection;

    Relations({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory Relations.fromJson(Map<String, dynamic> json) => Relations(
        type: typeValues.map[json["type"]]!,
        properties: RelationsProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class RelationsProperties {
    Action id;
    Action manyCollection;
    Action manyField;
    Action oneCollection;
    Action oneField;
    Revisions oneCollectionField;
    Action oneAllowedCollections;
    Action junctionField;
    Revisions sortField;
    Revisions oneDeselectAction;

    RelationsProperties({
        required this.id,
        required this.manyCollection,
        required this.manyField,
        required this.oneCollection,
        required this.oneField,
        required this.oneCollectionField,
        required this.oneAllowedCollections,
        required this.junctionField,
        required this.sortField,
        required this.oneDeselectAction,
    });

    factory RelationsProperties.fromJson(Map<String, dynamic> json) => RelationsProperties(
        id: Action.fromJson(json["id"]),
        manyCollection: Action.fromJson(json["many_collection"]),
        manyField: Action.fromJson(json["many_field"]),
        oneCollection: Action.fromJson(json["one_collection"]),
        oneField: Action.fromJson(json["one_field"]),
        oneCollectionField: Revisions.fromJson(json["one_collection_field"]),
        oneAllowedCollections: Action.fromJson(json["one_allowed_collections"]),
        junctionField: Action.fromJson(json["junction_field"]),
        sortField: Revisions.fromJson(json["sort_field"]),
        oneDeselectAction: Revisions.fromJson(json["one_deselect_action"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "many_collection": manyCollection.toJson(),
        "many_field": manyField.toJson(),
        "one_collection": oneCollection.toJson(),
        "one_field": oneField.toJson(),
        "one_collection_field": oneCollectionField.toJson(),
        "one_allowed_collections": oneAllowedCollections.toJson(),
        "junction_field": junctionField.toJson(),
        "sort_field": sortField.toJson(),
        "one_deselect_action": oneDeselectAction.toJson(),
    };
}

class Roles {
    Type type;
    RolesProperties properties;
    String xCollection;

    Roles({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory Roles.fromJson(Map<String, dynamic> json) => Roles(
        type: typeValues.map[json["type"]]!,
        properties: RolesProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class RolesProperties {
    User id;
    User name;
    User icon;
    User description;
    Parent parent;
    Action children;
    Revisions policies;
    Action users;

    RolesProperties({
        required this.id,
        required this.name,
        required this.icon,
        required this.description,
        required this.parent,
        required this.children,
        required this.policies,
        required this.users,
    });

    factory RolesProperties.fromJson(Map<String, dynamic> json) => RolesProperties(
        id: User.fromJson(json["id"]),
        name: User.fromJson(json["name"]),
        icon: User.fromJson(json["icon"]),
        description: User.fromJson(json["description"]),
        parent: Parent.fromJson(json["parent"]),
        children: Action.fromJson(json["children"]),
        policies: Revisions.fromJson(json["policies"]),
        users: Action.fromJson(json["users"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "icon": icon.toJson(),
        "description": description.toJson(),
        "parent": parent.toJson(),
        "children": children.toJson(),
        "policies": policies.toJson(),
        "users": users.toJson(),
    };
}

class Parent {
    bool nullable;
    String description;
    List<ModifiedByOneOf> oneOf;

    Parent({
        required this.nullable,
        required this.description,
        required this.oneOf,
    });

    factory Parent.fromJson(Map<String, dynamic> json) => Parent(
        nullable: json["nullable"],
        description: json["description"],
        oneOf: List<ModifiedByOneOf>.from(json["oneOf"].map((x) => ModifiedByOneOf.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "nullable": nullable,
        "description": description,
        "oneOf": List<dynamic>.from(oneOf.map((x) => x.toJson())),
    };
}

class Settings {
    Type type;
    SettingsProperties properties;
    String xCollection;

    Settings({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory Settings.fromJson(Map<String, dynamic> json) => Settings(
        type: typeValues.map[json["type"]]!,
        properties: SettingsProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class SettingsProperties {
    Action id;
    Action projectName;
    Action projectUrl;
    Action projectColor;
    Action projectLogo;
    User publicForeground;
    Action publicBackground;
    User publicNote;
    Action authLoginAttempts;
    Action authPasswordPolicy;
    Action storageAssetTransform;
    Action storageAssetPresets;
    Revisions customCss;
    Action storageDefaultFolder;
    ItemDuplicationFields basemaps;
    Revisions mapboxKey;
    ItemDuplicationFields moduleBar;
    Revisions projectDescriptor;
    Revisions defaultLanguage;
    ItemDuplicationFields customAspectRatios;
    Parent publicFavicon;
    Revisions defaultAppearance;
    Revisions defaultThemeLight;
    ItemDuplicationFields themeLightOverrides;
    Revisions defaultThemeDark;
    ItemDuplicationFields themeDarkOverrides;
    Revisions reportErrorUrl;
    Revisions reportBugUrl;
    Revisions reportFeatureUrl;
    User publicRegistration;
    Action publicRegistrationVerifyEmail;
    Parent publicRegistrationRole;
    PublicRegistrationEmailFilter publicRegistrationEmailFilter;

    SettingsProperties({
        required this.id,
        required this.projectName,
        required this.projectUrl,
        required this.projectColor,
        required this.projectLogo,
        required this.publicForeground,
        required this.publicBackground,
        required this.publicNote,
        required this.authLoginAttempts,
        required this.authPasswordPolicy,
        required this.storageAssetTransform,
        required this.storageAssetPresets,
        required this.customCss,
        required this.storageDefaultFolder,
        required this.basemaps,
        required this.mapboxKey,
        required this.moduleBar,
        required this.projectDescriptor,
        required this.defaultLanguage,
        required this.customAspectRatios,
        required this.publicFavicon,
        required this.defaultAppearance,
        required this.defaultThemeLight,
        required this.themeLightOverrides,
        required this.defaultThemeDark,
        required this.themeDarkOverrides,
        required this.reportErrorUrl,
        required this.reportBugUrl,
        required this.reportFeatureUrl,
        required this.publicRegistration,
        required this.publicRegistrationVerifyEmail,
        required this.publicRegistrationRole,
        required this.publicRegistrationEmailFilter,
    });

    factory SettingsProperties.fromJson(Map<String, dynamic> json) => SettingsProperties(
        id: Action.fromJson(json["id"]),
        projectName: Action.fromJson(json["project_name"]),
        projectUrl: Action.fromJson(json["project_url"]),
        projectColor: Action.fromJson(json["project_color"]),
        projectLogo: Action.fromJson(json["project_logo"]),
        publicForeground: User.fromJson(json["public_foreground"]),
        publicBackground: Action.fromJson(json["public_background"]),
        publicNote: User.fromJson(json["public_note"]),
        authLoginAttempts: Action.fromJson(json["auth_login_attempts"]),
        authPasswordPolicy: Action.fromJson(json["auth_password_policy"]),
        storageAssetTransform: Action.fromJson(json["storage_asset_transform"]),
        storageAssetPresets: Action.fromJson(json["storage_asset_presets"]),
        customCss: Revisions.fromJson(json["custom_css"]),
        storageDefaultFolder: Action.fromJson(json["storage_default_folder"]),
        basemaps: ItemDuplicationFields.fromJson(json["basemaps"]),
        mapboxKey: Revisions.fromJson(json["mapbox_key"]),
        moduleBar: ItemDuplicationFields.fromJson(json["module_bar"]),
        projectDescriptor: Revisions.fromJson(json["project_descriptor"]),
        defaultLanguage: Revisions.fromJson(json["default_language"]),
        customAspectRatios: ItemDuplicationFields.fromJson(json["custom_aspect_ratios"]),
        publicFavicon: Parent.fromJson(json["public_favicon"]),
        defaultAppearance: Revisions.fromJson(json["default_appearance"]),
        defaultThemeLight: Revisions.fromJson(json["default_theme_light"]),
        themeLightOverrides: ItemDuplicationFields.fromJson(json["theme_light_overrides"]),
        defaultThemeDark: Revisions.fromJson(json["default_theme_dark"]),
        themeDarkOverrides: ItemDuplicationFields.fromJson(json["theme_dark_overrides"]),
        reportErrorUrl: Revisions.fromJson(json["report_error_url"]),
        reportBugUrl: Revisions.fromJson(json["report_bug_url"]),
        reportFeatureUrl: Revisions.fromJson(json["report_feature_url"]),
        publicRegistration: User.fromJson(json["public_registration"]),
        publicRegistrationVerifyEmail: Action.fromJson(json["public_registration_verify_email"]),
        publicRegistrationRole: Parent.fromJson(json["public_registration_role"]),
        publicRegistrationEmailFilter: PublicRegistrationEmailFilter.fromJson(json["public_registration_email_filter"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "project_name": projectName.toJson(),
        "project_url": projectUrl.toJson(),
        "project_color": projectColor.toJson(),
        "project_logo": projectLogo.toJson(),
        "public_foreground": publicForeground.toJson(),
        "public_background": publicBackground.toJson(),
        "public_note": publicNote.toJson(),
        "auth_login_attempts": authLoginAttempts.toJson(),
        "auth_password_policy": authPasswordPolicy.toJson(),
        "storage_asset_transform": storageAssetTransform.toJson(),
        "storage_asset_presets": storageAssetPresets.toJson(),
        "custom_css": customCss.toJson(),
        "storage_default_folder": storageDefaultFolder.toJson(),
        "basemaps": basemaps.toJson(),
        "mapbox_key": mapboxKey.toJson(),
        "module_bar": moduleBar.toJson(),
        "project_descriptor": projectDescriptor.toJson(),
        "default_language": defaultLanguage.toJson(),
        "custom_aspect_ratios": customAspectRatios.toJson(),
        "public_favicon": publicFavicon.toJson(),
        "default_appearance": defaultAppearance.toJson(),
        "default_theme_light": defaultThemeLight.toJson(),
        "theme_light_overrides": themeLightOverrides.toJson(),
        "default_theme_dark": defaultThemeDark.toJson(),
        "theme_dark_overrides": themeDarkOverrides.toJson(),
        "report_error_url": reportErrorUrl.toJson(),
        "report_bug_url": reportBugUrl.toJson(),
        "report_feature_url": reportFeatureUrl.toJson(),
        "public_registration": publicRegistration.toJson(),
        "public_registration_verify_email": publicRegistrationVerifyEmail.toJson(),
        "public_registration_role": publicRegistrationRole.toJson(),
        "public_registration_email_filter": publicRegistrationEmailFilter.toJson(),
    };
}

class PublicRegistrationEmailFilter {
    bool nullable;
    String description;

    PublicRegistrationEmailFilter({
        required this.nullable,
        required this.description,
    });

    factory PublicRegistrationEmailFilter.fromJson(Map<String, dynamic> json) => PublicRegistrationEmailFilter(
        nullable: json["nullable"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "nullable": nullable,
        "description": description,
    };
}

class Users {
    Type type;
    UsersProperties properties;
    String xCollection;

    Users({
        required this.type,
        required this.properties,
        required this.xCollection,
    });

    factory Users.fromJson(Map<String, dynamic> json) => Users(
        type: typeValues.map[json["type"]]!,
        properties: UsersProperties.fromJson(json["properties"]),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
        "x-collection": xCollection,
    };
}

class UsersProperties {
    User id;
    User firstName;
    User lastName;
    User email;
    Limit password;
    User location;
    User title;
    User description;
    User tags;
    User avatar;
    User language;
    User tfaSecret;
    User status;
    User role;
    User lastPage;
    Revisions appearance;
    Revisions themeDark;
    Revisions themeLight;

    UsersProperties({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.password,
        required this.location,
        required this.title,
        required this.description,
        required this.tags,
        required this.avatar,
        required this.language,
        required this.tfaSecret,
        required this.status,
        required this.role,
        required this.lastPage,
        required this.appearance,
        required this.themeDark,
        required this.themeLight,
    });

    factory UsersProperties.fromJson(Map<String, dynamic> json) => UsersProperties(
        id: User.fromJson(json["id"]),
        firstName: User.fromJson(json["first_name"]),
        lastName: User.fromJson(json["last_name"]),
        email: User.fromJson(json["email"]),
        password: Limit.fromJson(json["password"]),
        location: User.fromJson(json["location"]),
        title: User.fromJson(json["title"]),
        description: User.fromJson(json["description"]),
        tags: User.fromJson(json["tags"]),
        avatar: User.fromJson(json["avatar"]),
        language: User.fromJson(json["language"]),
        tfaSecret: User.fromJson(json["tfa_secret"]),
        status: User.fromJson(json["status"]),
        role: User.fromJson(json["role"]),
        lastPage: User.fromJson(json["last_page"]),
        appearance: Revisions.fromJson(json["appearance"]),
        themeDark: Revisions.fromJson(json["theme_dark"]),
        themeLight: Revisions.fromJson(json["theme_light"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "first_name": firstName.toJson(),
        "last_name": lastName.toJson(),
        "email": email.toJson(),
        "password": password.toJson(),
        "location": location.toJson(),
        "title": title.toJson(),
        "description": description.toJson(),
        "tags": tags.toJson(),
        "avatar": avatar.toJson(),
        "language": language.toJson(),
        "tfa_secret": tfaSecret.toJson(),
        "status": status.toJson(),
        "role": role.toJson(),
        "last_page": lastPage.toJson(),
        "appearance": appearance.toJson(),
        "theme_dark": themeDark.toJson(),
        "theme_light": themeLight.toJson(),
    };
}

class XMetadata {
    Type type;
    XMetadataProperties properties;

    XMetadata({
        required this.type,
        required this.properties,
    });

    factory XMetadata.fromJson(Map<String, dynamic> json) => XMetadata(
        type: typeValues.map[json["type"]]!,
        properties: XMetadataProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class XMetadataProperties {
    Limit totalCount;
    Limit filterCount;

    XMetadataProperties({
        required this.totalCount,
        required this.filterCount,
    });

    factory XMetadataProperties.fromJson(Map<String, dynamic> json) => XMetadataProperties(
        totalCount: Limit.fromJson(json["total_count"]),
        filterCount: Limit.fromJson(json["filter_count"]),
    );

    Map<String, dynamic> toJson() => {
        "total_count": totalCount.toJson(),
        "filter_count": filterCount.toJson(),
    };
}

class SecuritySchemes {
    Auth keyAuth;
    Auth auth;

    SecuritySchemes({
        required this.keyAuth,
        required this.auth,
    });

    factory SecuritySchemes.fromJson(Map<String, dynamic> json) => SecuritySchemes(
        keyAuth: Auth.fromJson(json["KeyAuth"]),
        auth: Auth.fromJson(json["Auth"]),
    );

    Map<String, dynamic> toJson() => {
        "KeyAuth": keyAuth.toJson(),
        "Auth": auth.toJson(),
    };
}

class Auth {
    String type;
    String authIn;
    String name;

    Auth({
        required this.type,
        required this.authIn,
        required this.name,
    });

    factory Auth.fromJson(Map<String, dynamic> json) => Auth(
        type: json["type"],
        authIn: json["in"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "in": authIn,
        "name": name,
    };
}

class Info {
    String title;
    String description;
    String version;

    Info({
        required this.title,
        required this.description,
        required this.version,
    });

    factory Info.fromJson(Map<String, dynamic> json) => Info(
        title: json["title"],
        description: json["description"],
        version: json["version"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "version": version,
    };
}

class Paths {
    AssetsId assetsId;
    AuthLogin authLogin;
    AuthRefresh authRefresh;
    AuthLogout authLogout;
    AuthPasswordRequest authPasswordRequest;
    AuthPasswordReset authPasswordReset;
    AuthOauth authOauth;
    AuthOauthProvider authOauthProvider;
    ServerInfo serverInfo;
    ServerPing serverPing;
    UtilsHashGenerate utilsHashGenerate;
    UtilsHashVerify utilsHashVerify;
    UtilsSortCollection utilsSortCollection;
    UtilsImportCollection utilsImportCollection;
    UtilsExportCollection utilsExportCollection;
    AuthLogout utilsCacheClear;
    UtilsRandomString utilsRandomString;
    ActivityClass roles;
    ActivityId rolesId;
    CollectionsClass collections;
    Id collectionsId;
    PresetsClass presets;
    PresetsId presetsId;
    FilesClass files;
    FilesId filesId;
    CollectionsClass fields;
    FieldsCollection fieldsCollection;
    Id fieldsCollectionId;
    CollectionsClass relations;
    ActivityId relationsId;
    ActivityClass activity;
    ActivityComment activityComment;
    ActivityId activityId;
    ActivityCommentId activityCommentId;
    ActivityClass users;
    ActivityId usersId;
    ActivityCommentId usersInvite;
    ActivityCommentId usersInviteAccept;
    ActivityId usersMe;
    ActivityCommentId usersMeTrackPage;
    ActivityCommentId usersMeTfaEnable;
    ActivityCommentId usersMeTfaDisable;
    Items itemsPizzas;
    ItemsSId itemsPizzasId;
    Items itemsCustomers;
    ItemsSId itemsCustomersId;
    ActivityId settings;
    ItemsAllergensClass itemsAllergens;
    ItemsAllergensId itemsAllergensId;
    Items itemsPizzasAllergens;
    ItemsSId itemsPizzasAllergensId;
    Items itemsOrders;
    ItemsSId itemsOrdersId;
    Items itemsOrdersPizzas;
    ItemsSId itemsOrdersPizzasId;
    ItemsRestaurantsClass itemsRestaurants;
    ItemsRestaurantsId itemsRestaurantsId;

    Paths({
        required this.assetsId,
        required this.authLogin,
        required this.authRefresh,
        required this.authLogout,
        required this.authPasswordRequest,
        required this.authPasswordReset,
        required this.authOauth,
        required this.authOauthProvider,
        required this.serverInfo,
        required this.serverPing,
        required this.utilsHashGenerate,
        required this.utilsHashVerify,
        required this.utilsSortCollection,
        required this.utilsImportCollection,
        required this.utilsExportCollection,
        required this.utilsCacheClear,
        required this.utilsRandomString,
        required this.roles,
        required this.rolesId,
        required this.collections,
        required this.collectionsId,
        required this.presets,
        required this.presetsId,
        required this.files,
        required this.filesId,
        required this.fields,
        required this.fieldsCollection,
        required this.fieldsCollectionId,
        required this.relations,
        required this.relationsId,
        required this.activity,
        required this.activityComment,
        required this.activityId,
        required this.activityCommentId,
        required this.users,
        required this.usersId,
        required this.usersInvite,
        required this.usersInviteAccept,
        required this.usersMe,
        required this.usersMeTrackPage,
        required this.usersMeTfaEnable,
        required this.usersMeTfaDisable,
        required this.itemsPizzas,
        required this.itemsPizzasId,
        required this.itemsCustomers,
        required this.itemsCustomersId,
        required this.settings,
        required this.itemsAllergens,
        required this.itemsAllergensId,
        required this.itemsPizzasAllergens,
        required this.itemsPizzasAllergensId,
        required this.itemsOrders,
        required this.itemsOrdersId,
        required this.itemsOrdersPizzas,
        required this.itemsOrdersPizzasId,
        required this.itemsRestaurants,
        required this.itemsRestaurantsId,
    });

    factory Paths.fromJson(Map<String, dynamic> json) => Paths(
        assetsId: AssetsId.fromJson(json["/assets/{id}"]),
        authLogin: AuthLogin.fromJson(json["/auth/login"]),
        authRefresh: AuthRefresh.fromJson(json["/auth/refresh"]),
        authLogout: AuthLogout.fromJson(json["/auth/logout"]),
        authPasswordRequest: AuthPasswordRequest.fromJson(json["/auth/password/request"]),
        authPasswordReset: AuthPasswordReset.fromJson(json["/auth/password/reset"]),
        authOauth: AuthOauth.fromJson(json["/auth/oauth"]),
        authOauthProvider: AuthOauthProvider.fromJson(json["/auth/oauth/{provider}"]),
        serverInfo: ServerInfo.fromJson(json["/server/info"]),
        serverPing: ServerPing.fromJson(json["/server/ping"]),
        utilsHashGenerate: UtilsHashGenerate.fromJson(json["/utils/hash/generate"]),
        utilsHashVerify: UtilsHashVerify.fromJson(json["/utils/hash/verify"]),
        utilsSortCollection: UtilsSortCollection.fromJson(json["/utils/sort/{collection}"]),
        utilsImportCollection: UtilsImportCollection.fromJson(json["/utils/import/{collection}"]),
        utilsExportCollection: UtilsExportCollection.fromJson(json["/utils/export/{collection}"]),
        utilsCacheClear: AuthLogout.fromJson(json["/utils/cache/clear"]),
        utilsRandomString: UtilsRandomString.fromJson(json["/utils/random/string"]),
        roles: ActivityClass.fromJson(json["/roles"]),
        rolesId: ActivityId.fromJson(json["/roles/{id}"]),
        collections: CollectionsClass.fromJson(json["/collections"]),
        collectionsId: Id.fromJson(json["/collections/{id}"]),
        presets: PresetsClass.fromJson(json["/presets"]),
        presetsId: PresetsId.fromJson(json["/presets/{id}"]),
        files: FilesClass.fromJson(json["/files"]),
        filesId: FilesId.fromJson(json["/files/{id}"]),
        fields: CollectionsClass.fromJson(json["/fields"]),
        fieldsCollection: FieldsCollection.fromJson(json["/fields/{collection}"]),
        fieldsCollectionId: Id.fromJson(json["/fields/{collection}/{id}"]),
        relations: CollectionsClass.fromJson(json["/relations"]),
        relationsId: ActivityId.fromJson(json["/relations/{id}"]),
        activity: ActivityClass.fromJson(json["/activity"]),
        activityComment: ActivityComment.fromJson(json["/activity/comment"]),
        activityId: ActivityId.fromJson(json["/activity/{id}"]),
        activityCommentId: ActivityCommentId.fromJson(json["/activity/comment/{id}"]),
        users: ActivityClass.fromJson(json["/users"]),
        usersId: ActivityId.fromJson(json["/users/{id}"]),
        usersInvite: ActivityCommentId.fromJson(json["/users/invite"]),
        usersInviteAccept: ActivityCommentId.fromJson(json["/users/invite/accept"]),
        usersMe: ActivityId.fromJson(json["/users/me"]),
        usersMeTrackPage: ActivityCommentId.fromJson(json["/users/me/track/page"]),
        usersMeTfaEnable: ActivityCommentId.fromJson(json["/users/me/tfa/enable"]),
        usersMeTfaDisable: ActivityCommentId.fromJson(json["/users/me/tfa/disable"]),
        itemsPizzas: Items.fromJson(json["/items/pizzas"]),
        itemsPizzasId: ItemsSId.fromJson(json["/items/pizzas/{id}"]),
        itemsCustomers: Items.fromJson(json["/items/customers"]),
        itemsCustomersId: ItemsSId.fromJson(json["/items/customers/{id}"]),
        settings: ActivityId.fromJson(json["/settings"]),
        itemsAllergens: ItemsAllergensClass.fromJson(json["/items/allergens"]),
        itemsAllergensId: ItemsAllergensId.fromJson(json["/items/allergens/{id}"]),
        itemsPizzasAllergens: Items.fromJson(json["/items/pizzas_allergens"]),
        itemsPizzasAllergensId: ItemsSId.fromJson(json["/items/pizzas_allergens/{id}"]),
        itemsOrders: Items.fromJson(json["/items/orders"]),
        itemsOrdersId: ItemsSId.fromJson(json["/items/orders/{id}"]),
        itemsOrdersPizzas: Items.fromJson(json["/items/orders_pizzas"]),
        itemsOrdersPizzasId: ItemsSId.fromJson(json["/items/orders_pizzas/{id}"]),
        itemsRestaurants: ItemsRestaurantsClass.fromJson(json["/items/restaurants"]),
        itemsRestaurantsId: ItemsRestaurantsId.fromJson(json["/items/restaurants/{id}"]),
    );

    Map<String, dynamic> toJson() => {
        "/assets/{id}": assetsId.toJson(),
        "/auth/login": authLogin.toJson(),
        "/auth/refresh": authRefresh.toJson(),
        "/auth/logout": authLogout.toJson(),
        "/auth/password/request": authPasswordRequest.toJson(),
        "/auth/password/reset": authPasswordReset.toJson(),
        "/auth/oauth": authOauth.toJson(),
        "/auth/oauth/{provider}": authOauthProvider.toJson(),
        "/server/info": serverInfo.toJson(),
        "/server/ping": serverPing.toJson(),
        "/utils/hash/generate": utilsHashGenerate.toJson(),
        "/utils/hash/verify": utilsHashVerify.toJson(),
        "/utils/sort/{collection}": utilsSortCollection.toJson(),
        "/utils/import/{collection}": utilsImportCollection.toJson(),
        "/utils/export/{collection}": utilsExportCollection.toJson(),
        "/utils/cache/clear": utilsCacheClear.toJson(),
        "/utils/random/string": utilsRandomString.toJson(),
        "/roles": roles.toJson(),
        "/roles/{id}": rolesId.toJson(),
        "/collections": collections.toJson(),
        "/collections/{id}": collectionsId.toJson(),
        "/presets": presets.toJson(),
        "/presets/{id}": presetsId.toJson(),
        "/files": files.toJson(),
        "/files/{id}": filesId.toJson(),
        "/fields": fields.toJson(),
        "/fields/{collection}": fieldsCollection.toJson(),
        "/fields/{collection}/{id}": fieldsCollectionId.toJson(),
        "/relations": relations.toJson(),
        "/relations/{id}": relationsId.toJson(),
        "/activity": activity.toJson(),
        "/activity/comment": activityComment.toJson(),
        "/activity/{id}": activityId.toJson(),
        "/activity/comment/{id}": activityCommentId.toJson(),
        "/users": users.toJson(),
        "/users/{id}": usersId.toJson(),
        "/users/invite": usersInvite.toJson(),
        "/users/invite/accept": usersInviteAccept.toJson(),
        "/users/me": usersMe.toJson(),
        "/users/me/track/page": usersMeTrackPage.toJson(),
        "/users/me/tfa/enable": usersMeTfaEnable.toJson(),
        "/users/me/tfa/disable": usersMeTfaDisable.toJson(),
        "/items/pizzas": itemsPizzas.toJson(),
        "/items/pizzas/{id}": itemsPizzasId.toJson(),
        "/items/customers": itemsCustomers.toJson(),
        "/items/customers/{id}": itemsCustomersId.toJson(),
        "/settings": settings.toJson(),
        "/items/allergens": itemsAllergens.toJson(),
        "/items/allergens/{id}": itemsAllergensId.toJson(),
        "/items/pizzas_allergens": itemsPizzasAllergens.toJson(),
        "/items/pizzas_allergens/{id}": itemsPizzasAllergensId.toJson(),
        "/items/orders": itemsOrders.toJson(),
        "/items/orders/{id}": itemsOrdersId.toJson(),
        "/items/orders_pizzas": itemsOrdersPizzas.toJson(),
        "/items/orders_pizzas/{id}": itemsOrdersPizzasId.toJson(),
        "/items/restaurants": itemsRestaurants.toJson(),
        "/items/restaurants/{id}": itemsRestaurantsId.toJson(),
    };
}

class ActivityClass {
    ActivityGet activityGet;

    ActivityClass({
        required this.activityGet,
    });

    factory ActivityClass.fromJson(Map<String, dynamic> json) => ActivityClass(
        activityGet: ActivityGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": activityGet.toJson(),
    };
}

class ActivityGet {
    String operationId;
    String summary;
    String description;
    List<The401Element> parameters;
    Map<String, PurpleResponse> responses;
    List<String> tags;

    ActivityGet({
        required this.operationId,
        required this.summary,
        required this.description,
        required this.parameters,
        required this.responses,
        required this.tags,
    });

    factory ActivityGet.fromJson(Map<String, dynamic> json) => ActivityGet(
        operationId: json["operationId"],
        summary: json["summary"],
        description: json["description"],
        parameters: List<The401Element>.from(json["parameters"].map((x) => The401Element.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "operationId": operationId,
        "summary": summary,
        "description": description,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}

class The401Element {
    String ref;

    The401Element({
        required this.ref,
    });

    factory The401Element.fromJson(Map<String, dynamic> json) => The401Element(
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "\u0024ref": ref,
    };
}

class PurpleResponse {
    PurpleContent? content;
    ResponseDescription? description;
    String? ref;

    PurpleResponse({
        this.content,
        this.description,
        this.ref,
    });

    factory PurpleResponse.fromJson(Map<String, dynamic> json) => PurpleResponse(
        content: json["content"] == null ? null : PurpleContent.fromJson(json["content"]),
        description: responseDescriptionValues.map[json["description"]]!,
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "content": content?.toJson(),
        "description": responseDescriptionValues.reverse[description],
        "\u0024ref": ref,
    };
}

class PurpleContent {
    TentacledApplicationJson applicationJson;

    PurpleContent({
        required this.applicationJson,
    });

    factory PurpleContent.fromJson(Map<String, dynamic> json) => PurpleContent(
        applicationJson: TentacledApplicationJson.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class TentacledApplicationJson {
    FluffySchema schema;

    TentacledApplicationJson({
        required this.schema,
    });

    factory TentacledApplicationJson.fromJson(Map<String, dynamic> json) => TentacledApplicationJson(
        schema: FluffySchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class FluffySchema {
    Type type;
    StickyProperties properties;

    FluffySchema({
        required this.type,
        required this.properties,
    });

    factory FluffySchema.fromJson(Map<String, dynamic> json) => FluffySchema(
        type: typeValues.map[json["type"]]!,
        properties: StickyProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class StickyProperties {
    PurpleData data;
    The401Element meta;

    StickyProperties({
        required this.data,
        required this.meta,
    });

    factory StickyProperties.fromJson(Map<String, dynamic> json) => StickyProperties(
        data: PurpleData.fromJson(json["data"]),
        meta: The401Element.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "meta": meta.toJson(),
    };
}

class PurpleData {
    Type type;
    The401Element items;

    PurpleData({
        required this.type,
        required this.items,
    });

    factory PurpleData.fromJson(Map<String, dynamic> json) => PurpleData(
        type: typeValues.map[json["type"]]!,
        items: The401Element.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "items": items.toJson(),
    };
}

enum ResponseDescription {
    REQUEST_SUCCESSFUL,
    SUCCESSFUL_REQUEST
}

final responseDescriptionValues = EnumValues({
    "Request successful": ResponseDescription.REQUEST_SUCCESSFUL,
    "Successful request": ResponseDescription.SUCCESSFUL_REQUEST
});

class ActivityComment {
    ActivityCommentPost post;

    ActivityComment({
        required this.post,
    });

    factory ActivityComment.fromJson(Map<String, dynamic> json) => ActivityComment(
        post: ActivityCommentPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post.toJson(),
    };
}

class ActivityCommentPost {
    String summary;
    String description;
    String operationId;
    List<The401Element> parameters;
    PurpleRequestBody? requestBody;
    Map<String, FluffyResponse> responses;
    List<String> tags;

    ActivityCommentPost({
        required this.summary,
        required this.description,
        required this.operationId,
        required this.parameters,
        this.requestBody,
        required this.responses,
        required this.tags,
    });

    factory ActivityCommentPost.fromJson(Map<String, dynamic> json) => ActivityCommentPost(
        summary: json["summary"],
        description: json["description"],
        operationId: json["operationId"],
        parameters: List<The401Element>.from(json["parameters"].map((x) => The401Element.fromJson(x))),
        requestBody: json["requestBody"] == null ? null : PurpleRequestBody.fromJson(json["requestBody"]),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "requestBody": requestBody?.toJson(),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}

class PurpleRequestBody {
    FluffyContent content;

    PurpleRequestBody({
        required this.content,
    });

    factory PurpleRequestBody.fromJson(Map<String, dynamic> json) => PurpleRequestBody(
        content: FluffyContent.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class FluffyContent {
    StickyApplicationJson applicationJson;

    FluffyContent({
        required this.applicationJson,
    });

    factory FluffyContent.fromJson(Map<String, dynamic> json) => FluffyContent(
        applicationJson: StickyApplicationJson.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class StickyApplicationJson {
    TentacledSchema schema;

    StickyApplicationJson({
        required this.schema,
    });

    factory StickyApplicationJson.fromJson(Map<String, dynamic> json) => StickyApplicationJson(
        schema: TentacledSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class TentacledSchema {
    Type type;
    List<String> required;
    IndigoProperties properties;

    TentacledSchema({
        required this.type,
        required this.required,
        required this.properties,
    });

    factory TentacledSchema.fromJson(Map<String, dynamic> json) => TentacledSchema(
        type: typeValues.map[json["type"]]!,
        required: List<String>.from(json["required"].map((x) => x)),
        properties: IndigoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class IndigoProperties {
    CommentClass collection;
    Item item;
    CommentClass comment;

    IndigoProperties({
        required this.collection,
        required this.item,
        required this.comment,
    });

    factory IndigoProperties.fromJson(Map<String, dynamic> json) => IndigoProperties(
        collection: CommentClass.fromJson(json["collection"]),
        item: Item.fromJson(json["item"]),
        comment: CommentClass.fromJson(json["comment"]),
    );

    Map<String, dynamic> toJson() => {
        "collection": collection.toJson(),
        "item": item.toJson(),
        "comment": comment.toJson(),
    };
}

class CommentClass {
    String example;
    Type type;

    CommentClass({
        required this.example,
        required this.type,
    });

    factory CommentClass.fromJson(Map<String, dynamic> json) => CommentClass(
        example: json["example"],
        type: typeValues.map[json["type"]]!,
    );

    Map<String, dynamic> toJson() => {
        "example": example,
        "type": typeValues.reverse[type],
    };
}

class Item {
    Type type;
    double example;

    Item({
        required this.type,
        required this.example,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        type: typeValues.map[json["type"]]!,
        example: json["example"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "example": example,
    };
}

class FluffyResponse {
    TentacledContent? content;
    ResponseDescription? description;
    String? ref;

    FluffyResponse({
        this.content,
        this.description,
        this.ref,
    });

    factory FluffyResponse.fromJson(Map<String, dynamic> json) => FluffyResponse(
        content: json["content"] == null ? null : TentacledContent.fromJson(json["content"]),
        description: responseDescriptionValues.map[json["description"]]!,
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "content": content?.toJson(),
        "description": responseDescriptionValues.reverse[description],
        "\u0024ref": ref,
    };
}

class TentacledContent {
    IndigoApplicationJson applicationJson;

    TentacledContent({
        required this.applicationJson,
    });

    factory TentacledContent.fromJson(Map<String, dynamic> json) => TentacledContent(
        applicationJson: IndigoApplicationJson.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class IndigoApplicationJson {
    StickySchema schema;

    IndigoApplicationJson({
        required this.schema,
    });

    factory IndigoApplicationJson.fromJson(Map<String, dynamic> json) => IndigoApplicationJson(
        schema: StickySchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class StickySchema {
    Type type;
    IndecentProperties properties;

    StickySchema({
        required this.type,
        required this.properties,
    });

    factory StickySchema.fromJson(Map<String, dynamic> json) => StickySchema(
        type: typeValues.map[json["type"]]!,
        properties: IndecentProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class IndecentProperties {
    The401Element data;

    IndecentProperties({
        required this.data,
    });

    factory IndecentProperties.fromJson(Map<String, dynamic> json) => IndecentProperties(
        data: The401Element.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class ActivityCommentId {
    ActivityCommentId();

    factory ActivityCommentId.fromJson(Map<String, dynamic> json) => ActivityCommentId(
    );

    Map<String, dynamic> toJson() => {
    };
}

class ActivityId {
    ActivityCommentPost activityIdGet;

    ActivityId({
        required this.activityIdGet,
    });

    factory ActivityId.fromJson(Map<String, dynamic> json) => ActivityId(
        activityIdGet: ActivityCommentPost.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": activityIdGet.toJson(),
    };
}

class AssetsId {
    AssetsIdGet assetsIdGet;

    AssetsId({
        required this.assetsIdGet,
    });

    factory AssetsId.fromJson(Map<String, dynamic> json) => AssetsId(
        assetsIdGet: AssetsIdGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": assetsIdGet.toJson(),
    };
}

class AssetsIdGet {
    List<String> tags;
    String operationId;
    String summary;
    String description;
    List<CollectionElement> parameters;
    Map<String, TentacledResponse> responses;

    AssetsIdGet({
        required this.tags,
        required this.operationId,
        required this.summary,
        required this.description,
        required this.parameters,
        required this.responses,
    });

    factory AssetsIdGet.fromJson(Map<String, dynamic> json) => AssetsIdGet(
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        summary: json["summary"],
        description: json["description"],
        parameters: List<CollectionElement>.from(json["parameters"].map((x) => CollectionElement.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, TentacledResponse>(k, TentacledResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "summary": summary,
        "description": description,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class TentacledResponse {
    ResponseDescription? description;
    StickyContent? content;
    String? ref;

    TentacledResponse({
        this.description,
        this.content,
        this.ref,
    });

    factory TentacledResponse.fromJson(Map<String, dynamic> json) => TentacledResponse(
        description: responseDescriptionValues.map[json["description"]]!,
        content: json["content"] == null ? null : StickyContent.fromJson(json["content"]),
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "description": responseDescriptionValues.reverse[description],
        "content": content?.toJson(),
        "\u0024ref": ref,
    };
}

class StickyContent {
    TextPlain textPlain;

    StickyContent({
        required this.textPlain,
    });

    factory StickyContent.fromJson(Map<String, dynamic> json) => StickyContent(
        textPlain: TextPlain.fromJson(json["text/plain"]),
    );

    Map<String, dynamic> toJson() => {
        "text/plain": textPlain.toJson(),
    };
}

class TextPlain {
    IdClass schema;

    TextPlain({
        required this.schema,
    });

    factory TextPlain.fromJson(Map<String, dynamic> json) => TextPlain(
        schema: IdClass.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class AuthLogin {
    AuthLoginPost post;

    AuthLogin({
        required this.post,
    });

    factory AuthLogin.fromJson(Map<String, dynamic> json) => AuthLogin(
        post: AuthLoginPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post.toJson(),
    };
}

class AuthLoginPost {
    String summary;
    String description;
    List<String> tags;
    String operationId;
    FluffyRequestBody requestBody;
    PurpleResponses responses;

    AuthLoginPost({
        required this.summary,
        required this.description,
        required this.tags,
        required this.operationId,
        required this.requestBody,
        required this.responses,
    });

    factory AuthLoginPost.fromJson(Map<String, dynamic> json) => AuthLoginPost(
        summary: json["summary"],
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        requestBody: FluffyRequestBody.fromJson(json["requestBody"]),
        responses: PurpleResponses.fromJson(json["responses"]),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "requestBody": requestBody.toJson(),
        "responses": responses.toJson(),
    };
}

class FluffyRequestBody {
    IndigoContent content;

    FluffyRequestBody({
        required this.content,
    });

    factory FluffyRequestBody.fromJson(Map<String, dynamic> json) => FluffyRequestBody(
        content: IndigoContent.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class IndigoContent {
    IndecentApplicationJson applicationJson;

    IndigoContent({
        required this.applicationJson,
    });

    factory IndigoContent.fromJson(Map<String, dynamic> json) => IndigoContent(
        applicationJson: IndecentApplicationJson.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class IndecentApplicationJson {
    IndigoSchema schema;

    IndecentApplicationJson({
        required this.schema,
    });

    factory IndecentApplicationJson.fromJson(Map<String, dynamic> json) => IndecentApplicationJson(
        schema: IndigoSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class IndigoSchema {
    Type type;
    List<String> required;
    HilariousProperties properties;

    IndigoSchema({
        required this.type,
        required this.required,
        required this.properties,
    });

    factory IndigoSchema.fromJson(Map<String, dynamic> json) => IndigoSchema(
        type: typeValues.map[json["type"]]!,
        required: List<String>.from(json["required"].map((x) => x)),
        properties: HilariousProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class HilariousProperties {
    Action email;
    User password;
    Action mode;
    Limit otp;

    HilariousProperties({
        required this.email,
        required this.password,
        required this.mode,
        required this.otp,
    });

    factory HilariousProperties.fromJson(Map<String, dynamic> json) => HilariousProperties(
        email: Action.fromJson(json["email"]),
        password: User.fromJson(json["password"]),
        mode: Action.fromJson(json["mode"]),
        otp: Limit.fromJson(json["otp"]),
    );

    Map<String, dynamic> toJson() => {
        "email": email.toJson(),
        "password": password.toJson(),
        "mode": mode.toJson(),
        "otp": otp.toJson(),
    };
}

class PurpleResponses {
    Purple200 the200;

    PurpleResponses({
        required this.the200,
    });

    factory PurpleResponses.fromJson(Map<String, dynamic> json) => PurpleResponses(
        the200: Purple200.fromJson(json["200"]),
    );

    Map<String, dynamic> toJson() => {
        "200": the200.toJson(),
    };
}

class Purple200 {
    String description;
    IndecentContent content;

    Purple200({
        required this.description,
        required this.content,
    });

    factory Purple200.fromJson(Map<String, dynamic> json) => Purple200(
        description: json["description"],
        content: IndecentContent.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "content": content.toJson(),
    };
}

class IndecentContent {
    HilariousApplicationJson applicationJson;

    IndecentContent({
        required this.applicationJson,
    });

    factory IndecentContent.fromJson(Map<String, dynamic> json) => IndecentContent(
        applicationJson: HilariousApplicationJson.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class HilariousApplicationJson {
    IndecentSchema schema;

    HilariousApplicationJson({
        required this.schema,
    });

    factory HilariousApplicationJson.fromJson(Map<String, dynamic> json) => HilariousApplicationJson(
        schema: IndecentSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class IndecentSchema {
    Type type;
    AmbitiousProperties properties;

    IndecentSchema({
        required this.type,
        required this.properties,
    });

    factory IndecentSchema.fromJson(Map<String, dynamic> json) => IndecentSchema(
        type: typeValues.map[json["type"]]!,
        properties: AmbitiousProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class AmbitiousProperties {
    FluffyData data;

    AmbitiousProperties({
        required this.data,
    });

    factory AmbitiousProperties.fromJson(Map<String, dynamic> json) => AmbitiousProperties(
        data: FluffyData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class FluffyData {
    Type type;
    CunningProperties properties;

    FluffyData({
        required this.type,
        required this.properties,
    });

    factory FluffyData.fromJson(Map<String, dynamic> json) => FluffyData(
        type: typeValues.map[json["type"]]!,
        properties: CunningProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class CunningProperties {
    CommentClass accessToken;
    Item expires;
    CommentClass refreshToken;

    CunningProperties({
        required this.accessToken,
        required this.expires,
        required this.refreshToken,
    });

    factory CunningProperties.fromJson(Map<String, dynamic> json) => CunningProperties(
        accessToken: CommentClass.fromJson(json["access_token"]),
        expires: Item.fromJson(json["expires"]),
        refreshToken: CommentClass.fromJson(json["refresh_token"]),
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken.toJson(),
        "expires": expires.toJson(),
        "refresh_token": refreshToken.toJson(),
    };
}

class AuthLogout {
    AuthLogoutPost post;

    AuthLogout({
        required this.post,
    });

    factory AuthLogout.fromJson(Map<String, dynamic> json) => AuthLogout(
        post: AuthLogoutPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post.toJson(),
    };
}

class AuthLogoutPost {
    String summary;
    String description;
    List<String> tags;
    String operationId;
    TentacledRequestBody? requestBody;
    FluffyResponses responses;

    AuthLogoutPost({
        required this.summary,
        required this.description,
        required this.tags,
        required this.operationId,
        this.requestBody,
        required this.responses,
    });

    factory AuthLogoutPost.fromJson(Map<String, dynamic> json) => AuthLogoutPost(
        summary: json["summary"],
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        requestBody: json["requestBody"] == null ? null : TentacledRequestBody.fromJson(json["requestBody"]),
        responses: FluffyResponses.fromJson(json["responses"]),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "requestBody": requestBody?.toJson(),
        "responses": responses.toJson(),
    };
}

class TentacledRequestBody {
    HilariousContent content;

    TentacledRequestBody({
        required this.content,
    });

    factory TentacledRequestBody.fromJson(Map<String, dynamic> json) => TentacledRequestBody(
        content: HilariousContent.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class HilariousContent {
    AmbitiousApplicationJson applicationJson;

    HilariousContent({
        required this.applicationJson,
    });

    factory HilariousContent.fromJson(Map<String, dynamic> json) => HilariousContent(
        applicationJson: AmbitiousApplicationJson.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class AmbitiousApplicationJson {
    HilariousSchema schema;

    AmbitiousApplicationJson({
        required this.schema,
    });

    factory AmbitiousApplicationJson.fromJson(Map<String, dynamic> json) => AmbitiousApplicationJson(
        schema: HilariousSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class HilariousSchema {
    Type type;
    MagentaProperties properties;

    HilariousSchema({
        required this.type,
        required this.properties,
    });

    factory HilariousSchema.fromJson(Map<String, dynamic> json) => HilariousSchema(
        type: typeValues.map[json["type"]]!,
        properties: MagentaProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class MagentaProperties {
    Action refreshToken;
    Action mode;

    MagentaProperties({
        required this.refreshToken,
        required this.mode,
    });

    factory MagentaProperties.fromJson(Map<String, dynamic> json) => MagentaProperties(
        refreshToken: Action.fromJson(json["refresh_token"]),
        mode: Action.fromJson(json["mode"]),
    );

    Map<String, dynamic> toJson() => {
        "refresh_token": refreshToken.toJson(),
        "mode": mode.toJson(),
    };
}

class FluffyResponses {
    Fluffy200 the200;

    FluffyResponses({
        required this.the200,
    });

    factory FluffyResponses.fromJson(Map<String, dynamic> json) => FluffyResponses(
        the200: Fluffy200.fromJson(json["200"]),
    );

    Map<String, dynamic> toJson() => {
        "200": the200.toJson(),
    };
}

class Fluffy200 {
    ResponseDescription description;

    Fluffy200({
        required this.description,
    });

    factory Fluffy200.fromJson(Map<String, dynamic> json) => Fluffy200(
        description: responseDescriptionValues.map[json["description"]]!,
    );

    Map<String, dynamic> toJson() => {
        "description": responseDescriptionValues.reverse[description],
    };
}

class AuthOauth {
    AuthOauthGet authOauthGet;

    AuthOauth({
        required this.authOauthGet,
    });

    factory AuthOauth.fromJson(Map<String, dynamic> json) => AuthOauth(
        authOauthGet: AuthOauthGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": authOauthGet.toJson(),
    };
}

class AuthOauthGet {
    List<String> tags;
    String operationId;
    String summary;
    String description;
    Map<String, StickyResponse> responses;

    AuthOauthGet({
        required this.tags,
        required this.operationId,
        required this.summary,
        required this.description,
        required this.responses,
    });

    factory AuthOauthGet.fromJson(Map<String, dynamic> json) => AuthOauthGet(
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        summary: json["summary"],
        description: json["description"],
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, StickyResponse>(k, StickyResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "summary": summary,
        "description": description,
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class StickyResponse {
    ResponseDescription? description;
    AmbitiousContent? content;
    String? ref;

    StickyResponse({
        this.description,
        this.content,
        this.ref,
    });

    factory StickyResponse.fromJson(Map<String, dynamic> json) => StickyResponse(
        description: responseDescriptionValues.map[json["description"]]!,
        content: json["content"] == null ? null : AmbitiousContent.fromJson(json["content"]),
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "description": responseDescriptionValues.reverse[description],
        "content": content?.toJson(),
        "\u0024ref": ref,
    };
}

class AmbitiousContent {
    CunningApplicationJson applicationJson;

    AmbitiousContent({
        required this.applicationJson,
    });

    factory AmbitiousContent.fromJson(Map<String, dynamic> json) => AmbitiousContent(
        applicationJson: CunningApplicationJson.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class CunningApplicationJson {
    AmbitiousSchema schema;

    CunningApplicationJson({
        required this.schema,
    });

    factory CunningApplicationJson.fromJson(Map<String, dynamic> json) => CunningApplicationJson(
        schema: AmbitiousSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class AmbitiousSchema {
    Type type;
    FriskyProperties properties;

    AmbitiousSchema({
        required this.type,
        required this.properties,
    });

    factory AmbitiousSchema.fromJson(Map<String, dynamic> json) => AmbitiousSchema(
        type: typeValues.map[json["type"]]!,
        properties: FriskyProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class FriskyProperties {
    IdClass public;
    Action data;

    FriskyProperties({
        required this.public,
        required this.data,
    });

    factory FriskyProperties.fromJson(Map<String, dynamic> json) => FriskyProperties(
        public: IdClass.fromJson(json["public"]),
        data: Action.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "public": public.toJson(),
        "data": data.toJson(),
    };
}

class AuthOauthProvider {
    AuthOauthProviderGet authOauthProviderGet;

    AuthOauthProvider({
        required this.authOauthProviderGet,
    });

    factory AuthOauthProvider.fromJson(Map<String, dynamic> json) => AuthOauthProvider(
        authOauthProviderGet: AuthOauthProviderGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": authOauthProviderGet.toJson(),
    };
}

class AuthOauthProviderGet {
    String summary;
    String description;
    List<String> tags;
    String operationId;
    List<CollectionElement> parameters;
    Map<String, IndigoResponse> responses;

    AuthOauthProviderGet({
        required this.summary,
        required this.description,
        required this.tags,
        required this.operationId,
        required this.parameters,
        required this.responses,
    });

    factory AuthOauthProviderGet.fromJson(Map<String, dynamic> json) => AuthOauthProviderGet(
        summary: json["summary"],
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        parameters: List<CollectionElement>.from(json["parameters"].map((x) => CollectionElement.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, IndigoResponse>(k, IndigoResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class IndigoResponse {
    ResponseDescription? description;
    CunningContent? content;
    String? ref;

    IndigoResponse({
        this.description,
        this.content,
        this.ref,
    });

    factory IndigoResponse.fromJson(Map<String, dynamic> json) => IndigoResponse(
        description: responseDescriptionValues.map[json["description"]]!,
        content: json["content"] == null ? null : CunningContent.fromJson(json["content"]),
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "description": responseDescriptionValues.reverse[description],
        "content": content?.toJson(),
        "\u0024ref": ref,
    };
}

class CunningContent {
    MagentaApplicationJson applicationJson;

    CunningContent({
        required this.applicationJson,
    });

    factory CunningContent.fromJson(Map<String, dynamic> json) => CunningContent(
        applicationJson: MagentaApplicationJson.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class MagentaApplicationJson {
    CunningSchema schema;

    MagentaApplicationJson({
        required this.schema,
    });

    factory MagentaApplicationJson.fromJson(Map<String, dynamic> json) => MagentaApplicationJson(
        schema: CunningSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class CunningSchema {
    Type type;
    MischievousProperties properties;

    CunningSchema({
        required this.type,
        required this.properties,
    });

    factory CunningSchema.fromJson(Map<String, dynamic> json) => CunningSchema(
        type: typeValues.map[json["type"]]!,
        properties: MischievousProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class MischievousProperties {
    IdClass public;
    TentacledData data;

    MischievousProperties({
        required this.public,
        required this.data,
    });

    factory MischievousProperties.fromJson(Map<String, dynamic> json) => MischievousProperties(
        public: IdClass.fromJson(json["public"]),
        data: TentacledData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "public": public.toJson(),
        "data": data.toJson(),
    };
}

class TentacledData {
    Type type;
    BraggadociousProperties properties;

    TentacledData({
        required this.type,
        required this.properties,
    });

    factory TentacledData.fromJson(Map<String, dynamic> json) => TentacledData(
        type: typeValues.map[json["type"]]!,
        properties: BraggadociousProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class BraggadociousProperties {
    IdClass token;

    BraggadociousProperties({
        required this.token,
    });

    factory BraggadociousProperties.fromJson(Map<String, dynamic> json) => BraggadociousProperties(
        token: IdClass.fromJson(json["token"]),
    );

    Map<String, dynamic> toJson() => {
        "token": token.toJson(),
    };
}

class AuthPasswordRequest {
    AuthPasswordRequestPost post;

    AuthPasswordRequest({
        required this.post,
    });

    factory AuthPasswordRequest.fromJson(Map<String, dynamic> json) => AuthPasswordRequest(
        post: AuthPasswordRequestPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post.toJson(),
    };
}

class AuthPasswordRequestPost {
    List<String> tags;
    String operationId;
    String summary;
    String description;
    StickyRequestBody requestBody;
    TentacledResponses responses;

    AuthPasswordRequestPost({
        required this.tags,
        required this.operationId,
        required this.summary,
        required this.description,
        required this.requestBody,
        required this.responses,
    });

    factory AuthPasswordRequestPost.fromJson(Map<String, dynamic> json) => AuthPasswordRequestPost(
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        summary: json["summary"],
        description: json["description"],
        requestBody: StickyRequestBody.fromJson(json["requestBody"]),
        responses: TentacledResponses.fromJson(json["responses"]),
    );

    Map<String, dynamic> toJson() => {
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "summary": summary,
        "description": description,
        "requestBody": requestBody.toJson(),
        "responses": responses.toJson(),
    };
}

class StickyRequestBody {
    MagentaContent content;

    StickyRequestBody({
        required this.content,
    });

    factory StickyRequestBody.fromJson(Map<String, dynamic> json) => StickyRequestBody(
        content: MagentaContent.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class MagentaContent {
    FriskyApplicationJson applicationJson;

    MagentaContent({
        required this.applicationJson,
    });

    factory MagentaContent.fromJson(Map<String, dynamic> json) => MagentaContent(
        applicationJson: FriskyApplicationJson.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class FriskyApplicationJson {
    MagentaSchema schema;

    FriskyApplicationJson({
        required this.schema,
    });

    factory FriskyApplicationJson.fromJson(Map<String, dynamic> json) => FriskyApplicationJson(
        schema: MagentaSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class MagentaSchema {
    Type type;
    List<String> required;
    Properties1 properties;

    MagentaSchema({
        required this.type,
        required this.required,
        required this.properties,
    });

    factory MagentaSchema.fromJson(Map<String, dynamic> json) => MagentaSchema(
        type: typeValues.map[json["type"]]!,
        required: List<String>.from(json["required"].map((x) => x)),
        properties: Properties1.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class Properties1 {
    Action email;

    Properties1({
        required this.email,
    });

    factory Properties1.fromJson(Map<String, dynamic> json) => Properties1(
        email: Action.fromJson(json["email"]),
    );

    Map<String, dynamic> toJson() => {
        "email": email.toJson(),
    };
}

class TentacledResponses {
    The401Element the401;

    TentacledResponses({
        required this.the401,
    });

    factory TentacledResponses.fromJson(Map<String, dynamic> json) => TentacledResponses(
        the401: The401Element.fromJson(json["401"]),
    );

    Map<String, dynamic> toJson() => {
        "401": the401.toJson(),
    };
}

class AuthPasswordReset {
    AuthPasswordResetPost post;

    AuthPasswordReset({
        required this.post,
    });

    factory AuthPasswordReset.fromJson(Map<String, dynamic> json) => AuthPasswordReset(
        post: AuthPasswordResetPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post.toJson(),
    };
}

class AuthPasswordResetPost {
    List<String> tags;
    String operationId;
    String summary;
    String description;
    IndigoRequestBody requestBody;
    TentacledResponses responses;

    AuthPasswordResetPost({
        required this.tags,
        required this.operationId,
        required this.summary,
        required this.description,
        required this.requestBody,
        required this.responses,
    });

    factory AuthPasswordResetPost.fromJson(Map<String, dynamic> json) => AuthPasswordResetPost(
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        summary: json["summary"],
        description: json["description"],
        requestBody: IndigoRequestBody.fromJson(json["requestBody"]),
        responses: TentacledResponses.fromJson(json["responses"]),
    );

    Map<String, dynamic> toJson() => {
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "summary": summary,
        "description": description,
        "requestBody": requestBody.toJson(),
        "responses": responses.toJson(),
    };
}

class IndigoRequestBody {
    FriskyContent content;

    IndigoRequestBody({
        required this.content,
    });

    factory IndigoRequestBody.fromJson(Map<String, dynamic> json) => IndigoRequestBody(
        content: FriskyContent.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class FriskyContent {
    MischievousApplicationJson applicationJson;

    FriskyContent({
        required this.applicationJson,
    });

    factory FriskyContent.fromJson(Map<String, dynamic> json) => FriskyContent(
        applicationJson: MischievousApplicationJson.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class MischievousApplicationJson {
    FriskySchema schema;

    MischievousApplicationJson({
        required this.schema,
    });

    factory MischievousApplicationJson.fromJson(Map<String, dynamic> json) => MischievousApplicationJson(
        schema: FriskySchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class FriskySchema {
    Type type;
    List<String> required;
    Properties2 properties;

    FriskySchema({
        required this.type,
        required this.required,
        required this.properties,
    });

    factory FriskySchema.fromJson(Map<String, dynamic> json) => FriskySchema(
        type: typeValues.map[json["type"]]!,
        required: List<String>.from(json["required"].map((x) => x)),
        properties: Properties2.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class Properties2 {
    User token;
    User password;

    Properties2({
        required this.token,
        required this.password,
    });

    factory Properties2.fromJson(Map<String, dynamic> json) => Properties2(
        token: User.fromJson(json["token"]),
        password: User.fromJson(json["password"]),
    );

    Map<String, dynamic> toJson() => {
        "token": token.toJson(),
        "password": password.toJson(),
    };
}

class AuthRefresh {
    AuthRefreshPost post;

    AuthRefresh({
        required this.post,
    });

    factory AuthRefresh.fromJson(Map<String, dynamic> json) => AuthRefresh(
        post: AuthRefreshPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post.toJson(),
    };
}

class AuthRefreshPost {
    String summary;
    String description;
    List<String> tags;
    String operationId;
    IndecentRequestBody requestBody;
    Map<String, IndecentResponse> responses;

    AuthRefreshPost({
        required this.summary,
        required this.description,
        required this.tags,
        required this.operationId,
        required this.requestBody,
        required this.responses,
    });

    factory AuthRefreshPost.fromJson(Map<String, dynamic> json) => AuthRefreshPost(
        summary: json["summary"],
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        requestBody: IndecentRequestBody.fromJson(json["requestBody"]),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, IndecentResponse>(k, IndecentResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "requestBody": requestBody.toJson(),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class IndecentRequestBody {
    MischievousContent content;

    IndecentRequestBody({
        required this.content,
    });

    factory IndecentRequestBody.fromJson(Map<String, dynamic> json) => IndecentRequestBody(
        content: MischievousContent.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class MischievousContent {
    BraggadociousApplicationJson applicationJson;

    MischievousContent({
        required this.applicationJson,
    });

    factory MischievousContent.fromJson(Map<String, dynamic> json) => MischievousContent(
        applicationJson: BraggadociousApplicationJson.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class BraggadociousApplicationJson {
    MischievousSchema schema;

    BraggadociousApplicationJson({
        required this.schema,
    });

    factory BraggadociousApplicationJson.fromJson(Map<String, dynamic> json) => BraggadociousApplicationJson(
        schema: MischievousSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class MischievousSchema {
    Type type;
    Properties3 properties;

    MischievousSchema({
        required this.type,
        required this.properties,
    });

    factory MischievousSchema.fromJson(Map<String, dynamic> json) => MischievousSchema(
        type: typeValues.map[json["type"]]!,
        properties: Properties3.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class Properties3 {
    User refreshToken;
    User mode;

    Properties3({
        required this.refreshToken,
        required this.mode,
    });

    factory Properties3.fromJson(Map<String, dynamic> json) => Properties3(
        refreshToken: User.fromJson(json["refresh_token"]),
        mode: User.fromJson(json["mode"]),
    );

    Map<String, dynamic> toJson() => {
        "refresh_token": refreshToken.toJson(),
        "mode": mode.toJson(),
    };
}

class IndecentResponse {
    String? description;
    IndecentContent? content;
    String? ref;

    IndecentResponse({
        this.description,
        this.content,
        this.ref,
    });

    factory IndecentResponse.fromJson(Map<String, dynamic> json) => IndecentResponse(
        description: json["description"],
        content: json["content"] == null ? null : IndecentContent.fromJson(json["content"]),
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "content": content?.toJson(),
        "\u0024ref": ref,
    };
}

class CollectionsClass {
    CollectionsGet collectionsGet;

    CollectionsClass({
        required this.collectionsGet,
    });

    factory CollectionsClass.fromJson(Map<String, dynamic> json) => CollectionsClass(
        collectionsGet: CollectionsGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": collectionsGet.toJson(),
    };
}

class CollectionsGet {
    String summary;
    String description;
    String operationId;
    List<The401Element> parameters;
    Map<String, HilariousResponse> responses;
    List<String> tags;

    CollectionsGet({
        required this.summary,
        required this.description,
        required this.operationId,
        required this.parameters,
        required this.responses,
        required this.tags,
    });

    factory CollectionsGet.fromJson(Map<String, dynamic> json) => CollectionsGet(
        summary: json["summary"],
        description: json["description"],
        operationId: json["operationId"],
        parameters: List<The401Element>.from(json["parameters"].map((x) => The401Element.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, HilariousResponse>(k, HilariousResponse.fromJson(v))),
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}

class HilariousResponse {
    ResponseDescription? description;
    BraggadociousContent? content;
    String? ref;

    HilariousResponse({
        this.description,
        this.content,
        this.ref,
    });

    factory HilariousResponse.fromJson(Map<String, dynamic> json) => HilariousResponse(
        description: responseDescriptionValues.map[json["description"]]!,
        content: json["content"] == null ? null : BraggadociousContent.fromJson(json["content"]),
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "description": responseDescriptionValues.reverse[description],
        "content": content?.toJson(),
        "\u0024ref": ref,
    };
}

class BraggadociousContent {
    ApplicationJson1 applicationJson;

    BraggadociousContent({
        required this.applicationJson,
    });

    factory BraggadociousContent.fromJson(Map<String, dynamic> json) => BraggadociousContent(
        applicationJson: ApplicationJson1.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson1 {
    BraggadociousSchema schema;

    ApplicationJson1({
        required this.schema,
    });

    factory ApplicationJson1.fromJson(Map<String, dynamic> json) => ApplicationJson1(
        schema: BraggadociousSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class BraggadociousSchema {
    Type type;
    Properties4 properties;

    BraggadociousSchema({
        required this.type,
        required this.properties,
    });

    factory BraggadociousSchema.fromJson(Map<String, dynamic> json) => BraggadociousSchema(
        type: typeValues.map[json["type"]]!,
        properties: Properties4.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class Properties4 {
    PurpleData data;

    Properties4({
        required this.data,
    });

    factory Properties4.fromJson(Map<String, dynamic> json) => Properties4(
        data: PurpleData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class Id {
    CollectionsIdGet idGet;

    Id({
        required this.idGet,
    });

    factory Id.fromJson(Map<String, dynamic> json) => Id(
        idGet: CollectionsIdGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": idGet.toJson(),
    };
}

class CollectionsIdGet {
    String summary;
    String description;
    String operationId;
    List<CollectionElement> parameters;
    Map<String, FluffyResponse> responses;
    List<String> tags;

    CollectionsIdGet({
        required this.summary,
        required this.description,
        required this.operationId,
        required this.parameters,
        required this.responses,
        required this.tags,
    });

    factory CollectionsIdGet.fromJson(Map<String, dynamic> json) => CollectionsIdGet(
        summary: json["summary"],
        description: json["description"],
        operationId: json["operationId"],
        parameters: List<CollectionElement>.from(json["parameters"].map((x) => CollectionElement.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}

class FieldsCollection {
    FieldsCollectionGet fieldsCollectionGet;

    FieldsCollection({
        required this.fieldsCollectionGet,
    });

    factory FieldsCollection.fromJson(Map<String, dynamic> json) => FieldsCollection(
        fieldsCollectionGet: FieldsCollectionGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": fieldsCollectionGet.toJson(),
    };
}

class FieldsCollectionGet {
    String summary;
    String description;
    String operationId;
    List<CollectionElement> parameters;
    Map<String, HilariousResponse> responses;
    List<String> tags;

    FieldsCollectionGet({
        required this.summary,
        required this.description,
        required this.operationId,
        required this.parameters,
        required this.responses,
        required this.tags,
    });

    factory FieldsCollectionGet.fromJson(Map<String, dynamic> json) => FieldsCollectionGet(
        summary: json["summary"],
        description: json["description"],
        operationId: json["operationId"],
        parameters: List<CollectionElement>.from(json["parameters"].map((x) => CollectionElement.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, HilariousResponse>(k, HilariousResponse.fromJson(v))),
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}

class FilesClass {
    FilesGet filesGet;

    FilesClass({
        required this.filesGet,
    });

    factory FilesClass.fromJson(Map<String, dynamic> json) => FilesClass(
        filesGet: FilesGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": filesGet.toJson(),
    };
}

class FilesGet {
    String summary;
    String description;
    List<String> tags;
    String operationId;
    List<The401Element> parameters;
    Map<String, PurpleResponse> responses;
    List<Security>? security;
    HilariousRequestBody? requestBody;

    FilesGet({
        required this.summary,
        required this.description,
        required this.tags,
        required this.operationId,
        required this.parameters,
        required this.responses,
        this.security,
        this.requestBody,
    });

    factory FilesGet.fromJson(Map<String, dynamic> json) => FilesGet(
        summary: json["summary"],
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        parameters: List<The401Element>.from(json["parameters"].map((x) => The401Element.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        requestBody: json["requestBody"] == null ? null : HilariousRequestBody.fromJson(json["requestBody"]),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "requestBody": requestBody?.toJson(),
    };
}

class HilariousRequestBody {
    Content1 content;

    HilariousRequestBody({
        required this.content,
    });

    factory HilariousRequestBody.fromJson(Map<String, dynamic> json) => HilariousRequestBody(
        content: Content1.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class Content1 {
    ApplicationJson2 applicationJson;

    Content1({
        required this.applicationJson,
    });

    factory Content1.fromJson(Map<String, dynamic> json) => Content1(
        applicationJson: ApplicationJson2.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson2 {
    Schema1 schema;

    ApplicationJson2({
        required this.schema,
    });

    factory ApplicationJson2.fromJson(Map<String, dynamic> json) => ApplicationJson2(
        schema: Schema1.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema1 {
    Type type;
    Properties5 properties;

    Schema1({
        required this.type,
        required this.properties,
    });

    factory Schema1.fromJson(Map<String, dynamic> json) => Schema1(
        type: typeValues.map[json["type"]]!,
        properties: Properties5.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class Properties5 {
    KeysClass keys;
    StickyData data;

    Properties5({
        required this.keys,
        required this.data,
    });

    factory Properties5.fromJson(Map<String, dynamic> json) => Properties5(
        keys: KeysClass.fromJson(json["keys"]),
        data: StickyData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "keys": keys.toJson(),
        "data": data.toJson(),
    };
}

class StickyData {
    Type type;
    List<String> required;
    Properties6 properties;

    StickyData({
        required this.type,
        required this.required,
        required this.properties,
    });

    factory StickyData.fromJson(Map<String, dynamic> json) => StickyData(
        type: typeValues.map[json["type"]]!,
        required: List<String>.from(json["required"].map((x) => x)),
        properties: Properties6.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class Properties6 {
    RoleClass collection;
    RoleElement title;
    RoleElement role;
    Limit search;
    Filters filters;
    Limit layout;
    Limit layoutQuery;
    Limit layoutOptions;

    Properties6({
        required this.collection,
        required this.title,
        required this.role,
        required this.search,
        required this.filters,
        required this.layout,
        required this.layoutQuery,
        required this.layoutOptions,
    });

    factory Properties6.fromJson(Map<String, dynamic> json) => Properties6(
        collection: RoleClass.fromJson(json["collection"]),
        title: RoleElement.fromJson(json["title"]),
        role: RoleElement.fromJson(json["role"]),
        search: Limit.fromJson(json["search"]),
        filters: Filters.fromJson(json["filters"]),
        layout: Limit.fromJson(json["layout"]),
        layoutQuery: Limit.fromJson(json["layout_query"]),
        layoutOptions: Limit.fromJson(json["layout_options"]),
    );

    Map<String, dynamic> toJson() => {
        "collection": collection.toJson(),
        "title": title.toJson(),
        "role": role.toJson(),
        "search": search.toJson(),
        "filters": filters.toJson(),
        "layout": layout.toJson(),
        "layout_query": layoutQuery.toJson(),
        "layout_options": layoutOptions.toJson(),
    };
}

class RoleClass {
    Type type;
    String description;
    String? example;

    RoleClass({
        required this.type,
        required this.description,
        this.example,
    });

    factory RoleClass.fromJson(Map<String, dynamic> json) => RoleClass(
        type: typeValues.map[json["type"]]!,
        description: json["description"],
        example: json["example"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "description": description,
        "example": example,
    };
}

class Filters {
    Type type;
    FiltersItems items;

    Filters({
        required this.type,
        required this.items,
    });

    factory Filters.fromJson(Map<String, dynamic> json) => Filters(
        type: typeValues.map[json["type"]]!,
        items: FiltersItems.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "items": items.toJson(),
    };
}

class FiltersItems {
    Type type;
    Properties7 properties;

    FiltersItems({
        required this.type,
        required this.properties,
    });

    factory FiltersItems.fromJson(Map<String, dynamic> json) => FiltersItems(
        type: typeValues.map[json["type"]]!,
        properties: Properties7.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class Properties7 {
    CommentClass? key;
    CommentClass field;
    CommentClass propertiesOperator;
    Item value;

    Properties7({
        this.key,
        required this.field,
        required this.propertiesOperator,
        required this.value,
    });

    factory Properties7.fromJson(Map<String, dynamic> json) => Properties7(
        key: json["key"] == null ? null : CommentClass.fromJson(json["key"]),
        field: CommentClass.fromJson(json["field"]),
        propertiesOperator: CommentClass.fromJson(json["operator"]),
        value: Item.fromJson(json["value"]),
    );

    Map<String, dynamic> toJson() => {
        "key": key?.toJson(),
        "field": field.toJson(),
        "operator": propertiesOperator.toJson(),
        "value": value.toJson(),
    };
}

class Security {
    List<dynamic> auth;

    Security({
        required this.auth,
    });

    factory Security.fromJson(Map<String, dynamic> json) => Security(
        auth: List<dynamic>.from(json["Auth"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "Auth": List<dynamic>.from(auth.map((x) => x)),
    };
}

class FilesId {
    PostClass filesIdGet;

    FilesId({
        required this.filesIdGet,
    });

    factory FilesId.fromJson(Map<String, dynamic> json) => FilesId(
        filesIdGet: PostClass.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": filesIdGet.toJson(),
    };
}

class PostClass {
    String summary;
    String description;
    List<String> tags;
    String operationId;
    List<The401Element> parameters;
    Map<String, FluffyResponse> responses;
    AmbitiousRequestBody? requestBody;
    List<Security>? security;

    PostClass({
        required this.summary,
        required this.description,
        required this.tags,
        required this.operationId,
        required this.parameters,
        required this.responses,
        this.requestBody,
        this.security,
    });

    factory PostClass.fromJson(Map<String, dynamic> json) => PostClass(
        summary: json["summary"],
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        parameters: List<The401Element>.from(json["parameters"].map((x) => The401Element.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
        requestBody: json["requestBody"] == null ? null : AmbitiousRequestBody.fromJson(json["requestBody"]),
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "requestBody": requestBody?.toJson(),
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
    };
}

class AmbitiousRequestBody {
    Content2 content;

    AmbitiousRequestBody({
        required this.content,
    });

    factory AmbitiousRequestBody.fromJson(Map<String, dynamic> json) => AmbitiousRequestBody(
        content: Content2.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class Content2 {
    ApplicationJson3 applicationJson;

    Content2({
        required this.applicationJson,
    });

    factory Content2.fromJson(Map<String, dynamic> json) => Content2(
        applicationJson: ApplicationJson3.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson3 {
    Schema2 schema;

    ApplicationJson3({
        required this.schema,
    });

    factory ApplicationJson3.fromJson(Map<String, dynamic> json) => ApplicationJson3(
        schema: Schema2.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema2 {
    Type type;
    List<String> required;
    Properties8 properties;

    Schema2({
        required this.type,
        required this.required,
        required this.properties,
    });

    factory Schema2.fromJson(Map<String, dynamic> json) => Schema2(
        type: typeValues.map[json["type"]]!,
        required: List<String>.from(json["required"].map((x) => x)),
        properties: Properties8.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class Properties8 {
    RoleClass collection;
    RoleClass title;
    RoleClass role;
    Limit? search;
    Filters filters;
    Limit? layout;
    Limit? layoutQuery;
    Limit? layoutOptions;
    Limit? searchQuery;
    Limit? viewType;
    Limit? viewQuery;
    Limit? viewOptions;
    Limit? translation;

    Properties8({
        required this.collection,
        required this.title,
        required this.role,
        this.search,
        required this.filters,
        this.layout,
        this.layoutQuery,
        this.layoutOptions,
        this.searchQuery,
        this.viewType,
        this.viewQuery,
        this.viewOptions,
        this.translation,
    });

    factory Properties8.fromJson(Map<String, dynamic> json) => Properties8(
        collection: RoleClass.fromJson(json["collection"]),
        title: RoleClass.fromJson(json["title"]),
        role: RoleClass.fromJson(json["role"]),
        search: json["search"] == null ? null : Limit.fromJson(json["search"]),
        filters: Filters.fromJson(json["filters"]),
        layout: json["layout"] == null ? null : Limit.fromJson(json["layout"]),
        layoutQuery: json["layout_query"] == null ? null : Limit.fromJson(json["layout_query"]),
        layoutOptions: json["layout_options"] == null ? null : Limit.fromJson(json["layout_options"]),
        searchQuery: json["search_query"] == null ? null : Limit.fromJson(json["search_query"]),
        viewType: json["view_type"] == null ? null : Limit.fromJson(json["view_type"]),
        viewQuery: json["view_query"] == null ? null : Limit.fromJson(json["view_query"]),
        viewOptions: json["view_options"] == null ? null : Limit.fromJson(json["view_options"]),
        translation: json["translation"] == null ? null : Limit.fromJson(json["translation"]),
    );

    Map<String, dynamic> toJson() => {
        "collection": collection.toJson(),
        "title": title.toJson(),
        "role": role.toJson(),
        "search": search?.toJson(),
        "filters": filters.toJson(),
        "layout": layout?.toJson(),
        "layout_query": layoutQuery?.toJson(),
        "layout_options": layoutOptions?.toJson(),
        "search_query": searchQuery?.toJson(),
        "view_type": viewType?.toJson(),
        "view_query": viewQuery?.toJson(),
        "view_options": viewOptions?.toJson(),
        "translation": translation?.toJson(),
    };
}

class ItemsAllergensClass {
    ItemsAllergensGet itemsAllergensGet;

    ItemsAllergensClass({
        required this.itemsAllergensGet,
    });

    factory ItemsAllergensClass.fromJson(Map<String, dynamic> json) => ItemsAllergensClass(
        itemsAllergensGet: ItemsAllergensGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": itemsAllergensGet.toJson(),
    };
}

class ItemsAllergensGet {
    String summary;
    String description;
    List<String> tags;
    String operationId;
    List<Security> security;
    List<The401Element> parameters;
    Map<String, AmbitiousResponse> responses;

    ItemsAllergensGet({
        required this.summary,
        required this.description,
        required this.tags,
        required this.operationId,
        required this.security,
        required this.parameters,
        required this.responses,
    });

    factory ItemsAllergensGet.fromJson(Map<String, dynamic> json) => ItemsAllergensGet(
        summary: json["summary"],
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        security: List<Security>.from(json["security"].map((x) => Security.fromJson(x))),
        parameters: List<The401Element>.from(json["parameters"].map((x) => The401Element.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, AmbitiousResponse>(k, AmbitiousResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "security": List<dynamic>.from(security.map((x) => x.toJson())),
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class AmbitiousResponse {
    ResponseDescription? description;
    Content3? content;
    String? ref;

    AmbitiousResponse({
        this.description,
        this.content,
        this.ref,
    });

    factory AmbitiousResponse.fromJson(Map<String, dynamic> json) => AmbitiousResponse(
        description: responseDescriptionValues.map[json["description"]]!,
        content: json["content"] == null ? null : Content3.fromJson(json["content"]),
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "description": responseDescriptionValues.reverse[description],
        "content": content?.toJson(),
        "\u0024ref": ref,
    };
}

class Content3 {
    ApplicationJson4 applicationJson;

    Content3({
        required this.applicationJson,
    });

    factory Content3.fromJson(Map<String, dynamic> json) => Content3(
        applicationJson: ApplicationJson4.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson4 {
    Schema3 schema;

    ApplicationJson4({
        required this.schema,
    });

    factory ApplicationJson4.fromJson(Map<String, dynamic> json) => ApplicationJson4(
        schema: Schema3.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema3 {
    Type type;
    Properties9 properties;

    Schema3({
        required this.type,
        required this.properties,
    });

    factory Schema3.fromJson(Map<String, dynamic> json) => Schema3(
        type: typeValues.map[json["type"]]!,
        properties: Properties9.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class Properties9 {
    IndigoData data;
    The401Element meta;

    Properties9({
        required this.data,
        required this.meta,
    });

    factory Properties9.fromJson(Map<String, dynamic> json) => Properties9(
        data: IndigoData.fromJson(json["data"]),
        meta: The401Element.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "meta": meta.toJson(),
    };
}

class IndigoData {
    Type type;
    SchemaElement items;

    IndigoData({
        required this.type,
        required this.items,
    });

    factory IndigoData.fromJson(Map<String, dynamic> json) => IndigoData(
        type: typeValues.map[json["type"]]!,
        items: SchemaElement.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "items": items.toJson(),
    };
}

class ItemsAllergensId {
    ItemsAllergensIdGet itemsAllergensIdGet;

    ItemsAllergensId({
        required this.itemsAllergensIdGet,
    });

    factory ItemsAllergensId.fromJson(Map<String, dynamic> json) => ItemsAllergensId(
        itemsAllergensIdGet: ItemsAllergensIdGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": itemsAllergensIdGet.toJson(),
    };
}

class ItemsAllergensIdGet {
    Summary summary;
    String description;
    List<String> tags;
    String operationId;
    List<PurpleParameter> parameters;
    Map<String, CunningResponse> responses;
    CunningRequestBody? requestBody;

    ItemsAllergensIdGet({
        required this.summary,
        required this.description,
        required this.tags,
        required this.operationId,
        required this.parameters,
        required this.responses,
        this.requestBody,
    });

    factory ItemsAllergensIdGet.fromJson(Map<String, dynamic> json) => ItemsAllergensIdGet(
        summary: summaryValues.map[json["summary"]]!,
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        parameters: List<PurpleParameter>.from(json["parameters"].map((x) => PurpleParameter.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, CunningResponse>(k, CunningResponse.fromJson(v))),
        requestBody: json["requestBody"] == null ? null : CunningRequestBody.fromJson(json["requestBody"]),
    );

    Map<String, dynamic> toJson() => {
        "summary": summaryValues.reverse[summary],
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "requestBody": requestBody?.toJson(),
    };
}

class PurpleParameter {
    CollectionRef? ref;
    Name? name;
    ParameterDescription? description;
    In? parameterIn;
    bool? required;
    Schema4? schema;

    PurpleParameter({
        this.ref,
        this.name,
        this.description,
        this.parameterIn,
        this.required,
        this.schema,
    });

    factory PurpleParameter.fromJson(Map<String, dynamic> json) => PurpleParameter(
        ref: collectionRefValues.map[json["\u0024ref"]]!,
        name: nameValues.map[json["name"]]!,
        description: parameterDescriptionValues.map[json["description"]]!,
        parameterIn: inValues.map[json["in"]]!,
        required: json["required"],
        schema: json["schema"] == null ? null : Schema4.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "\u0024ref": collectionRefValues.reverse[ref],
        "name": nameValues.reverse[name],
        "description": parameterDescriptionValues.reverse[description],
        "in": inValues.reverse[parameterIn],
        "required": required,
        "schema": schema?.toJson(),
    };
}

enum ParameterDescription {
    INDEX_OF_THE_ITEM
}

final parameterDescriptionValues = EnumValues({
    "Index of the item.": ParameterDescription.INDEX_OF_THE_ITEM
});

enum Name {
    ID
}

final nameValues = EnumValues({
    "id": Name.ID
});

class Schema4 {
    List<RoleElement> oneOf;

    Schema4({
        required this.oneOf,
    });

    factory Schema4.fromJson(Map<String, dynamic> json) => Schema4(
        oneOf: List<RoleElement>.from(json["oneOf"].map((x) => RoleElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "oneOf": List<dynamic>.from(oneOf.map((x) => x.toJson())),
    };
}

class CunningRequestBody {
    Content4 content;

    CunningRequestBody({
        required this.content,
    });

    factory CunningRequestBody.fromJson(Map<String, dynamic> json) => CunningRequestBody(
        content: Content4.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class Content4 {
    ApplicationJson5 applicationJson;

    Content4({
        required this.applicationJson,
    });

    factory Content4.fromJson(Map<String, dynamic> json) => Content4(
        applicationJson: ApplicationJson5.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson5 {
    SchemaElement schema;

    ApplicationJson5({
        required this.schema,
    });

    factory ApplicationJson5.fromJson(Map<String, dynamic> json) => ApplicationJson5(
        schema: SchemaElement.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class CunningResponse {
    ResponseDescription? description;
    Content5? content;
    String? ref;

    CunningResponse({
        this.description,
        this.content,
        this.ref,
    });

    factory CunningResponse.fromJson(Map<String, dynamic> json) => CunningResponse(
        description: responseDescriptionValues.map[json["description"]]!,
        content: json["content"] == null ? null : Content5.fromJson(json["content"]),
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "description": responseDescriptionValues.reverse[description],
        "content": content?.toJson(),
        "\u0024ref": ref,
    };
}

class Content5 {
    ApplicationJson6 applicationJson;

    Content5({
        required this.applicationJson,
    });

    factory Content5.fromJson(Map<String, dynamic> json) => Content5(
        applicationJson: ApplicationJson6.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson6 {
    Schema5 schema;

    ApplicationJson6({
        required this.schema,
    });

    factory ApplicationJson6.fromJson(Map<String, dynamic> json) => ApplicationJson6(
        schema: Schema5.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema5 {
    Type type;
    Properties10 properties;

    Schema5({
        required this.type,
        required this.properties,
    });

    factory Schema5.fromJson(Map<String, dynamic> json) => Schema5(
        type: typeValues.map[json["type"]]!,
        properties: Properties10.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class Properties10 {
    SchemaElement data;

    Properties10({
        required this.data,
    });

    factory Properties10.fromJson(Map<String, dynamic> json) => Properties10(
        data: SchemaElement.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

enum Summary {
    RETRIEVE_AN_ITEM,
    UPDATE_AN_ITEM
}

final summaryValues = EnumValues({
    "Retrieve an Item": Summary.RETRIEVE_AN_ITEM,
    "Update an Item": Summary.UPDATE_AN_ITEM
});

class Items {
    ItemsCustomersPost post;
    ItemsAllergensGet itemsGet;
    Patch patch;
    ItemsCustomersDelete delete;

    Items({
        required this.post,
        required this.itemsGet,
        required this.patch,
        required this.delete,
    });

    factory Items.fromJson(Map<String, dynamic> json) => Items(
        post: ItemsCustomersPost.fromJson(json["post"]),
        itemsGet: ItemsAllergensGet.fromJson(json["get"]),
        patch: Patch.fromJson(json["patch"]),
        delete: ItemsCustomersDelete.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post.toJson(),
        "get": itemsGet.toJson(),
        "patch": patch.toJson(),
        "delete": delete.toJson(),
    };
}

class ItemsCustomersDelete {
    String summary;
    String description;
    List<String> tags;
    String operationId;
    Map<String, DeleteResponse> responses;
    List<The401Element>? parameters;
    List<Security>? security;

    ItemsCustomersDelete({
        required this.summary,
        required this.description,
        required this.tags,
        required this.operationId,
        required this.responses,
        this.parameters,
        this.security,
    });

    factory ItemsCustomersDelete.fromJson(Map<String, dynamic> json) => ItemsCustomersDelete(
        summary: json["summary"],
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, DeleteResponse>(k, DeleteResponse.fromJson(v))),
        parameters: json["parameters"] == null ? [] : List<The401Element>.from(json["parameters"]!.map((x) => The401Element.fromJson(x))),
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
    };
}

class DeleteResponse {
    ResponseDescription? description;
    String? ref;

    DeleteResponse({
        this.description,
        this.ref,
    });

    factory DeleteResponse.fromJson(Map<String, dynamic> json) => DeleteResponse(
        description: responseDescriptionValues.map[json["description"]]!,
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "description": responseDescriptionValues.reverse[description],
        "\u0024ref": ref,
    };
}

class Patch {
    String summary;
    String description;
    List<String> tags;
    String operationId;
    List<The401Element> parameters;
    MagentaRequestBody requestBody;
    PatchResponses responses;

    Patch({
        required this.summary,
        required this.description,
        required this.tags,
        required this.operationId,
        required this.parameters,
        required this.requestBody,
        required this.responses,
    });

    factory Patch.fromJson(Map<String, dynamic> json) => Patch(
        summary: json["summary"],
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        parameters: List<The401Element>.from(json["parameters"].map((x) => The401Element.fromJson(x))),
        requestBody: MagentaRequestBody.fromJson(json["requestBody"]),
        responses: PatchResponses.fromJson(json["responses"]),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "requestBody": requestBody.toJson(),
        "responses": responses.toJson(),
    };
}

class MagentaRequestBody {
    Content6 content;

    MagentaRequestBody({
        required this.content,
    });

    factory MagentaRequestBody.fromJson(Map<String, dynamic> json) => MagentaRequestBody(
        content: Content6.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class Content6 {
    ApplicationJson7 applicationJson;

    Content6({
        required this.applicationJson,
    });

    factory Content6.fromJson(Map<String, dynamic> json) => Content6(
        applicationJson: ApplicationJson7.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson7 {
    Schema6 schema;

    ApplicationJson7({
        required this.schema,
    });

    factory ApplicationJson7.fromJson(Map<String, dynamic> json) => ApplicationJson7(
        schema: Schema6.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema6 {
    List<PurpleOneOf> oneOf;

    Schema6({
        required this.oneOf,
    });

    factory Schema6.fromJson(Map<String, dynamic> json) => Schema6(
        oneOf: List<PurpleOneOf>.from(json["oneOf"].map((x) => PurpleOneOf.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "oneOf": List<dynamic>.from(oneOf.map((x) => x.toJson())),
    };
}

class PurpleOneOf {
    Type? type;
    The401Element? items;
    String? ref;

    PurpleOneOf({
        this.type,
        this.items,
        this.ref,
    });

    factory PurpleOneOf.fromJson(Map<String, dynamic> json) => PurpleOneOf(
        type: typeValues.map[json["type"]]!,
        items: json["items"] == null ? null : The401Element.fromJson(json["items"]),
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "items": items?.toJson(),
        "\u0024ref": ref,
    };
}

class PatchResponses {
    Tentacled200 the200;

    PatchResponses({
        required this.the200,
    });

    factory PatchResponses.fromJson(Map<String, dynamic> json) => PatchResponses(
        the200: Tentacled200.fromJson(json["200"]),
    );

    Map<String, dynamic> toJson() => {
        "200": the200.toJson(),
    };
}

class Tentacled200 {
    ResponseDescription description;
    Content7 content;

    Tentacled200({
        required this.description,
        required this.content,
    });

    factory Tentacled200.fromJson(Map<String, dynamic> json) => Tentacled200(
        description: responseDescriptionValues.map[json["description"]]!,
        content: Content7.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "description": responseDescriptionValues.reverse[description],
        "content": content.toJson(),
    };
}

class Content7 {
    ApplicationJson8 applicationJson;

    Content7({
        required this.applicationJson,
    });

    factory Content7.fromJson(Map<String, dynamic> json) => Content7(
        applicationJson: ApplicationJson8.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson8 {
    Schema7 schema;

    ApplicationJson8({
        required this.schema,
    });

    factory ApplicationJson8.fromJson(Map<String, dynamic> json) => ApplicationJson8(
        schema: Schema7.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema7 {
    Properties11 properties;

    Schema7({
        required this.properties,
    });

    factory Schema7.fromJson(Map<String, dynamic> json) => Schema7(
        properties: Properties11.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "properties": properties.toJson(),
    };
}

class Properties11 {
    IndecentData data;

    Properties11({
        required this.data,
    });

    factory Properties11.fromJson(Map<String, dynamic> json) => Properties11(
        data: IndecentData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class IndecentData {
    The401Element items;

    IndecentData({
        required this.items,
    });

    factory IndecentData.fromJson(Map<String, dynamic> json) => IndecentData(
        items: The401Element.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "items": items.toJson(),
    };
}

class ItemsCustomersPost {
    String summary;
    String description;
    List<String> tags;
    String operationId;
    List<The401Element> parameters;
    MagentaRequestBody requestBody;
    Map<String, MagentaResponse> responses;

    ItemsCustomersPost({
        required this.summary,
        required this.description,
        required this.tags,
        required this.operationId,
        required this.parameters,
        required this.requestBody,
        required this.responses,
    });

    factory ItemsCustomersPost.fromJson(Map<String, dynamic> json) => ItemsCustomersPost(
        summary: json["summary"],
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        parameters: List<The401Element>.from(json["parameters"].map((x) => The401Element.fromJson(x))),
        requestBody: MagentaRequestBody.fromJson(json["requestBody"]),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, MagentaResponse>(k, MagentaResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "requestBody": requestBody.toJson(),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class MagentaResponse {
    ResponseDescription? description;
    Content8? content;
    String? ref;

    MagentaResponse({
        this.description,
        this.content,
        this.ref,
    });

    factory MagentaResponse.fromJson(Map<String, dynamic> json) => MagentaResponse(
        description: responseDescriptionValues.map[json["description"]]!,
        content: json["content"] == null ? null : Content8.fromJson(json["content"]),
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "description": responseDescriptionValues.reverse[description],
        "content": content?.toJson(),
        "\u0024ref": ref,
    };
}

class Content8 {
    ApplicationJson9 applicationJson;

    Content8({
        required this.applicationJson,
    });

    factory Content8.fromJson(Map<String, dynamic> json) => Content8(
        applicationJson: ApplicationJson9.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson9 {
    Schema8 schema;

    ApplicationJson9({
        required this.schema,
    });

    factory ApplicationJson9.fromJson(Map<String, dynamic> json) => ApplicationJson9(
        schema: Schema8.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema8 {
    Type type;
    Properties11 properties;

    Schema8({
        required this.type,
        required this.properties,
    });

    factory Schema8.fromJson(Map<String, dynamic> json) => Schema8(
        type: typeValues.map[json["type"]]!,
        properties: Properties11.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class ItemsSId {
    ItemsAllergensIdGet itemsSIdGet;
    ItemsAllergensIdGet patch;
    ItemsCustomersIdDelete delete;

    ItemsSId({
        required this.itemsSIdGet,
        required this.patch,
        required this.delete,
    });

    factory ItemsSId.fromJson(Map<String, dynamic> json) => ItemsSId(
        itemsSIdGet: ItemsAllergensIdGet.fromJson(json["get"]),
        patch: ItemsAllergensIdGet.fromJson(json["patch"]),
        delete: ItemsCustomersIdDelete.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "get": itemsSIdGet.toJson(),
        "patch": patch.toJson(),
        "delete": delete.toJson(),
    };
}

class ItemsCustomersIdDelete {
    String summary;
    String description;
    List<String> tags;
    String operationId;
    Map<String, DeleteResponse> responses;
    List<FluffyParameter> parameters;

    ItemsCustomersIdDelete({
        required this.summary,
        required this.description,
        required this.tags,
        required this.operationId,
        required this.responses,
        required this.parameters,
    });

    factory ItemsCustomersIdDelete.fromJson(Map<String, dynamic> json) => ItemsCustomersIdDelete(
        summary: json["summary"],
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        operationId: json["operationId"],
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, DeleteResponse>(k, DeleteResponse.fromJson(v))),
        parameters: List<FluffyParameter>.from(json["parameters"].map((x) => FluffyParameter.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "operationId": operationId,
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
    };
}

class FluffyParameter {
    Name name;
    ParameterDescription description;
    In parameterIn;
    bool required;
    Schema4 schema;

    FluffyParameter({
        required this.name,
        required this.description,
        required this.parameterIn,
        required this.required,
        required this.schema,
    });

    factory FluffyParameter.fromJson(Map<String, dynamic> json) => FluffyParameter(
        name: nameValues.map[json["name"]]!,
        description: parameterDescriptionValues.map[json["description"]]!,
        parameterIn: inValues.map[json["in"]]!,
        required: json["required"],
        schema: Schema4.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "name": nameValues.reverse[name],
        "description": parameterDescriptionValues.reverse[description],
        "in": inValues.reverse[parameterIn],
        "required": required,
        "schema": schema.toJson(),
    };
}

class ItemsRestaurantsClass {
    ItemsAllergensGet itemsRestaurantsGet;
    Patch patch;

    ItemsRestaurantsClass({
        required this.itemsRestaurantsGet,
        required this.patch,
    });

    factory ItemsRestaurantsClass.fromJson(Map<String, dynamic> json) => ItemsRestaurantsClass(
        itemsRestaurantsGet: ItemsAllergensGet.fromJson(json["get"]),
        patch: Patch.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "get": itemsRestaurantsGet.toJson(),
        "patch": patch.toJson(),
    };
}

class ItemsRestaurantsId {
    ItemsAllergensIdGet itemsRestaurantsIdGet;
    ItemsAllergensIdGet patch;

    ItemsRestaurantsId({
        required this.itemsRestaurantsIdGet,
        required this.patch,
    });

    factory ItemsRestaurantsId.fromJson(Map<String, dynamic> json) => ItemsRestaurantsId(
        itemsRestaurantsIdGet: ItemsAllergensIdGet.fromJson(json["get"]),
        patch: ItemsAllergensIdGet.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "get": itemsRestaurantsIdGet.toJson(),
        "patch": patch.toJson(),
    };
}

class PresetsClass {
    FilesGet presetsGet;
    PostClass post;
    FilesGet patch;
    ItemsCustomersDelete delete;

    PresetsClass({
        required this.presetsGet,
        required this.post,
        required this.patch,
        required this.delete,
    });

    factory PresetsClass.fromJson(Map<String, dynamic> json) => PresetsClass(
        presetsGet: FilesGet.fromJson(json["get"]),
        post: PostClass.fromJson(json["post"]),
        patch: FilesGet.fromJson(json["patch"]),
        delete: ItemsCustomersDelete.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "get": presetsGet.toJson(),
        "post": post.toJson(),
        "patch": patch.toJson(),
        "delete": delete.toJson(),
    };
}

class PresetsId {
    PostClass presetsIdGet;
    PostClass patch;
    ItemsCustomersDelete delete;

    PresetsId({
        required this.presetsIdGet,
        required this.patch,
        required this.delete,
    });

    factory PresetsId.fromJson(Map<String, dynamic> json) => PresetsId(
        presetsIdGet: PostClass.fromJson(json["get"]),
        patch: PostClass.fromJson(json["patch"]),
        delete: ItemsCustomersDelete.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "get": presetsIdGet.toJson(),
        "patch": patch.toJson(),
        "delete": delete.toJson(),
    };
}

class ServerInfo {
    ServerInfoGet serverInfoGet;

    ServerInfo({
        required this.serverInfoGet,
    });

    factory ServerInfo.fromJson(Map<String, dynamic> json) => ServerInfo(
        serverInfoGet: ServerInfoGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": serverInfoGet.toJson(),
    };
}

class ServerInfoGet {
    String summary;
    String description;
    String operationId;
    List<CollectionElement> parameters;
    Map<String, FriskyResponse> responses;
    List<String> tags;

    ServerInfoGet({
        required this.summary,
        required this.description,
        required this.operationId,
        required this.parameters,
        required this.responses,
        required this.tags,
    });

    factory ServerInfoGet.fromJson(Map<String, dynamic> json) => ServerInfoGet(
        summary: json["summary"],
        description: json["description"],
        operationId: json["operationId"],
        parameters: List<CollectionElement>.from(json["parameters"].map((x) => CollectionElement.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, FriskyResponse>(k, FriskyResponse.fromJson(v))),
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}

class FriskyResponse {
    Content9? content;
    ResponseDescription? description;
    String? ref;

    FriskyResponse({
        this.content,
        this.description,
        this.ref,
    });

    factory FriskyResponse.fromJson(Map<String, dynamic> json) => FriskyResponse(
        content: json["content"] == null ? null : Content9.fromJson(json["content"]),
        description: responseDescriptionValues.map[json["description"]]!,
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "content": content?.toJson(),
        "description": responseDescriptionValues.reverse[description],
        "\u0024ref": ref,
    };
}

class Content9 {
    ApplicationJson10 applicationJson;

    Content9({
        required this.applicationJson,
    });

    factory Content9.fromJson(Map<String, dynamic> json) => Content9(
        applicationJson: ApplicationJson10.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson10 {
    Schema9 schema;

    ApplicationJson10({
        required this.schema,
    });

    factory ApplicationJson10.fromJson(Map<String, dynamic> json) => ApplicationJson10(
        schema: Schema9.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema9 {
    Properties12 properties;
    Type type;

    Schema9({
        required this.properties,
        required this.type,
    });

    factory Schema9.fromJson(Map<String, dynamic> json) => Schema9(
        properties: Properties12.fromJson(json["properties"]),
        type: typeValues.map[json["type"]]!,
    );

    Map<String, dynamic> toJson() => {
        "properties": properties.toJson(),
        "type": typeValues.reverse[type],
    };
}

class Properties12 {
    IdClass data;

    Properties12({
        required this.data,
    });

    factory Properties12.fromJson(Map<String, dynamic> json) => Properties12(
        data: IdClass.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class ServerPing {
    ServerPingGet serverPingGet;

    ServerPing({
        required this.serverPingGet,
    });

    factory ServerPing.fromJson(Map<String, dynamic> json) => ServerPing(
        serverPingGet: ServerPingGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": serverPingGet.toJson(),
    };
}

class ServerPingGet {
    String summary;
    String description;
    String operationId;
    StickyResponses responses;
    List<String> tags;

    ServerPingGet({
        required this.summary,
        required this.description,
        required this.operationId,
        required this.responses,
        required this.tags,
    });

    factory ServerPingGet.fromJson(Map<String, dynamic> json) => ServerPingGet(
        summary: json["summary"],
        description: json["description"],
        operationId: json["operationId"],
        responses: StickyResponses.fromJson(json["responses"]),
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "operationId": operationId,
        "responses": responses.toJson(),
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}

class StickyResponses {
    Sticky200 the200;

    StickyResponses({
        required this.the200,
    });

    factory StickyResponses.fromJson(Map<String, dynamic> json) => StickyResponses(
        the200: Sticky200.fromJson(json["200"]),
    );

    Map<String, dynamic> toJson() => {
        "200": the200.toJson(),
    };
}

class Sticky200 {
    Content10 content;
    ResponseDescription description;

    Sticky200({
        required this.content,
        required this.description,
    });

    factory Sticky200.fromJson(Map<String, dynamic> json) => Sticky200(
        content: Content10.fromJson(json["content"]),
        description: responseDescriptionValues.map[json["description"]]!,
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
        "description": responseDescriptionValues.reverse[description],
    };
}

class Content10 {
    ApplicationText applicationText;

    Content10({
        required this.applicationText,
    });

    factory Content10.fromJson(Map<String, dynamic> json) => Content10(
        applicationText: ApplicationText.fromJson(json["application/text"]),
    );

    Map<String, dynamic> toJson() => {
        "application/text": applicationText.toJson(),
    };
}

class ApplicationText {
    ApplicationTextSchema schema;

    ApplicationText({
        required this.schema,
    });

    factory ApplicationText.fromJson(Map<String, dynamic> json) => ApplicationText(
        schema: ApplicationTextSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class ApplicationTextSchema {
    Type type;
    String pattern;
    String example;

    ApplicationTextSchema({
        required this.type,
        required this.pattern,
        required this.example,
    });

    factory ApplicationTextSchema.fromJson(Map<String, dynamic> json) => ApplicationTextSchema(
        type: typeValues.map[json["type"]]!,
        pattern: json["pattern"],
        example: json["example"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "pattern": pattern,
        "example": example,
    };
}

class UtilsExportCollection {
    UtilsExportCollectionPost post;

    UtilsExportCollection({
        required this.post,
    });

    factory UtilsExportCollection.fromJson(Map<String, dynamic> json) => UtilsExportCollection(
        post: UtilsExportCollectionPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post.toJson(),
    };
}

class UtilsExportCollectionPost {
    String summary;
    String description;
    String operationId;
    List<CollectionElement> parameters;
    FriskyRequestBody requestBody;
    FluffyResponses responses;
    List<String> tags;

    UtilsExportCollectionPost({
        required this.summary,
        required this.description,
        required this.operationId,
        required this.parameters,
        required this.requestBody,
        required this.responses,
        required this.tags,
    });

    factory UtilsExportCollectionPost.fromJson(Map<String, dynamic> json) => UtilsExportCollectionPost(
        summary: json["summary"],
        description: json["description"],
        operationId: json["operationId"],
        parameters: List<CollectionElement>.from(json["parameters"].map((x) => CollectionElement.fromJson(x))),
        requestBody: FriskyRequestBody.fromJson(json["requestBody"]),
        responses: FluffyResponses.fromJson(json["responses"]),
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "requestBody": requestBody.toJson(),
        "responses": responses.toJson(),
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}

class FriskyRequestBody {
    Content11 content;

    FriskyRequestBody({
        required this.content,
    });

    factory FriskyRequestBody.fromJson(Map<String, dynamic> json) => FriskyRequestBody(
        content: Content11.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class Content11 {
    ApplicationJson11 applicationJson;

    Content11({
        required this.applicationJson,
    });

    factory Content11.fromJson(Map<String, dynamic> json) => Content11(
        applicationJson: ApplicationJson11.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson11 {
    Schema10 schema;

    ApplicationJson11({
        required this.schema,
    });

    factory ApplicationJson11.fromJson(Map<String, dynamic> json) => ApplicationJson11(
        schema: Schema10.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema10 {
    Properties13 properties;
    List<String> required;

    Schema10({
        required this.properties,
        required this.required,
    });

    factory Schema10.fromJson(Map<String, dynamic> json) => Schema10(
        properties: Properties13.fromJson(json["properties"]),
        required: List<String>.from(json["required"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "properties": properties.toJson(),
        "required": List<dynamic>.from(required.map((x) => x)),
    };
}

class Properties13 {
    Action format;
    The401Element query;
    The401Element file;

    Properties13({
        required this.format,
        required this.query,
        required this.file,
    });

    factory Properties13.fromJson(Map<String, dynamic> json) => Properties13(
        format: Action.fromJson(json["format"]),
        query: The401Element.fromJson(json["query"]),
        file: The401Element.fromJson(json["file"]),
    );

    Map<String, dynamic> toJson() => {
        "format": format.toJson(),
        "query": query.toJson(),
        "file": file.toJson(),
    };
}

class UtilsHashGenerate {
    UtilsHashGeneratePost post;

    UtilsHashGenerate({
        required this.post,
    });

    factory UtilsHashGenerate.fromJson(Map<String, dynamic> json) => UtilsHashGenerate(
        post: UtilsHashGeneratePost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post.toJson(),
    };
}

class UtilsHashGeneratePost {
    String summary;
    String description;
    String operationId;
    MischievousRequestBody? requestBody;
    IndigoResponses responses;
    List<String> tags;
    List<CollectionElement>? parameters;

    UtilsHashGeneratePost({
        required this.summary,
        required this.description,
        required this.operationId,
        this.requestBody,
        required this.responses,
        required this.tags,
        this.parameters,
    });

    factory UtilsHashGeneratePost.fromJson(Map<String, dynamic> json) => UtilsHashGeneratePost(
        summary: json["summary"],
        description: json["description"],
        operationId: json["operationId"],
        requestBody: json["requestBody"] == null ? null : MischievousRequestBody.fromJson(json["requestBody"]),
        responses: IndigoResponses.fromJson(json["responses"]),
        tags: List<String>.from(json["tags"].map((x) => x)),
        parameters: json["parameters"] == null ? [] : List<CollectionElement>.from(json["parameters"]!.map((x) => CollectionElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "operationId": operationId,
        "requestBody": requestBody?.toJson(),
        "responses": responses.toJson(),
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
    };
}

class MischievousRequestBody {
    Content12 content;

    MischievousRequestBody({
        required this.content,
    });

    factory MischievousRequestBody.fromJson(Map<String, dynamic> json) => MischievousRequestBody(
        content: Content12.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class Content12 {
    ApplicationJson12 applicationJson;

    Content12({
        required this.applicationJson,
    });

    factory Content12.fromJson(Map<String, dynamic> json) => Content12(
        applicationJson: ApplicationJson12.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson12 {
    Schema11 schema;

    ApplicationJson12({
        required this.schema,
    });

    factory ApplicationJson12.fromJson(Map<String, dynamic> json) => ApplicationJson12(
        schema: Schema11.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema11 {
    Properties14 properties;
    List<Type> required;

    Schema11({
        required this.properties,
        required this.required,
    });

    factory Schema11.fromJson(Map<String, dynamic> json) => Schema11(
        properties: Properties14.fromJson(json["properties"]),
        required: List<Type>.from(json["required"].map((x) => typeValues.map[x]!)),
    );

    Map<String, dynamic> toJson() => {
        "properties": properties.toJson(),
        "required": List<dynamic>.from(required.map((x) => typeValues.reverse[x])),
    };
}

class Properties14 {
    Limit string;

    Properties14({
        required this.string,
    });

    factory Properties14.fromJson(Map<String, dynamic> json) => Properties14(
        string: Limit.fromJson(json["string"]),
    );

    Map<String, dynamic> toJson() => {
        "string": string.toJson(),
    };
}

class IndigoResponses {
    Indigo200 the200;

    IndigoResponses({
        required this.the200,
    });

    factory IndigoResponses.fromJson(Map<String, dynamic> json) => IndigoResponses(
        the200: Indigo200.fromJson(json["200"]),
    );

    Map<String, dynamic> toJson() => {
        "200": the200.toJson(),
    };
}

class Indigo200 {
    Content13 content;
    ResponseDescription description;

    Indigo200({
        required this.content,
        required this.description,
    });

    factory Indigo200.fromJson(Map<String, dynamic> json) => Indigo200(
        content: Content13.fromJson(json["content"]),
        description: responseDescriptionValues.map[json["description"]]!,
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
        "description": responseDescriptionValues.reverse[description],
    };
}

class Content13 {
    ApplicationJson13 applicationJson;

    Content13({
        required this.applicationJson,
    });

    factory Content13.fromJson(Map<String, dynamic> json) => Content13(
        applicationJson: ApplicationJson13.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson13 {
    Schema12 schema;

    ApplicationJson13({
        required this.schema,
    });

    factory ApplicationJson13.fromJson(Map<String, dynamic> json) => ApplicationJson13(
        schema: Schema12.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema12 {
    Properties15 properties;
    Type type;

    Schema12({
        required this.properties,
        required this.type,
    });

    factory Schema12.fromJson(Map<String, dynamic> json) => Schema12(
        properties: Properties15.fromJson(json["properties"]),
        type: typeValues.map[json["type"]]!,
    );

    Map<String, dynamic> toJson() => {
        "properties": properties.toJson(),
        "type": typeValues.reverse[type],
    };
}

class Properties15 {
    CommentClass data;

    Properties15({
        required this.data,
    });

    factory Properties15.fromJson(Map<String, dynamic> json) => Properties15(
        data: CommentClass.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class UtilsHashVerify {
    UtilsHashVerifyPost post;

    UtilsHashVerify({
        required this.post,
    });

    factory UtilsHashVerify.fromJson(Map<String, dynamic> json) => UtilsHashVerify(
        post: UtilsHashVerifyPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post.toJson(),
    };
}

class UtilsHashVerifyPost {
    String summary;
    String description;
    String operationId;
    BraggadociousRequestBody requestBody;
    IndecentResponses responses;
    List<String> tags;

    UtilsHashVerifyPost({
        required this.summary,
        required this.description,
        required this.operationId,
        required this.requestBody,
        required this.responses,
        required this.tags,
    });

    factory UtilsHashVerifyPost.fromJson(Map<String, dynamic> json) => UtilsHashVerifyPost(
        summary: json["summary"],
        description: json["description"],
        operationId: json["operationId"],
        requestBody: BraggadociousRequestBody.fromJson(json["requestBody"]),
        responses: IndecentResponses.fromJson(json["responses"]),
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "operationId": operationId,
        "requestBody": requestBody.toJson(),
        "responses": responses.toJson(),
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}

class BraggadociousRequestBody {
    Content14 content;

    BraggadociousRequestBody({
        required this.content,
    });

    factory BraggadociousRequestBody.fromJson(Map<String, dynamic> json) => BraggadociousRequestBody(
        content: Content14.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class Content14 {
    ApplicationJson14 applicationJson;

    Content14({
        required this.applicationJson,
    });

    factory Content14.fromJson(Map<String, dynamic> json) => Content14(
        applicationJson: ApplicationJson14.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson14 {
    Schema13 schema;

    ApplicationJson14({
        required this.schema,
    });

    factory ApplicationJson14.fromJson(Map<String, dynamic> json) => ApplicationJson14(
        schema: Schema13.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema13 {
    Properties16 properties;
    List<String> required;

    Schema13({
        required this.properties,
        required this.required,
    });

    factory Schema13.fromJson(Map<String, dynamic> json) => Schema13(
        properties: Properties16.fromJson(json["properties"]),
        required: List<String>.from(json["required"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "properties": properties.toJson(),
        "required": List<dynamic>.from(required.map((x) => x)),
    };
}

class Properties16 {
    Limit string;
    Limit hash;

    Properties16({
        required this.string,
        required this.hash,
    });

    factory Properties16.fromJson(Map<String, dynamic> json) => Properties16(
        string: Limit.fromJson(json["string"]),
        hash: Limit.fromJson(json["hash"]),
    );

    Map<String, dynamic> toJson() => {
        "string": string.toJson(),
        "hash": hash.toJson(),
    };
}

class IndecentResponses {
    Indecent200 the200;

    IndecentResponses({
        required this.the200,
    });

    factory IndecentResponses.fromJson(Map<String, dynamic> json) => IndecentResponses(
        the200: Indecent200.fromJson(json["200"]),
    );

    Map<String, dynamic> toJson() => {
        "200": the200.toJson(),
    };
}

class Indecent200 {
    Content15 content;
    ResponseDescription description;

    Indecent200({
        required this.content,
        required this.description,
    });

    factory Indecent200.fromJson(Map<String, dynamic> json) => Indecent200(
        content: Content15.fromJson(json["content"]),
        description: responseDescriptionValues.map[json["description"]]!,
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
        "description": responseDescriptionValues.reverse[description],
    };
}

class Content15 {
    ApplicationJson15 applicationJson;

    Content15({
        required this.applicationJson,
    });

    factory Content15.fromJson(Map<String, dynamic> json) => Content15(
        applicationJson: ApplicationJson15.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson15 {
    Schema14 schema;

    ApplicationJson15({
        required this.schema,
    });

    factory ApplicationJson15.fromJson(Map<String, dynamic> json) => ApplicationJson15(
        schema: Schema14.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema14 {
    Properties17 properties;
    Type type;

    Schema14({
        required this.properties,
        required this.type,
    });

    factory Schema14.fromJson(Map<String, dynamic> json) => Schema14(
        properties: Properties17.fromJson(json["properties"]),
        type: typeValues.map[json["type"]]!,
    );

    Map<String, dynamic> toJson() => {
        "properties": properties.toJson(),
        "type": typeValues.reverse[type],
    };
}

class Properties17 {
    HilariousData data;

    Properties17({
        required this.data,
    });

    factory Properties17.fromJson(Map<String, dynamic> json) => Properties17(
        data: HilariousData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class HilariousData {
    Type type;
    bool example;

    HilariousData({
        required this.type,
        required this.example,
    });

    factory HilariousData.fromJson(Map<String, dynamic> json) => HilariousData(
        type: typeValues.map[json["type"]]!,
        example: json["example"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "example": example,
    };
}

class UtilsImportCollection {
    UtilsImportCollectionPost post;

    UtilsImportCollection({
        required this.post,
    });

    factory UtilsImportCollection.fromJson(Map<String, dynamic> json) => UtilsImportCollection(
        post: UtilsImportCollectionPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post.toJson(),
    };
}

class UtilsImportCollectionPost {
    String summary;
    String description;
    String operationId;
    List<CollectionElement> parameters;
    RequestBody1 requestBody;
    FluffyResponses responses;
    List<String> tags;

    UtilsImportCollectionPost({
        required this.summary,
        required this.description,
        required this.operationId,
        required this.parameters,
        required this.requestBody,
        required this.responses,
        required this.tags,
    });

    factory UtilsImportCollectionPost.fromJson(Map<String, dynamic> json) => UtilsImportCollectionPost(
        summary: json["summary"],
        description: json["description"],
        operationId: json["operationId"],
        parameters: List<CollectionElement>.from(json["parameters"].map((x) => CollectionElement.fromJson(x))),
        requestBody: RequestBody1.fromJson(json["requestBody"]),
        responses: FluffyResponses.fromJson(json["responses"]),
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "requestBody": requestBody.toJson(),
        "responses": responses.toJson(),
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}

class RequestBody1 {
    Content16 content;

    RequestBody1({
        required this.content,
    });

    factory RequestBody1.fromJson(Map<String, dynamic> json) => RequestBody1(
        content: Content16.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class Content16 {
    MultipartFormData multipartFormData;

    Content16({
        required this.multipartFormData,
    });

    factory Content16.fromJson(Map<String, dynamic> json) => Content16(
        multipartFormData: MultipartFormData.fromJson(json["multipart/form-data"]),
    );

    Map<String, dynamic> toJson() => {
        "multipart/form-data": multipartFormData.toJson(),
    };
}

class MultipartFormData {
    MultipartFormDataSchema schema;

    MultipartFormData({
        required this.schema,
    });

    factory MultipartFormData.fromJson(Map<String, dynamic> json) => MultipartFormData(
        schema: MultipartFormDataSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class MultipartFormDataSchema {
    Type type;
    Properties18 properties;

    MultipartFormDataSchema({
        required this.type,
        required this.properties,
    });

    factory MultipartFormDataSchema.fromJson(Map<String, dynamic> json) => MultipartFormDataSchema(
        type: typeValues.map[json["type"]]!,
        properties: Properties18.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "properties": properties.toJson(),
    };
}

class Properties18 {
    FileElement file;

    Properties18({
        required this.file,
    });

    factory Properties18.fromJson(Map<String, dynamic> json) => Properties18(
        file: FileElement.fromJson(json["file"]),
    );

    Map<String, dynamic> toJson() => {
        "file": file.toJson(),
    };
}

class UtilsRandomString {
    UtilsHashGeneratePost utilsRandomStringGet;

    UtilsRandomString({
        required this.utilsRandomStringGet,
    });

    factory UtilsRandomString.fromJson(Map<String, dynamic> json) => UtilsRandomString(
        utilsRandomStringGet: UtilsHashGeneratePost.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": utilsRandomStringGet.toJson(),
    };
}

class UtilsSortCollection {
    UtilsSortCollectionPost post;

    UtilsSortCollection({
        required this.post,
    });

    factory UtilsSortCollection.fromJson(Map<String, dynamic> json) => UtilsSortCollection(
        post: UtilsSortCollectionPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post.toJson(),
    };
}

class UtilsSortCollectionPost {
    String summary;
    String description;
    String operationId;
    List<CollectionElement> parameters;
    RequestBody2 requestBody;
    FluffyResponses responses;
    List<String> tags;

    UtilsSortCollectionPost({
        required this.summary,
        required this.description,
        required this.operationId,
        required this.parameters,
        required this.requestBody,
        required this.responses,
        required this.tags,
    });

    factory UtilsSortCollectionPost.fromJson(Map<String, dynamic> json) => UtilsSortCollectionPost(
        summary: json["summary"],
        description: json["description"],
        operationId: json["operationId"],
        parameters: List<CollectionElement>.from(json["parameters"].map((x) => CollectionElement.fromJson(x))),
        requestBody: RequestBody2.fromJson(json["requestBody"]),
        responses: FluffyResponses.fromJson(json["responses"]),
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "operationId": operationId,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "requestBody": requestBody.toJson(),
        "responses": responses.toJson(),
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}

class RequestBody2 {
    Content17 content;

    RequestBody2({
        required this.content,
    });

    factory RequestBody2.fromJson(Map<String, dynamic> json) => RequestBody2(
        content: Content17.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "content": content.toJson(),
    };
}

class Content17 {
    ApplicationJson16 applicationJson;

    Content17({
        required this.applicationJson,
    });

    factory Content17.fromJson(Map<String, dynamic> json) => Content17(
        applicationJson: ApplicationJson16.fromJson(json["application/json"]),
    );

    Map<String, dynamic> toJson() => {
        "application/json": applicationJson.toJson(),
    };
}

class ApplicationJson16 {
    Schema15 schema;

    ApplicationJson16({
        required this.schema,
    });

    factory ApplicationJson16.fromJson(Map<String, dynamic> json) => ApplicationJson16(
        schema: Schema15.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "schema": schema.toJson(),
    };
}

class Schema15 {
    Properties19 properties;

    Schema15({
        required this.properties,
    });

    factory Schema15.fromJson(Map<String, dynamic> json) => Schema15(
        properties: Properties19.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "properties": properties.toJson(),
    };
}

class Properties19 {
    Limit item;
    Limit to;

    Properties19({
        required this.item,
        required this.to,
    });

    factory Properties19.fromJson(Map<String, dynamic> json) => Properties19(
        item: Limit.fromJson(json["item"]),
        to: Limit.fromJson(json["to"]),
    );

    Map<String, dynamic> toJson() => {
        "item": item.toJson(),
        "to": to.toJson(),
    };
}

class Server {
    String url;
    String description;

    Server({
        required this.url,
        required this.description,
    });

    factory Server.fromJson(Map<String, dynamic> json) => Server(
        url: json["url"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "description": description,
    };
}

class Tag {
    String name;
    String? description;
    String? xAuthentication;
    List<String>? xSchemas;
    String? xCollection;

    Tag({
        required this.name,
        this.description,
        this.xAuthentication,
        this.xSchemas,
        this.xCollection,
    });

    factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        name: json["name"],
        description: json["description"],
        xAuthentication: json["x-authentication"],
        xSchemas: json["x-schemas"] == null ? [] : List<String>.from(json["x-schemas"]!.map((x) => x)),
        xCollection: json["x-collection"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "x-authentication": xAuthentication,
        "x-schemas": xSchemas == null ? [] : List<dynamic>.from(xSchemas!.map((x) => x)),
        "x-collection": xCollection,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
