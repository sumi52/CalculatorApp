import 'package:flutter/material.dart';
import 'package:flutter_calculator/text_styles.dart';


class HomePage extends StatefulWidget {
  final String msg;
  const HomePage({super.key, required this.msg});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  num firstNum = 0;
  num secondNum = 0;
  String operator = '';
  String showResult = '';
  //String displayString = '';
  num result =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,

                        children: [
                          Expanded(
                              flex: 2,
                              child: Text(
                                '$result',
                                style: TextStyle(
                                    fontSize: 80, color: Colors.orangeAccent),
                              ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Text(
                                '$showResult',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                            onPressed: (){
                              operator = '%';
                              setState(() {
                                showResult = showResult + '%';
                              });
                            },
                            child: Text('%'),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                            onPressed: (){
                              setState(() {
                                if(showResult.length > 0){

                                  showResult = showResult.substring(0, showResult.length -1);
                                }
                              });
                            },
                            child: Text('Del'),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                            onPressed: (){
                              firstNum = 0;
                              secondNum = 0;
                              operator = '';
                              setState(() {
                                result = 0;
                                showResult ='';
                              });
                            },
                            child: Text('C'),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: (){
                              operator ='+';
                              setState(() {
                                showResult = showResult + '+';
                              });
                            },
                            child: Text(
                              '+',
                              style: txtBlack, 
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700,
                            ),
                            onPressed: (){
                              numberCalculation(7);
                            },
                            child: Text('7'),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700,
                            ),
                            onPressed: (){
                            numberCalculation(8);
                            },
                            child: Text('8'),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700,
                            ),
                            onPressed: (){
                             numberCalculation(9);
                            },
                            child: Text('9'),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: (){
                              operator = '-';
                              setState(() {
                                showResult = showResult + '-';
                              });
                            },
                            child: Text(
                              '-',
                              style: txtBlack,
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700,
                            ),
                            onPressed: (){
                              numberCalculation(4);
                            },
                            child: Text('4'),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700,
                            ),
                            onPressed: (){
                              numberCalculation(5);
                            },
                            child: Text('5'),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700,
                            ),
                            onPressed: (){
                              numberCalculation(6);
                            },
                            child: Text('6'),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: (){
                              operator = '*';
                              setState(() {
                                showResult = showResult + '*';
                              });
                            },
                           child: Text(
                             '*',
                             style: txtBlack,  
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700,
                            ),
                            onPressed: (){
                             numberCalculation(1);
                            },
                            child: Text('1'),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700,
                            ),
                            onPressed: (){
                              numberCalculation(2);
                            },
                            child: Text('2'),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700,
                            ),
                            onPressed: (){
                              numberCalculation(3);
                            },
                            child: Text('3'),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {
                              operator = '/';
                              setState(() {
                                showResult = showResult + '/';
                              });
                            },
                            child: Text(
                              '/',
                              style: txtBlack, 
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey.shade700,
                          ),
                            onPressed: (){
                              numberCalculation(0);
                            },
                            child: Text('0'),
                        ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700,
                            ),
                            onPressed: (){
                              operator = '.';
                              setState(() {
                                showResult = showResult + '.';
                              });
                            },
                            child: Text('.'),
                        ),
                        ),
                        Expanded(
                          flex: 2,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed:
                              calculation,
                              child: Text(
                                '=',
                                style: txtBlack, 
                              ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }

  calculation(){
    setState(() {
      //displayString += s; 

             if (operator == '+') {
               result = (firstNum + secondNum) as double;
             }
             if (operator == '-') {
               result = (firstNum.toDouble() - secondNum.toDouble())  ;
             }
             if (operator == '*') {
               result = (firstNum.toDouble() *  secondNum.toDouble()) ;
             }
             if (operator == '/') {
               result = (firstNum.toDouble() / secondNum.toDouble()) ;
             }
    });
  }
  numberCalculation (double? c) {

    if (operator == '') {
      firstNum = c!;
    }else {
      secondNum = c!;
    }
    setState(() {
          showResult = showResult + ' ' + '$c';
    });
  }

}

