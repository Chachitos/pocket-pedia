import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
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
            fit: StackFit.passthrough,
            clipBehavior: Clip.none,
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
                height: 80,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.red,
                  borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.elliptical(100, 20),
                      topStart: Radius.elliptical(200, 200),
                      bottomStart: Radius.elliptical(200, 0),
                      bottomEnd: Radius.circular(15)),
                ),
              ),
              Positioned(
                  bottom: -30,
                  left: 15,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber,
                    ),
                  )),
              Positioned(
                left: 15,
                bottom: -30,
                child: CircularPercentIndicator(
                  radius: 40,
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
                  progressColor: Colors.red,
                ),
              ),
              Positioned(
                  right: 12,
                  bottom: 5,
                  child: Image(
                    image: AssetImage('assets/vectors/asthma_vector.png'),
                    width: 100,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
