import 'dart:ui';

import 'package:cafe/models/coffe.dart';
import 'package:cafe/models/screens/coffe_details.dart';

import 'package:flutter/material.dart';

class CoffeList extends StatefulWidget {
  const CoffeList({ Key? key }) : super(key: key);

  @override
  State<CoffeList> createState() => _CoffeListState();
}

class _CoffeListState extends State<CoffeList> {
  int _selectedItem=0;
  @override
  Widget build(BuildContext context) {
    
   return Scaffold(
        backgroundColor: Color.fromARGB(255, 234, 227, 217),
        appBar: AppBar(
          backgroundColor:Color.fromARGB(255, 188, 126, 102),
          leading: Icon(Icons.menu,
          color: Colors.black,),
          actions: [
            IconButton(
              icon: Icon(Icons.search,
              color: Colors.black,),
              onPressed:(){}
              ),
              
              ],
          

        ),
      bottomNavigationBar:bottomNavBar(),

      
      body:

      
      
      
     ListView(
 
          
            
        
        children: coffes.map((e) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              height:135,
              //color: Colors.blue,
              child: coffeCard(e)
            ),
            );
        }).toList(),
         
           
        
      ),
    );
  }

  Widget coffeCard( Coffe coffe){
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
        .push(MaterialPageRoute(builder:(_)=>CoffeDetails(coffe)));
      },
       child:ListTile(title:Text("Espresso"),leading:CircleAvatar(radius: 30,
            backgroundImage:AssetImage(coffe.urlphoto),),
            trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_outlined),onPressed:(){ 
          
          Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
            return CoffeDetails(coffe);
          }));

        })),
            
      
    );
  }
  Widget bottomNavBar(){
    
    return BottomNavigationBar(
      currentIndex: _selectedItem,
      onTap:(index){
        setState((){
          _selectedItem=index;
        });
      },

        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home',        
        ),

         BottomNavigationBarItem(icon: Icon(Icons.location_city),
          label: 'location',        
        ),
      
         BottomNavigationBarItem(icon: Icon(Icons.notification_important),
          label: 'notification',        
        ),

         BottomNavigationBarItem(icon: Icon(Icons.person_rounded),
          label: 'profile',        
        ),

      ],);

  }
}