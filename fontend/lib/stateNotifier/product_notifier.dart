import 'package:flutter/material.dart';
import '../repository/product_repository.dart';

class ProductNotifier extends ChangeNotifier {
  final ProductRepository _repository = ProductRepository();

  List<dynamic> _products = [];
  List<dynamic> get products => _products;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  Future<void> searchProducts(String query) async {
    _isLoading = true;
    notifyListeners();

    try {
      _products = await _repository.searchProducts(query);
      _error = null;
    } catch (e) {
      _products = [];
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
