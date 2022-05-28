import 'package:cafe/models/screens/coffe_list.dart';
import 'package:cafe/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';



class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 188, 126, 102),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             
              children:
               [
                Text(
                  'Login',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
                
                ),
              
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email Address',
                prefixIcon:Icon(Icons.email) ,
                border:OutlineInputBorder(),
              ),
          
              ),
             SizedBox(height: 15.0,),
              TextFormField(
                controller:passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'password',
                prefixIcon:Icon(Icons.lock) ,
                suffix: Icon(Icons.remove_red_eye),
                border:OutlineInputBorder(),
              ),
          
              ), 
              SizedBox(height: 20.0,),
              Container(
                width: double.infinity,
                color:Color.fromARGB(255, 188, 126, 102),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
            return CoffeList();
          }));
                  },
                  child: Text('Login',
                  style: TextStyle(color: Colors.white),),),
              ),
             SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Don\'t have an account?'),
                TextButton( onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
            return RegisterScreen();
          }));
                  },
                
                 child: Text(
                   'Register Now',style: TextStyle(color: Color.fromARGB(255, 188, 126, 102),),
                 ),)
          
              ],),
              ],
          
          
            ),
          ),
        ),
      ),
      
    );
  }
}