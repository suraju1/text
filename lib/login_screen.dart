import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tes/api_screen.dart';
import 'package:tes/providerClass.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController(); 

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller:mobileNumberController ,
              onChanged: (value) {
               context.read<clientClass>().newEmail(  value); 
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'email'
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: passwordController  ,
              onChanged: (value) {
                context.read<clientClass>().newPassword(value); 
              },
               decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password'
              ),
            ),
             SizedBox(height: 20,),
            TextField(
              controller: passwordController  ,
              onChanged: (value) {
                context.read<clientClass>().newName(value); 
              },
               decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Name'
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ApiScreen()));
            }, child: Text("Go Next"))
          ],
        ),
      ),
    );
  }
}