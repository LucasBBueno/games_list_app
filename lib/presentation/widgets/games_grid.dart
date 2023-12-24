import 'package:flutter/material.dart';
import 'package:games_list_app/data/models/game.dart';
import 'package:games_list_app/presentation/widgets/game_card.dart';

class GamesGrid extends StatelessWidget {
  final List<Game> games;
  const GamesGrid({ super.key, required this.games });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: GridView.count(mainAxisSpacing: 12, crossAxisSpacing: 12,  crossAxisCount: 2, children: games.map((game) => GameCard(game: game)).toList(),),
      ),
    );
  }
}