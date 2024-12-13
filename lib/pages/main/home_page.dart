import 'package:flutter/material.dart';
import 'package:pocketpedia/widgets/material/homepage/categories.dart';
import 'package:pocketpedia/widgets/material/homepage/news_card.dart';
import 'package:pocketpedia/widgets/material/homepage/recents.dart';

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
                children: const [
                  CategoryButton(name: 'Congénitas'),
                  CategoryButton(name: 'Alérgicas'),
                  CategoryButton(name: 'Infecciosas'),
                  CategoryButton(name: 'Otras'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RecentsStack(
            ilness: 'Bronquiolitis',
            percentage: 40,
          ),
          SizedBox(
            height: 40,
          ),
          NewsCard(
              imageUrl:
                  "https://storage.googleapis.com/www-saludiario-com/wp-content/uploads/2021/10/d1b0801d-como-comunicar-las-malas-noticias-en-la-practica-medica.jpg",
              category: "Fibrosis Quística",
              title:
                  "San Juan de deu administra nuevo medicamento para no se que",
              source: "ScienceDirect",
              date: "Octubre 18 2024")
        ],
      ),
    );
  }
}
