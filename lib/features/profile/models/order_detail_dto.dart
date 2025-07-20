class OrdersResponseDTO {
  final List<OrderDetailDto> data;

  OrdersResponseDTO({required this.data});

  factory OrdersResponseDTO.fromJson(Map<String, dynamic> json) {
    return OrdersResponseDTO(
      data: List<OrderDetailDto>.from(
        json['data'].map((order) => OrderDetailDto.fromJson(order)),
      ),
    );
  }
}

class OrderDetailDto {
  final int id;
  final String status;
  final String? helpingImage;
  final String address;
  final List<PizzaOrderDTO> pizzas;
  final RestaurantDTO restaurant;
  final CustomerDTO customer;

  OrderDetailDto({
    required this.id,
    required this.status,
    this.helpingImage,
    required this.address,
    required this.pizzas,
    required this.restaurant,
    required this.customer,
  });

  factory OrderDetailDto.fromJson(Map<String, dynamic> json) {
    return OrderDetailDto(
      id: json['id'],
      status: json['status'],
      helpingImage: json['helping_image'],
      address: json['address'],
      pizzas: List<PizzaOrderDTO>.from(
        json['pizzas'].map((p) => PizzaOrderDTO.fromJson(p)),
      ),
      restaurant: RestaurantDTO.fromJson(json['restaurant']),
      customer: CustomerDTO.fromJson(json['customer']),
    );
  }
  factory OrderDetailDto.fromMap(Map<String, dynamic> json) {
    return OrderDetailDto.fromJson(json);
  }
}

class PizzaOrderDTO {
  final int id;
  final int ordersId;
  final PizzaDTO pizza;

  PizzaOrderDTO({
    required this.id,
    required this.ordersId,
    required this.pizza,
  });

  factory PizzaOrderDTO.fromJson(Map<String, dynamic> json) {
    return PizzaOrderDTO(
      id: json['id'],
      ordersId: json['orders_id'],
      pizza: PizzaDTO.fromJson(json['pizzas_id']),
    );
  }
}

class PizzaDTO {
  final int id;
  final int restaurant;
  final String name;
  final String description;
  final String coverImage;
  final List<AllergenEntryDTO> allergens;

  PizzaDTO({
    required this.id,
    required this.restaurant,
    required this.name,
    required this.description,
    required this.coverImage,
    required this.allergens,
  });

  factory PizzaDTO.fromJson(Map<String, dynamic> json) {
    return PizzaDTO(
      id: json['id'],
      restaurant: json['restaurant'],
      name: json['name'],
      description: json['description'],
      coverImage: json['cover_image'],
      allergens: List<AllergenEntryDTO>.from(
        json['allergens'].map((a) => AllergenEntryDTO.fromJson(a)),
      ),
    );
  }
}

class AllergenEntryDTO {
  final int id;
  final int pizzasId;
  final int allergensId;

  AllergenEntryDTO({
    required this.id,
    required this.pizzasId,
    required this.allergensId,
  });

  factory AllergenEntryDTO.fromJson(Map<String, dynamic> json) {
    return AllergenEntryDTO(
      id: json['id'],
      pizzasId: json['pizzas_id'],
      allergensId: json['allergens_id'],
    );
  }
}

class RestaurantDTO {
  final int id;
  final String coverImage;
  final String owner;
  final String name;
  final List<int> pizzas;

  RestaurantDTO({
    required this.id,
    required this.coverImage,
    required this.owner,
    required this.name,
    required this.pizzas,
  });

  factory RestaurantDTO.fromJson(Map<String, dynamic> json) {
    return RestaurantDTO(
      id: json['id'],
      coverImage: json['cover_image'],
      owner: json['owner'],
      name: json['name'],
      pizzas: List<int>.from(json['pizzas']),
    );
  }
}

class CustomerDTO {
  final int id;
  final int restaurant;
  final String name;
  final String emailAddress;

  CustomerDTO({
    required this.id,
    required this.restaurant,
    required this.name,
    required this.emailAddress,
  });

  factory CustomerDTO.fromJson(Map<String, dynamic> json) {
    return CustomerDTO(
      id: json['id'],
      restaurant: json['restaurant'],
      name: json['name'],
      emailAddress: json['email_address'],
    );
  }
}
