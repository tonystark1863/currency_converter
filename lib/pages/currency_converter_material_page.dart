import 'package:flutter/material.dart';


class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>  _CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage extends State<CurrencyConverterMaterialPage>{

  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override 
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }

  void convert(){
    result = double.parse(textEditingController.text)*83.42;
    setState(() {}); //triggers rebuilt
  }

@override
  Widget build(BuildContext context){

    final  border = OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(15),
                );
                

    return   Scaffold(

      appBar: AppBar(
        backgroundColor: const  Color.fromARGB(159, 37, 0, 54),
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white60),
        ),
       ),
      backgroundColor: const  Color.fromARGB(159, 37, 0, 54),
        body: Center(
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
              TextField(
                controller: textEditingController,
                onSubmitted: (value){ print(value);},
                style: const  TextStyle(
                  color: Color.fromARGB(255, 155, 152, 152),
                ),
                decoration: InputDecoration(
                  labelText: "Please Enter the amount in USD",
                  labelStyle: const TextStyle(
                  color: Color.fromARGB(223, 225, 225, 225),
                  ),
                prefixIcon:const  Icon(Icons.monetization_on_outlined),
                prefixIconColor: const Color.fromARGB(153, 186, 184, 184),
                filled: true,
                fillColor:const  Color.fromARGB(53, 12, 12, 12),
                focusedBorder: border,
                enabledBorder: border,
              
                ),
                keyboardType:const  TextInputType.numberWithOptions(
                  decimal: true,
                )
              ),

              const SizedBox(height: 30),


              ElevatedButton(
                onPressed: convert, 
                style:ButtonStyle(
              
                  //we can also use ElevatedButton / TextButton.styleFrom(color: , backgroundColor:) without using WidgetStatePropertyAll() class
                  
                  elevation: const WidgetStatePropertyAll(15),
                  backgroundColor:const  WidgetStatePropertyAll(Color.fromARGB(255, 160, 160, 160)),
                  foregroundColor:const WidgetStatePropertyAll(Color.fromARGB(255, 3, 3, 3)),
                  minimumSize:const  WidgetStatePropertyAll(Size(double.infinity,50)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ))
                  
                ),
                child: const Text("convert")
                )
            
            ]
                    ),
          ),
        )
      );
  }
}



// class CurrencyConverterMaterialPage extends StatelessWidget{

//   const CurrencyConverterMaterialPage({super.key});


 

//   @override
//   Widget build(BuildContext context){
//     print('rebuilt');
//      final TextEditingController textEditingController = TextEditingController();
//     double result = 0;

//     final  border = OutlineInputBorder(
//                 borderSide: const BorderSide(
//                   width: 1.0,
//                   style: BorderStyle.solid,
//                 ),
//                 borderRadius: BorderRadius.circular(15),
//                 );
                
//     return   Scaffold(

//       appBar: AppBar(
//         backgroundColor: const  Color.fromARGB(159, 37, 0, 54),
//         title: const Text(
//           'Currency Converter',
//           style: TextStyle(color: Colors.white60),
//         ),
//        ),
//       backgroundColor: const  Color.fromARGB(159, 37, 0, 54),
//         body: Center(
//           child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment:CrossAxisAlignment.center,
//           children :[

//             Container(
//               padding: const EdgeInsets.all(10),
//               margin: const EdgeInsets.all(10),

//               child:  Text(
//                 result.toString(),
//                 style: const TextStyle(
//                   fontWeight:FontWeight.bold,
//                   fontSize: 45,
//                   color: Color.fromARGB(255, 243, 240, 240)
//                 ),
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: TextField(
//                 controller: textEditingController,
//                 onSubmitted: (value){ print(value);},
//                 style: const  TextStyle(
//                   color: Color.fromARGB(255, 155, 152, 152),
//                 ),
//                 decoration: InputDecoration(
//                   labelText: "Please Enter the amount in USD",
//                   labelStyle: const TextStyle(
//                   color: Color.fromARGB(223, 225, 225, 225),
//                   ),
//                 prefixIcon:const  Icon(Icons.monetization_on_outlined),
//                 prefixIconColor: const Color.fromARGB(153, 186, 184, 184),
//                 filled: true,
//                 fillColor:const  Color.fromARGB(53, 12, 12, 12),
//                 focusedBorder: border,
//                 enabledBorder: border,
              
//                 ),
//                 keyboardType:const  TextInputType.numberWithOptions(
//                   decimal: true,
//                 )
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child:  ElevatedButton(
//                 onPressed: () {
//                   result = double.parse(textEditingController.text)*85;
//                     print(result);
//                     build(context);
              
//                 }, 
//                 style:ButtonStyle(

//                   //we can also use ElevatedButton / TextButton.styleFrom(color: , backgroundColor:) without using WidgetStatePropertyAll() class
                  
//                   elevation: const WidgetStatePropertyAll(15),
//                   backgroundColor:const  WidgetStatePropertyAll(Color.fromARGB(255, 160, 160, 160)),
//                   foregroundColor:const WidgetStatePropertyAll(Color.fromARGB(255, 3, 3, 3)),
//                   minimumSize:const  WidgetStatePropertyAll(Size(double.infinity,50)),
//                   shape: WidgetStatePropertyAll(RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)
//                   ))
                  
//                 ),
//                 child: const Text("convert")
//                 ),
//             )

//           ]
//         ),
//         )
//       );
//   }

// }