import 'package:flutter/material.dart';
import 'components/cal_buttons.dart';
import 'components/input_field_widget.dart';

class Calcall extends StatefulWidget {
  @override
  State<Calcall> createState() => _CalcallState();
}

class _CalcallState extends State<Calcall> {
  @override
  var inputController = TextEditingController();
  String inputValue = '';
  List<String> calVal = [];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF262626).withOpacity(.5),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'Calculator',
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 30,
                fontWeight: FontWeight.w800,
                shadows: [
                  BoxShadow(
                      color: Colors.orange,
                      blurRadius: 10,
                      offset: Offset(1, 1))
                ]),
          ),
          Expanded(
            child: InputFieldWidget(inputController, calVal),
            flex: 2,
          ),
          Expanded(
            child: CalculatorButtons(
              buttonPress: (val) {
                switch (val) {
                  case '0':
                    numericButtonPress('0');
                    break;
                  case '1':
                    numericButtonPress('1');
                    break;
                  case '2':
                    numericButtonPress('2');
                    break;
                  case '3':
                    numericButtonPress('3');
                    break;
                  case '4':
                    numericButtonPress('4');
                    break;
                  case '5':
                    numericButtonPress('5');
                    break;
                  case '6':
                    numericButtonPress('6');
                    break;
                  case '7':
                    numericButtonPress('7');
                    break;
                  case '8':
                    numericButtonPress('8');
                    break;
                  case '9':
                    numericButtonPress('9');
                    break;
                  case 'AC':
                    inputController.text = '';
                    calVal.clear();
                    setState(() {});
                    break;
                  case'+/-':
                    inputController.text='';
                    calVal.clear();
                    setState(() {
                    });
                    break;
                  case'%':
                    calVal.add(inputValue);
                    calVal.add('%');
                    inputController.text='';
                    inputValue='';
                    setState(() {
                    });
                    break;
                  case'+/-':
                    calVal.add(inputValue);
                    calVal.add('+/-');
                    inputController.text='';
                    inputValue='';
                    setState(() {

                    });
                    break;
                    case '*':
                    calVal.add(inputValue);
                    calVal.add('*');
                    inputController.text = '';
                    inputValue = '';
                    setState(() {});
                    break;
                  case '+':
                    calVal.add(inputValue);
                    calVal.add('+');
                    inputController.text = '';
                    inputValue = '';
                    setState(() {});
                    break;
                  case '=':
                    calVal.add(inputValue);
                    calVal.add('=');
                    inputValue = '';
                    resultCal();
                    break;
                  case '-':
                    calVal.add(inputValue);
                    calVal.add('-');
                    inputController.text = '';
                    inputValue = '';
                    setState(() {});
                    break;
                  case '/':
                    calVal.add(inputValue);
                    calVal.add('/');
                    inputValue = '';
                    resultCal();
                    break;
                }
              },
            ),
            flex: 4,
          ),
        ],
      ),
    );
  }

  void numericButtonPress(String val) {
    inputValue += val;
    inputController.text = inputValue;
  }

  void resultCal() {
    List<int> valCal = [];
    for (int i = 0; i < calVal.length; i++) {
      switch (calVal[i]) {
        case '+':
          break;
        case '-':
          break;
        case '*':
          break;
        case '/':
          break;
        case'%':
          break;
        case'+/-':
          break;
        case '=':
          //adsValue(valAds);
         // perValue(valPer);
          //divValue(valDiv);
          // mulValue(valMul);
          //subValue(valSub);
          addValue(valCal);
          break;
        default:
          //valAds.add(int.parse(calVal[i]));
         // valPer.add(int.parse(calVal[i]));
          //valDiv.add(int.parse(calVal[i]));
          //valMul.add(int.parse(calVal[i]));
           //valSub.add(int.parse(calVal[i]));
           valCal.add(int.parse(calVal[i]));
          break;
      }
    }
  }

  void addValue(List<int> valCal) {
    int result = 0;
    for (int i = 0; i < valCal.length; i++) {
      result += valCal[i];
    }
    inputController.text = result.toString();
    calVal.add(result.toString());
    setState(() {});
  }

  void subValue(List<int> valSub) {
    int result = 0;
    for (int i = 0; i < valSub.length; i++) {
      result = valSub[0];
      result -= valSub[i];
    }
    inputController.text = result.toString();
    calVal.add(result.toString());
    setState(() {});
  }

  void mulValue(List<int> valMul) {
    int result = 0;
    for (int i = 0; i < valMul.length; i++) {
      result = valMul[0];
      result *= valMul[i];
    }
    inputController.text = result.toString();
    calVal.add(result.toString());
    setState(() {});
  }

  void divValue(List<int> valDiv) {
    int result = 0;
    for (int i = 0; i < valDiv.length; i++) {
      result = valDiv[0];
      result ~/= valDiv[i];
    }
    inputController.text = result.toString();
    calVal.add(result.toString());
    setState(() {});
  }

  void perValue(List<int> valPer) {
    int result = 0;
    for (int i = 0; i < valPer.length; i++) {
      result = valPer[0];
      result %= valPer[i];
    }
    inputController.text = result.toString();
    calVal.add(result.toString());
    setState(() {});
  }

  void adsValue(List<int> valAds) {
    int result = 0;
    for (int i = 0; i < valAds.length; i++) {
      result = valAds[0];
      result = valAds[i];
    }
    inputController.text = result.toString();
    calVal.add(result.toString());
    setState(() {});
  }
}
