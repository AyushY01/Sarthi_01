import 'package:flutter/material.dart';
import 'package:sarthi_1/models/onboarding_screen_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'widgets/slide_item.dart';
import 'package:sarthi_1/screens/home/home_screen.dart';

class onboarding_screen extends StatefulWidget{
  const onboarding_screen({super.key});
  @override
  State<onboarding_screen> createState()=> _onboardingScreenState();
}

class _onboardingScreenState extends State<onboarding_screen>{
  final PageController _controller=PageController();
  int _currentPage=0;

  final List<onboarding_screen_model> slides=[
    onboarding_screen_model(
        image:'assets/images/First_Onboarding_Screen.jpg',
        title:'Welcome',
        description:'Hii Mate',
    ),
    onboarding_screen_model(
        image:'assets/images/Second_Onboarding_Screen.jpg',
        title:'Bye',
        description:'Take Care,',
    ),
  ];
  void _onSkip() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seenboarding', true);

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const home_screen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: _controller,
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemCount: slides.length,
            itemBuilder: (context, index) {
              return slide_item(model: slides[index]);
            },
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: _onSkip,
              child: const Text('Skip', style: TextStyle(fontSize: 16)),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(slides.length, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 10,
                  width: _currentPage == index ? 20 : 10,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}