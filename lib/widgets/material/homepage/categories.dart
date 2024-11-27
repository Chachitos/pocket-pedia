import 'package:flutter/material.dart';
import 'package:pocketpedia/styles/app_colors.dart';

class CategoryButton extends StatefulWidget {
  const CategoryButton({super.key});

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        highlightElevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: AppColors.transparentTeal,
        minWidth: 50,
        height: 120,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/vectors/secciones/biology.png',
              height: 65,
            ),
            Text(
              'Congénitas',
              style: TextStyle(color: Colors.black),
            )
          ],
        ));
  }
}
