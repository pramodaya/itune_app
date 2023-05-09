import 'package:itune_app/model/song_model.dart';

class PlaylistModel {
  final String title;
  final List<SongModel> songs;
  final String imageUrl;

  PlaylistModel(
      {required this.title, required this.songs, required this.imageUrl});

  static List<PlaylistModel> playLists = [
    PlaylistModel(
        title: 'test',
        songs: SongModel.songs,
        imageUrl:
            'https://is5-ssl.mzstatic.com/image/thumb/Music126/v4/2e/02/1d/2e021d5b-9ebe-91a6-7cc4-98c502203a59/23UMGIM44883.rgb.jpg/170x170bb.png'),
    PlaylistModel(
        title: 'test',
        songs: SongModel.songs,
        imageUrl:
            'https://is5-ssl.mzstatic.com/image/thumb/Music126/v4/2e/02/1d/2e021d5b-9ebe-91a6-7cc4-98c502203a59/23UMGIM44883.rgb.jpg/170x170bb.png'),
    PlaylistModel(
        title: 'test',
        songs: SongModel.songs,
        imageUrl:
            'https://is5-ssl.mzstatic.com/image/thumb/Music126/v4/2e/02/1d/2e021d5b-9ebe-91a6-7cc4-98c502203a59/23UMGIM44883.rgb.jpg/170x170bb.png'),
  ];
}
