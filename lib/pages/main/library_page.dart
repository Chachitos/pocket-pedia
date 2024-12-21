import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pocketpedia/styles/color/app_colors.dart';
import 'package:pocketpedia/widgets/material/library/favorites.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
        child: Center(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Text(
            'Biblioteca',
            style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        FavoritesLibraryState(
          ilness: 'Asma',
        )
      ],
    )));
  }
}
