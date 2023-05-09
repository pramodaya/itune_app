import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itune_app/view/screens/home_screen.dart';
import 'package:itune_app/view/screens/playlist_screen.dart';
import 'package:itune_app/view/screens/song_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Itune App',
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: "/", page: () => const HomeScreen()),
        GetPage(name: "/song", page: () => const SongScreen()),
        GetPage(name: "/playlist", page: () => const PlaylistScreen())
      ],
    );
  }
}
