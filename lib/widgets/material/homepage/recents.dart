import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pocketpedia/styles/color/app_colors.dart';
import "../../../utils/strings.dart";

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

    return Stack(children: [
      Container(
        height: 180,
        width: 250,
        color: Colors.transparent,
      ),
      Stack(
        children: [
          Container(
            height: 150,
            width: 220,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: stylesList[widget.ilness]?['PColor']),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    widget.ilness,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 80,
            right: 0,
            bottom: 0,
            child: Container(
                height: 100,
                width: 5,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: stylesList[widget.ilness]?['SColor'],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomRight: Radius.circular(15)))),
          ),
          Positioned(
              right: 12,
              bottom: 5,
              child: Image(
                image: AssetImage('assets/vectors/asthma_vector.png'),
                width: 100,
              )),
        ],
      ),
      Positioned(
          bottom: 2,
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
        bottom: 2,
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
      )
    ]);
  }
}

/* 
Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 220,
        height: 280,
        decoration: BoxDecoration(color: Colors.grey),
        child: GestureDetector(
          child: SizedBox(
            height: 230,
            width: 220,
            child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: stylesList[widget.ilness]?['PColor']),
                child: Stack(
                  fit: StackFit.passthrough,
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      height: 230,
                      width: 220,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            color: stylesList[widget.ilness]?['PColor']),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      right: 0,
                      bottom: 0,
                      child: Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: stylesList[widget.ilness]?['SColor'],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(200),
                                  bottomRight: Radius.circular(15)))),
                    ),
                    Positioned(
                        top: 18,
                        left: 15,
                        child: Text(
                          widget.ilness,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
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
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.0),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: stylesList[widget.ilness]?['SColor'],
                          ),
                        ),
                        Positioned(
                            right: 12,
                            bottom: 5,
                            child: Image(
                              image: AssetImage(
                                  'assets/vectors/asthma_vector.png'),
                              width: 100,
                            )),
                      ],
                    )
                  ],
                )),
          ),
        ),
      ),
    );
*/
