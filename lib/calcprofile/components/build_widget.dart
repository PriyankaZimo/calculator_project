import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildWidget extends StatelessWidget {
  String shape;
  Color color;
  Function onButtonPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onButtonPress(shape);
      },
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 160,
        padding: EdgeInsets.only(right: 80),
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(color: Colors.orange.withOpacity(.5), blurRadius: 7),
          ],
        ),
        child: Text(
          shape,
          style: TextStyle(color: color, fontSize: 20),
        ),
      ),
    );
  }

  BuildWidget(
      {required this.shape, required this.color, required this.onButtonPress,});
}
