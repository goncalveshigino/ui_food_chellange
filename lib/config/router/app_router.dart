

import 'package:go_router/go_router.dart';

import '../../features/product/presentation/pages/pages.dart';


final appRouter = GoRouter(

 initialLocation: '/',
 
 routes: [
   
  GoRoute(
    path: '/', 
    builder: (context, state) => const ProductHome(),
  ), 

  GoRoute(
    path: '/product_category', 
    builder: (context, state) => const ProductsPage()
  ),

  GoRoute(
    path: '/product_details', 
    builder: (context, state) => const ProductDetailsPage()
  )

 ]
);