import 'package:flutter/material.dart';
import 'package:pocketpedia/styles/color/app_colors.dart';

class CategoryButton extends StatefulWidget {
  final String name;

  const CategoryButton({super.key, required this.name});

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

Map<String, Map<String, dynamic>> stylesList = {
  'Congénitas': {
    "Path": 'assets/vectors/secciones/biology.png',
    "Color": AppColors.transparentTeal,
  },
  'Alérgicas': {
    "Path": 'assets/vectors/secciones/pharynx.png',
    "Color": AppColors.transparentBlue
  },
  'Infecciosas': {
    "Path": 'assets/vectors/secciones/pills.png',
    "Color": AppColors.transparentRed
  },
  'Otras': {
    "Path": 'assets/vectors/secciones/torso.png',
    "Color": AppColors.transparentYellow
  }
};

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: MaterialButton(
          highlightElevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: stylesList[widget.name]?["Color"],
          minWidth: 110,
          height: 120,
          onPressed: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                stylesList[widget.name]?["Path"],
                height: 65,
                width: 80,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.name,
                style: TextStyle(color: Colors.black),
              )
            ],
          )),
    );
  }
}
