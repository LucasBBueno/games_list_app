import 'package:flutter/material.dart';
import 'package:games_list_app/data/repositories/games_repository.dart';
import 'package:games_list_app/presentation/widgets/games_grid.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Top Games",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Consumer<GamesRepository>(
        builder: (context, repository, child) => repository.games.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : GamesGrid(games: repository.games),
      ),
    );
  }
}
