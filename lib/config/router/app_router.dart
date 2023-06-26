

import 'package:go_router/go_router.dart';

import '../../features/product/presentation/pages/pages.dart';


final appRouter = GoRouter(

 initialLocation: '/',
 
 routes: [
   
  GoRoute(
    path: '/', 
    name: ProductsPage.name, 
    builder: (context, state) => const ProductsPage(),
  ), 

  GoRoute(
    path: '/product_details', 
    name: ProductDetailsPage.name, 
    builder: (context, state) => const ProductDetailsPage()
  )

 ]
);