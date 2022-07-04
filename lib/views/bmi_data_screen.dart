import 'package:bmi/constants/constant.dart';
import 'package:bmi/views/bmi_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({Key? key}) : super(key: key);

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

int height = 100;

class _BmiDataScreenState extends State<BmiDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a0e21),
      appBar: AppBar(
        title: Text("Bmi Calculator"),
      ),
      body: Column(children: [
        Expanded(
            child: Row(
          children: const [
            Expanded(
                child: BmiCard(
              child: GendericonText(
                icon: Icons.male,
                title: 'Male',
              ),
            )),
            Expanded(
              child: BmiCard(
                child: GendericonText(
                  icon: Icons.female,
                  title: 'female',
                ),
              ),
            ),
          ],
        )),
        Expanded(
            child: Container(
          child: BmiCard(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("HEIGHT",
                  style: lableTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "$height",
                    style: numberTextStyle,
                  ),
                  Text(
                    "cm",
                    style: lableTextStyle,
                  ),
                ],
              ),
              Slider(
                value: height.toDouble(),
                min: 80,
                max: 200,
                thumbColor: Colors.red,
                activeColor: Colors.white,
                onChanged: (value) {
                  height = value.toInt();
                  setState(() {});
                },
              )
            ],
          )),
        )),
        Expanded(
          child: Container(
            child: Row(
              children: [
                Expanded(
                    child: BmiCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: lableTextStyle,
                      ),
                      Text(
                        "60",
                        style: numberTextStyle,
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 0,
                            child: Icon(Icons.add, color: Colors.white),
                            shape: CircleBorder(),
                            fillColor: Color(0xff212747),
                            constraints: BoxConstraints.tightFor(
                              width: 56,
                              height: 56,
                            ),
                          ),
                          SizedBox(width: 10),
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 0,
                            child: Icon(Icons.remove, color: Colors.white),
                            shape: CircleBorder(),
                            fillColor: Color(0xff212747),
                            constraints: BoxConstraints.tightFor(
                              width: 56,
                              height: 56,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: BmiCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: lableTextStyle,
                      ),
                      Text(
                        "20",
                        style: numberTextStyle,
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 0,
                            child: Icon(Icons.add, color: Colors.white),
                            shape: CircleBorder(),
                            fillColor: Color(0xff212747),
                            constraints: BoxConstraints.tightFor(
                              width: 56,
                              height: 56,
                            ),
                          ),
                          SizedBox(width: 10),
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 0,
                            child: Icon(Icons.remove, color: Colors.white),
                            shape: CircleBorder(),
                            fillColor: Color(0xff212747),
                            constraints: BoxConstraints.tightFor(
                              width: 56,
                              height: 56,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: ((context) {
                return BmiResultScreen();
              })),
            );
          },
          child: Container(
            height: 60,
            color: Colors.blue,
            child: Center(child: Text("Hitung BMI")),
          ),
        )
      ]),
    );
  }
}

class BmiCard extends StatelessWidget {
  const BmiCard({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xff272a4e),
          borderRadius: BorderRadius.circular(15),
        ),
        // ignore: prefer_const_constructors
        margin: EdgeInsets.all(15),
        child: child);
  }
}

class GendericonText extends StatelessWidget {
  const GendericonText({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(height: 15),
        Text(
          title,
          style: lableTextStyle,
        ),
      ],
    );
  }
}
