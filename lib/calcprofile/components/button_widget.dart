import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  String value;
  Color color;
  Function onButtonPress;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState(value, color, onButtonPress);

  ButtonWidget({required this.value, required this.color, required this.onButtonPress,});
}
class _ButtonWidgetState extends State<ButtonWidget> {_ButtonWidgetState(this.value, this.color, this.onButtonPress,);

String value;
  Color color;
  Function onButtonPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onButtonPress(value);
        setState(() {
          print(value);
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.orange.withOpacity(.5), blurRadius: 7),
            ]),
        child: Text(
          value,
          style: TextStyle(
            color: color,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
