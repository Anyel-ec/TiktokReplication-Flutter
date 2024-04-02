import 'package:flutter/material.dart';
// importar configuracion de tema
import 'package:tiktok/config/theme.dart';
import 'package:tiktok/domain/repositories/video_posts_repository.dart';
import 'package:tiktok/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:tiktok/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:tiktok/presentation/screen/discover/discover_screen.dart';
import 'package:provider/provider.dart';
import 'package:tiktok/providers/discover_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final videoPostRepository = 
    VideoPostsRepositoryImpl(videosDatasource: LocalVideoDataSource()); // instanciar repositorio
     
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider(videosRepository: videoPostRepository)..loadNextPage()),
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
