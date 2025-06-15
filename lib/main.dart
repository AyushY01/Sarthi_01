import 'package:flutter/material.dart';
import 'package:sarthi_1/screens/Home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/onboardingScreen/onboarding_screen.dart';



void main()  {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool seenboarding=false;
  bool loading=true;

  @override
  void initState(){
    super.initState();
    checkBoadingStatus();
  }

  void checkBoadingStatus() async{
    final prefs= await SharedPreferences.getInstance();
    final seen=prefs.getBool('seenboarding')??false;
    setState(() {
      seenboarding=seen;
      loading=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const MaterialApp(
        home: Scaffold(
          body: Center(child: CircularProgressIndicator()),
        ),
      );
    }
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: seenboarding ? const home_screen():const onboarding_screen(),
    );
  }
}


