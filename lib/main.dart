import 'package:currency_converter/pages/currency_converter_material_page.dart';
import 'package:currency_converter/pages/currency_converter_cupertino_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  const MaterialApp(
      home : CurrencyConverterMaterialPage(),
    );
  }
  
}



class MyCupertinoApp extends StatefulWidget {
  const MyCupertinoApp({super.key});

  @override
  State<MyCupertinoApp> createState() => _MyCupertinoAppState();
}

class _MyCupertinoAppState extends State<MyCupertinoApp> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home : CurrencyConverterCupertinoPage(),
    );
  }
}

