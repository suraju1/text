import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tes/providerClass.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final clientData = context.watch<clientClass>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(clientData.name),
            Text(clientData.email),
            Text(clientData.password)
          ],
        ),
      ),
    );
  }
}