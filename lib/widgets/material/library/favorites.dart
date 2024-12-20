import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pocketpedia/styles/color/app_colors.dart';

class FavoritesLibraryState extends StatefulWidget {
  final String ilness;
  const FavoritesLibraryState({super.key, required this.ilness});

  @override
  State<FavoritesLibraryState> createState() => _FavoritesLibraryStateState();
}

class _FavoritesLibraryStateState extends State<FavoritesLibraryState> {
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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: stylesList[widget.ilness]?['PColor']),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: stylesList[widget.ilness]?['SColor'],
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),

                Positioned(
                  left: 22.5,
                  top: 9,
                  child: Image.asset(
                    color: Colors.white,
                    'assets/vectors/biblioteca/human_11847175.png',
                    width: 35,
                    height: 35,
                  ),
                )

                //Image.asset(name)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Asma',
                    style: textTheme.bodyMedium,
                  ),
                  Text('Enfermedades alérgicas',
                      style: TextStyle(color: Colors.white, fontSize: 12))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Stack(children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                ),
                CircularPercentIndicator(
                  radius: 30,
                  backgroundWidth: 8,
                  backgroundColor: Colors.black,
                  lineWidth: 5.0,
                  percent: 0.4,
                  center: new Text(
                    "40%",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.white,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
