import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pocketpedia/styles/app_colors.dart';
import "capitalize.dart";

class RecentsStack extends StatefulWidget {
  final String ilness;
  final int percentage;
  const RecentsStack(
      {super.key, required this.ilness, required this.percentage});

  @override
  State<RecentsStack> createState() => _RecentsStackState();
}

Map<String, Map<String, dynamic>> stylesList = {
  'Asma': {
    "Path": 'assets/vectors/asthma_vector.png',
    "PColor": AppColors.red,
    "SColor": AppColors.transparentRed,
  },
  'Bronquiolitis': {
    "Path": 'assets/vectors/circulatorysys_vector.png',
    "PColor": AppColors.oceanBlue,
    "SColor": AppColors.transparentBlue,
  },
  'Influenza': {
    "Path": 'assets/vectors/blue_doctors_vector.png',
    "PColor": AppColors.yellow,
    "SColor": AppColors.transparentYellow,
  },
  'Neumonía': {
    "Path": 'assets/vectors/infection_vector.png',
    "PColor": AppColors.teal,
    "SColor": AppColors.transparentTeal,
  }
};

String PColor(String AppColor) {
  AppColor = AppColor.capitalize();

  String pcolor = "transparent" + AppColor;
  print(pcolor);
  return pcolor;
}

class _RecentsStackState extends State<RecentsStack> {
  @override
  Widget build(BuildContext context) {
    //String primary_color = PColor(stylesList[widget.ilness]?['PColor']);

    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      fit: StackFit.passthrough,
      clipBehavior: Clip.none,
      children: [
        MaterialButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: stylesList[widget.ilness]?['PColor'],
          minWidth: 220,
          height: 150,
        ),
        Positioned(
            top: 18,
            left: 15,
            child: Text(
              widget.ilness,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
        Container(
          height: 80,
          width: 120,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: stylesList[widget.ilness]?['SColor'],
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
                color: stylesList[widget.ilness]?['PColor'],
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
              "${widget.percentage.toString()}%",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: stylesList[widget.ilness]?['SColor'],
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
    );
  }
}
