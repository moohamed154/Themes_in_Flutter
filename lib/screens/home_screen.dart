import 'package:flutter/material.dart';
import 'package:themes/app/cubit/app_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Themes In Flutter'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                AppCubit.get(context).selectTheme(ThemeModeState.light);
              },
              child: Text('Light Mode'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AppCubit.get(context).selectTheme(ThemeModeState.dark);
              },
              child: Text('Dark Mode'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AppCubit.get(context).selectTheme(ThemeModeState.system);
              },
              child: Text('System Default'),
            ),
          ],
        ),
      ),
    );
  }
}
