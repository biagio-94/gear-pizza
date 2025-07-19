import 'dart:io';

import 'package:dio/dio.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/common/services/firestore_service.dart';
import 'package:gearpizza/common/utils/exception_handler.dart';
import 'package:gearpizza/features/cart/api/cart_endpoints.dart';
import 'package:gearpizza/features/cart/model/customer_dto.dart';
import 'package:gearpizza/features/cart/model/order_dto.dart';
import 'package:gearpizza/features/cart/services/cart_service_exception.dart';
import 'package:get_it/get_it.dart';

class CartRepository {
  final ApiService _apiService;

  CartRepository(this._apiService);

  Future<CustomerDto?> checkCustomerExists({required String email}) async {
    try {
      final endpoint = CartEndpoints.checkCustomer(email: email);
      final resp = await _apiService.get(endpoint);

      if (resp.statusCode != 200) {
        throw FetchCustomerException();
      }

      final data = resp.data['data'] as List<dynamic>?;
      if (data == null || data.isEmpty) {
        return null;
      }

      return CustomerDto.fromMap(data.first as Map<String, dynamic>);
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on CartServiceException {
      rethrow;
    } catch (e) {
      throw CartServiceException('Errore imprevisto $e');
    }
  }

  Future<CustomerDto> createCustomer({required CustomerDto customer}) async {
    try {
      final endpoint = CartEndpoints.createCustomer();
      final resp = await _apiService.post(
        endpoint,
        data: customer.toMap(),
      );

      if (resp.statusCode != 200) {
        throw CreateCustomerException();
      }

      final created =
          CustomerDto.fromMap(resp.data['data'] as Map<String, dynamic>);
      return created;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on CartServiceException {
      rethrow;
    } catch (e) {
      throw CartServiceException('Errore imprevisto $e');
    }
  }

  Future<OrderDto> createOrder({required OrderDto order}) async {
    try {
      // 1) Creo l'ordine base senza pizzas né helping_image
      final orderPayload = {
        'status': order.status,
        'restaurant': order.restaurantId,
        'customer': order.customerId,
        'address': order.address,
      };
      final createResp = await _apiService.post(
        '/items/orders',
        data: orderPayload,
      );
      const validStatuses = [200, 201, 204];
      if (!validStatuses.contains(createResp.statusCode)) {
        throw CreateOrderException();
      }
      final createdData = createResp.data['data'] as Map<String, dynamic>;
      final newOrderId = createdData['id'].toString();

      // 2) Popolo la pivot orders_pizzas
      for (final pizzaId in order.pizzaIds) {
        await _apiService.post(
          '/items/orders_pizzas',
          data: {
            'orders_id': newOrderId,
            'pizzas_id': pizzaId.toString(),
          },
        );
      }

      // 3) Se c’è un’immagine, uso il servizio per caricarla su Firebase
      if (order.helpingImage != null && order.helpingImage!.isNotEmpty) {
        // `order.helpingImage` è il path locale da XFile
        final file = File(order.helpingImage!);

        await GetIt.instance<FirebaseStorageService>().uploadOrderImage(
          file,
          newOrderId,
        );
      }

      // 5) Ricarico l'ordine completo
      final fetchResp = await _apiService.get(
        '/items/orders/$newOrderId',
        queryParameters: {
          'fields': ['*', 'pizzas.*'],
        },
      );
      if (fetchResp.statusCode != 200) {
        throw CartServiceException('Impossibile recuperare l’ordine creato');
      }
      final fullOrderMap = fetchResp.data['data'] as Map<String, dynamic>;
      return OrderDto.fromMap(fullOrderMap);
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on CartServiceException {
      rethrow;
    } catch (e) {
      throw CartServiceException('Errore imprevisto durante createOrder: $e');
    }
  }
}
