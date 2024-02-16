import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/src/bloc/palindrome_bloc.dart';
import 'package:flutter_demo/src/views/home_screen.dart';
import 'package:go_router/go_router.dart';

final routerConfig = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: HomeScreen.path,
      name: HomeScreen.name,
      builder: (context, state) => BlocProvider(
        create: (context) => PalindromeBloc(),
        child: const HomeScreen(),
      ),
    ),
  ],
);
