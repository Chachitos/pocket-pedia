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
  Map<String, Map<String, dynamic>> stylesList = {
    'Asma': {
      "Path": 'assets/vectors/biblioteca/human_11847175.png',
      "PColor": AppColors.red,
      "SColor": AppColors.transparentRed,
    },
    'Fibrosis Quística': {
      "Path": 'assets/vectors/biblioteca/human_11061092.png',
      "PColor": AppColors.oceanBlue,
      "SColor": AppColors.transparentBlue,
    },
    'Influenza': {
      "Path": 'assets/vectors/biblioteca/stroke_11916674.png',
      "PColor": AppColors.yellow,
      "SColor": AppColors.transparentYellow,
    },
    'Tos crónica': {
      "Path": ' assets/vectors/biblioteca/tissue_11916635.png',
      "PColor": AppColors.teal,
      "SColor": AppColors.transparentTeal,
    }
  };
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
        child: Center(
            child: Column(
      children: [Text('Biblioteca'), FavoritesLibraryState()],
    )));
  }
}
