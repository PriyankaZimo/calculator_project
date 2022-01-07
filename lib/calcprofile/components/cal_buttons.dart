import 'package:calculatorproject/calcprofile/components/build_widget.dart';
import 'package:calculatorproject/calcprofile/components/button_widget.dart';
import 'package:flutter/material.dart';

class CalculatorButtons extends StatelessWidget {
  Function buttonPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(
              value: 'AC',
              color: Colors.grey,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
            ButtonWidget(
              value: '+/-',
              color: Colors.grey,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
            ButtonWidget(
              value: '%',
              color: Colors.grey,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
            ButtonWidget(
              value: '/',
              color: Colors.orange,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(
              value: '7',
              color: Colors.grey,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
            ButtonWidget(
              value: '8',
              color: Colors.grey,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
            ButtonWidget(
              value: '9',
              color: Colors.grey,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
            ButtonWidget(
              value: '*',
              color: Colors.orange,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(
              value: '4',
              color: Colors.grey,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
            ButtonWidget(
              value: '5',
              color: Colors.grey,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
            ButtonWidget(
              value: '6',
              color: Colors.grey,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
            ButtonWidget(
              value: '-',
              color: Colors.orange,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(

              value: '1',
              color: Colors.grey,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
            ButtonWidget(
              value: '2',
              color: Colors.grey,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
            ButtonWidget(
              value: '3',
              color: Colors.grey,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
            ButtonWidget(
              value: '+',
              color: Colors.orange,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BuildWidget(
              shape: '0',
              color: Colors.white,
              onButtonPress: (val) {
                buttonPress(val);
              },

            ),

            ButtonWidget(
              value: '.',
              color: Colors.grey,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
            ButtonWidget(
              value: '=',
              color: Colors.orange,
              onButtonPress: (val) {
                buttonPress(val);
              },
            ),
          ],
        ),
      ],
    );
  }

  CalculatorButtons({required this.buttonPress});
}

