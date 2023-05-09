class SongModel {
  final String title;
  final String description;
  final String url;
  final String coverurl;

  SongModel({
    required this.title,
    required this.description,
    required this.url,
    required this.coverurl,
  });

  static List<SongModel> songs = [
    SongModel(
        title: 'Pop',
        description: 'Guardians of the',
        url:
            'https://music.apple.com/us/album/guardians-of-the-galaxy-vol-3-awesome-mix-vol-3/1685071199?uo=2',
        coverurl:
            'https://is5-ssl.mzstatic.com/image/thumb/Music126/v4/2e/02/1d/2e021d5b-9ebe-91a6-7cc4-98c502203a59/23UMGIM44883.rgb.jpg/170x170bb.png'),
    SongModel(
        title: 'Pop',
        description: 'Guardians of the',
        url:
            'https://music.apple.com/us/album/guardians-of-the-galaxy-vol-3-awesome-mix-vol-3/1685071199?uo=2',
        coverurl:
            'https://is5-ssl.mzstatic.com/image/thumb/Music126/v4/2e/02/1d/2e021d5b-9ebe-91a6-7cc4-98c502203a59/23UMGIM44883.rgb.jpg/170x170bb.png'),
    SongModel(
        title: 'Pop',
        description: 'Guardians of the',
        url:
            'https://music.apple.com/us/album/guardians-of-the-galaxy-vol-3-awesome-mix-vol-3/1685071199?uo=2',
        coverurl:
            'https://is5-ssl.mzstatic.com/image/thumb/Music126/v4/2e/02/1d/2e021d5b-9ebe-91a6-7cc4-98c502203a59/23UMGIM44883.rgb.jpg/170x170bb.png'),
  ];
}
