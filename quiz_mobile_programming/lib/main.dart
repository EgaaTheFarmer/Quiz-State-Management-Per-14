import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_mobile_programming/providers/themeProviders.dart';
import 'package:quiz_mobile_programming/screens/settingScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      theme: themeProvider.getTheme(),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Screen Wadidaw', style: themeProvider.getTextStyle())),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sekarang di ${themeProvider.themeName} dan menggunakan font ${themeProvider.fontName}',
                style: themeProvider.getTextStyle(),
                textAlign: TextAlign.center, // Agar teks rapi di tengah
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SettingsScreen()),
                  );
                },
                child: Text('Mari ubah di Settings', style: themeProvider.getTextStyle()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
