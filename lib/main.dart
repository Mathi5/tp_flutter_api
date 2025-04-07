import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/product_view_model.dart';
import 'screens/product_list_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductViewModel(),
      child: MaterialApp(
        title: 'Fake Store App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const ProductListScreen(),
      ),
    );
  }
}