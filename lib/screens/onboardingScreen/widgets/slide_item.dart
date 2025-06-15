import 'package:flutter/material.dart';
import 'package:sarthi_1/models/onboarding_screen_model.dart';

//styling in here
class slide_item extends StatelessWidget{
  final onboarding_screen_model model;
  const slide_item({super.key,required this.model});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Image.asset(model.image,height:250),
        const SizedBox(height:30),
        Text(model.title,style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
    const SizedBox(height: 10),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Text(model.description,
    textAlign: TextAlign.center,
    style: const TextStyle(fontSize: 16, color: Colors.grey)),
    ),
      ],
    );
  }
  
}


