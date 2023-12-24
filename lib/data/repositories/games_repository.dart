import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:games_list_app/data/models/game.dart';
import 'package:http/http.dart' as http;

class GamesRepository extends ChangeNotifier {
  final List<Game> _games = [];

   List<Game> get games => _games;

  GamesRepository() {
    loadGames();
  }

  Future<void> loadGames() async {
    try {
      var response = await http.get(Uri.parse('https://65882ab090fa4d3dabf989ec.mockapi.io/api/v1/games'));
      if(response.statusCode != 200) {
        throw Exception('Fail to load games');
      }
      var decodedData = jsonDecode(response.body);
      for(var item in decodedData) {
        var game = Game.fromJson(item);
        _games.add(game);
      }
      notifyListeners(); 
    } on Exception catch(e) {
      print(e);
    }
  }
}