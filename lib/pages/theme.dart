import 'package:flutter/material.dart';
import 'package:flutter_paketler/service/theme_service.dart';


class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          ThemeService().changeThemeMode();
        }, child: const Text('Change Theme'),

        ),
      ),
    );
  }
}
