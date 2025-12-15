import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tes/login_screen.dart';
import 'package:tes/providerClass.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>
       clientClass(
      name: '',
      email: '',
      password: '',
    ),  
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
    );
    
   
  }
}
 