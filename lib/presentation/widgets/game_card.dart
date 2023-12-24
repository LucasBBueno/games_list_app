import 'package:flutter/material.dart';
import 'package:games_list_app/data/models/game.dart';

class GameCard extends StatelessWidget {
  final Game game;
  const GameCard({super.key, required this.game });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(game.name),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}