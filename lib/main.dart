import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_elevate/products/view/pages/products_page.dart';
import 'package:task_elevate/products/view_model/cubit/products_cubit.dart';
import 'package:task_elevate/shared/app_bloc_observer.dart';
import 'package:task_elevate/shared/di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await configureDependencies();
  runApp(BlocProvider(
    create: (context) => getIt.get<ProductsCubit>(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const ProductsPage(),
      },
    );
  }
}
