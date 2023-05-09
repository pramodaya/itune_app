import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../model/song_model.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    super.key,
    required this.song,
  });

  final SongModel song;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/song', arguments: song);
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: NetworkImage(song.coverurl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.37,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white.withOpacity(0.8),
            ),
            child: Column(
              children: [
                Text(
                  song.title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
                ),
                Text(
                  song.description,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
