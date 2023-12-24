import 'package:flutter/material.dart';
import 'package:games_list_app/data/models/game.dart';

class GameCard extends StatelessWidget {
  final Game game;
  const GameCard({super.key, required this.game });

  void _navigateToDetails(BuildContext context) {
    Navigator.of(context).pushNamed('/details');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _navigateToDetails(context);
      },
        child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(
            image: NetworkImage(game.image),
            fit: BoxFit.cover 
          )
        ),
      ),
    );
  }
}