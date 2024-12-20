import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pocketpedia/styles/color/app_colors.dart';

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
        Text('Biblioteca'),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: AppColors.teal),
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
                            color: AppColors.transparentTeal,
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
        )
      ],
    )));
  }
}
