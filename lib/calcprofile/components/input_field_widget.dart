import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  TextEditingController inputController;
  List<String> calVal;
  InputFieldWidget(this.inputController, this.calVal);
  @override
  Widget build(BuildContext context) {

    return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) =>Text(calVal[i].toString()),
              itemCount:calVal.length,
            )),
            TextFormField(
              enabled: false,
              controller: inputController,
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            )
          ],
        ));
  }
}
