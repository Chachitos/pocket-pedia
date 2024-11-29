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
          SizedBox(
            height: 20,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.amber,
                minWidth: 220,
                height: 150,
              ),
              Positioned(
                  top: 18,
                  left: 15,
                  child: Text(
                    'Asma',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )),
              Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.red,
                  borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.elliptical(100, 20),
                      topStart: Radius.elliptical(200, 200),
                      bottomStart: Radius.elliptical(200, 0)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
