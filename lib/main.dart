import 'package:flutter/material.dart';
import 'screens/editor_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const OverlayEditorApp());
}

class OverlayEditorApp extends StatelessWidget {
  const OverlayEditorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const EditorScreen(),
    );
  }
}
