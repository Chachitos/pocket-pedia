import 'package:flutter/material.dart';
import 'package:pocketpedia/widgets/material/homepage/categories.dart';
import 'package:pocketpedia/widgets/material/homepage/news_card.dart';
import 'package:pocketpedia/widgets/material/homepage/recents.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      '¿Qué repasaremos hoy?',
                      style: textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('RECIENTES',
                      style: textTheme.labelSmall
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  RecentsStack(
                    ilness:
                        'Bronquiolitis', // Replace with dynamic values if needed
                    percentage: 40, // Replace with dynamic values if needed
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('CATEGORÍAS',
                          style: textTheme.labelSmall
                              ?.copyWith(fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text('Ver todas',
                              style: textTheme.labelSmall
                                  ?.copyWith(fontWeight: FontWeight.bold)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.grey,
                                size: 15,
                              ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
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
                  SizedBox(
                    height: 10,
                  ),
                  Text('ACTUALIZACIONES',
                      style: textTheme.labelSmall
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        NewsCard(
                            imageUrl:
                                "https://storage.googleapis.com/www-saludiario-com/wp-content/uploads/2021/10/d1b0801d-como-comunicar-las-malas-noticias-en-la-practica-medica.jpg",
                            category: "Fibrosis Quística",
                            title:
                                "San Juan de deu administra nuevo medicamento para no se que",
                            source: "ScienceDirect",
                            date: "Octubre 18 2024"),
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
