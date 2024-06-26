import 'package:flutter/material.dart';
import 'package:mensajes_app/config/theme/app_theme.dart';
import 'package:mensajes_app/presentacion/providers/chat_provider.dart';
import 'package:mensajes_app/presentacion/screens/chat/chat_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: MaterialApp(
        title: 'Mensajes App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 4).theme(),
        home: const ChatScreen()
      ),
    );
  }
}