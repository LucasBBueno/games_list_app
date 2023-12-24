import 'package:flutter/material.dart';
import 'package:games_list_app/data/models/game.dart';

class GamesRepository extends ChangeNotifier {
  final List<Game> _games = [];

  Future<void> loadGames() async {
    //Buscar os jogos api
    
  }
}