import 'package:flutter/material.dart';
// importar configuracion de tema
import 'package:tiktok/config/theme.dart';
import 'package:tiktok/presentation/screen/discover/discover_screen.dart';
import 'package:provider/provider.dart';
import 'package:tiktok/providers/discover_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage()),
          ],
      child: MaterialApp(
        title: 'TikTok Replication',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
