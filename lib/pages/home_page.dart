import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/auth/auth_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  signOut() {
    //get auth service
    final authService = Provider.of<AuthService>(context, listen: false);
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          //sign out button
          IconButton(onPressed: signOut, icon: const Icon(Icons.logout),),
        ],
      ),
    );
  }
}
