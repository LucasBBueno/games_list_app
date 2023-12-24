import 'package:flutter/material.dart';
import 'package:games_list_app/data/models/game.dart';
import 'package:games_list_app/presentation/widgets/game_card.dart';

class GamesGrid extends StatelessWidget {
  final List<Game> games;
  const GamesGrid({ super.key, required this.games });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        child: Center(
          child: GridView.count(mainAxisSpacing: 12, crossAxisSpacing: 12,  crossAxisCount: 2, children: games.map((game) => GameCard(game: game)).toList(),),
        ),
      ),
      )
    );
  }
}