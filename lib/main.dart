import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:homzes/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:homzes/services/firestore_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirestoreService>(
          create: (_) => FirestoreService(),
        ),
      ],
      child: MaterialApp(
        title: 'Homzes',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
