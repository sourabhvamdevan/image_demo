import 'package:flutter/material.dart';
import 'screens/editor_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const OverlayEditorApp());
}

class OverlayEditorApp extends StatefulWidget {
  const OverlayEditorApp({super.key});

  @override
  State<OverlayEditorApp> createState() => _OverlayEditorAppState();
}

class _OverlayEditorAppState extends State<OverlayEditorApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _themeMode,
      home: EditorScreen(onToggleTheme: _toggleTheme),
    );
  }
}
