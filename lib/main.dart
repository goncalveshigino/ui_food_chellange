
import 'package:flutter/material.dart';
import 'package:ui_food/config/router/app_router.dart';

import 'features/product/presentation/pages/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
     // home: const ProductsPage(),
    );
  }
}

