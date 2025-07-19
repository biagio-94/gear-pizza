import 'dart:io';

import 'package:dio/dio.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/common/utils/exception_handler.dart';
import 'package:gearpizza/features/cart/api/cart_endpoints.dart';
import 'package:gearpizza/features/cart/model/customer_dto.dart';
import 'package:gearpizza/features/cart/model/order_dto.dart';
import 'package:gearpizza/features/cart/services/cart_service_exception.dart';

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
      int? helpingImageId;

      if (order.helpingImage != null && order.helpingImage!.isNotEmpty) {
        // Prendo l'immagine dal pathLocale
        final file = File(order.helpingImage!);
        helpingImageId = await _apiService.uploadFileToDirectus(file);
      }

      // Creo una copia dell'order con helpingImage aggiornata (id come stringa)
      final orderToSend = OrderDto(
        id: order.id,
        status: order.status,
        restaurantId: order.restaurantId,
        customerId: order.customerId,
        address: order.address,
        helpingImage: helpingImageId != null ? helpingImageId.toString() : null,
        pizzaIds: order.pizzaIds,
      );

      final endpoint = CartEndpoints.createOrder();
      final resp = await _apiService.post(
        endpoint,
        data: orderToSend.toMap(),
      );

      if (resp.statusCode != 200 && resp.statusCode != 201) {
        throw CreateOrderException();
      }

      final created =
          OrderDto.fromMap(resp.data['data'] as Map<String, dynamic>);
      return created;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on CartServiceException {
      rethrow;
    } catch (e) {
      throw CartServiceException(
          'Errore imprevisto durante la creazione ordine: $e');
    }
  }

  Future<String> uploadFileToDirectus(File file) async {
    final form = FormData.fromMap({
      'file': await _apiService.uploadFileToDirectus(file),
    });

    final resp = await _apiService.postMultipart('/files', form);
    if (resp.statusCode == 200 || resp.statusCode == 201) {
      return resp.data['data']['id'] as String;
    } else {
      throw Exception('Upload image failed: ${resp.statusCode}');
    }
  }
}
