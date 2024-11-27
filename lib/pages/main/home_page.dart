import 'package:flutter/material.dart';
import 'package:pocketpedia/styles/app_colors.dart';
import 'package:pocketpedia/widgets/material/homepage/categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Home page",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryButton(name: 'Congénitas'),
                  CategoryButton(name: 'Alérgicas'),
                  CategoryButton(name: 'Infecciosas'),
                  CategoryButton(name: 'Otras'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
