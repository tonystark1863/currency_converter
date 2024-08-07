import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
 
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override 
  void initState(){
    super.initState();
    print('rebuilt');
  }

  void convert(){
    result = double.parse(textEditingController.text)*83.42;
    setState(() {}); //triggers rebuilt
  }

@override
  Widget build(BuildContext context){

    return   CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor:  Color.fromARGB(159, 37, 0, 54),
        middle: Text(
          'Currency Converter',
          style: TextStyle(color: CupertinoColors.systemGrey3),
        ),
       ),
      backgroundColor: const  Color.fromARGB(159, 37, 0, 54),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children :[
            
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
            
                child:  Text(
                  "INR ${result==0 ?"0":result.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 45,
                    color: Color.fromARGB(255, 243, 240, 240)
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CupertinoTextField(
                controller: textEditingController,
                onSubmitted: (value){ print(value);},
                style: const  TextStyle(
                  color: Color.fromARGB(255, 155, 152, 152),
                ),
                decoration : BoxDecoration(
                  color: const Color.fromARGB(182, 29, 25, 25),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  
                ),
                placeholder:  "Please Enter the amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar_circle),
                keyboardType:const  TextInputType.numberWithOptions(
                  decimal: true,
                )
              ),

              const SizedBox(height: 30),

              CupertinoButton(
                onPressed: convert,
                color: const Color.fromARGB(255, 246, 244, 244),
                child:const Text("convert"), 
                )
            
            ]
                    ),
          ),
        )
      );
  }
}