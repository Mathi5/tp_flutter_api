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
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF6200EE),
            brightness: Brightness.light,
            secondary: const Color(0xFF49DE3F),
          ),
          cardTheme: CardTheme(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
          chipTheme: ChipThemeData(
            selectedColor: const Color(0xFF6200EE).withOpacity(0.2),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF6200EE),
            foregroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
          ),
          useMaterial3: true,
        ),
        home: const ProductListScreen(),
      ),
    );
  }
}