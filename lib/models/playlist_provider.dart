import 'package:flutter/material.dart';
import 'package:vibes/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  // playlist of songs
  final List<Song> _playlist = [
    // song 1
    Song(
      songName: 'Dream',
      artistName: 'Wizkid',
      albumArtImagePath: 'assets/images/Album_art 1.jpg',
      audioPath: 'assets/audio/Dream_It_Possible.mp3',
    ),

    // song 2
    Song(
      songName: 'Coming',
      artistName: 'Davido',
      albumArtImagePath: 'assets/images/Album_art 2.jpg',
      audioPath: 'assets/audio/Dream_It_Possible.mp3',
    ),

    // song 3
    Song(
      songName: 'Home',
      artistName: 'Burna Boy',
      albumArtImagePath: 'assets/images/Album_art 3.jpg',
      audioPath: 'assets/audio/Dream_It_Possible.mp3',
    ),
  ];

  // current song playing index
  int? _currentSongIndex;

  /*

  G E T T E R S

  */
  // get a way to return the playlist and also the current song index
  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  /*

  S E T T E R S

  */

  set currentSongIndex(int? newIndex) {
    // update current song index
    _currentSongIndex = newIndex;

    // update UI
    notifyListeners();
  }
}
