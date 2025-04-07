import 'package:flutter/foundation.dart';
import '../models/product.dart';
import '../services/api_service.dart';

class ProductViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<Product> _allProducts = [];
  List<Product> _filteredProducts = [];
  bool _loading = false;
  String? _selectedCategory;
  List<String> _categories = [];

  // Getters
  List<Product> get products => _filteredProducts;
  bool get loading => _loading;
  String? get selectedCategory => _selectedCategory;
  List<String> get categories => _categories;

  Future<void> fetchProducts() async {
    _loading = true;
    notifyListeners();

    try {
      _allProducts = await _apiService.fetchProducts();

      _categories = _allProducts
          .map((product) => product.category)
          .toSet()
          .toList();

      _filteredProducts = List.from(_allProducts);
    } catch (e) {
      print('Error fetching products: $e');
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  void filterByCategory(String? category) {
    _selectedCategory = category;

    if (category == null) {
      _filteredProducts = List.from(_allProducts);
    } else {
      _filteredProducts = _allProducts
          .where((product) => product.category == category)
          .toList();
    }

    notifyListeners();
  }
}