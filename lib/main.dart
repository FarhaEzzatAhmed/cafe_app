import 'package:cafe/login.dart';
import 'package:cafe/models/screens/coffe_list.dart';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(theme: ThemeData(
        primarySwatch:Colors.brown),
     
       debugShowCheckedModeBanner: false,
       
      home:LoginScreen(),
      
    );
    }}