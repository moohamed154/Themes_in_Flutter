import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes/app/cubit/app_cubit.dart';
import 'package:themes/screens/home_screen.dart';
import 'package:themes/cache/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize CacheHelper before running the app
  await CacheHelper().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.amber,
                titleTextStyle: TextStyle(color: Colors.black),
                iconTheme: IconThemeData(color: Colors.black),
              ),
            ),
            darkTheme: ThemeData(
              scaffoldBackgroundColor: Colors.black,
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.grey[900],
                titleTextStyle: TextStyle(color: Colors.white),
                iconTheme: IconThemeData(color: Colors.white),
              ),
            ),
            themeMode: AppCubit.get(context).getTheme(),
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
