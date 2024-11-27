import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pocketpedia/styles/app_colors.dart';

class CategoryButton extends StatefulWidget {
  final String name;

  const CategoryButton({super.key, required this.name});

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

Map<String, Map<String, dynamic>> stylesList = {
  'Congénitas': {
    "Path": 'Path',
    "Color": Colors.black,
  },
  'Alérgicas': {"Path": 'path', "Color": Colors.amberAccent},
  'Infecciosas': {"Path": 'path', "Color": Colors.amberAccent},
  'Otras': {"Path": 'path', "Color": Colors.amberAccent}
};

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        highlightElevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: stylesList[widget.name]?["Color"],
        minWidth: 50,
        height: 120,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              stylesList[widget.name]?["Path"],
              height: 65,
            ),
            Text(
              widget.name,
              style: TextStyle(color: Colors.black),
            )
          ],
        ));
  }
}
