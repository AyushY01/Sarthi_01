import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sarthi_1/screens/Home/CategoryPage/CategoryIcon.dart';
import 'package:sarthi_1/screens/Home/CategoryPage/techCategoryPage.dart';
import 'package:sarthi_1/screens/Home/CategoryPage/lawCategoryPage.dart';
import 'package:sarthi_1/screens/Home/CategoryPage/healthCareCategoryPage.dart';
import 'package:sarthi_1/screens/Home/CategoryPage/designCategoryPage.dart';
import 'package:sarthi_1/screens/Home/CategoryPage/businessCategoryPage.dart';
import 'package:sarthi_1/screens/Home/CategoryPage/JobCategoryPage.dart';
import 'package:sarthi_1/screens/Home/CategoryPage/StudyAbroadCategoryPage.dart';
import 'package:sarthi_1/screens/Home/ChatBot/chatbot.dart';
import 'package:sarthi_1/screens/Home/AssesmentQuiz/AssessmentQuiz.dart';






class home_screen extends StatelessWidget{
  const home_screen({Key? key}):super(key:key);
  @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Sarthi"),
          actions: const[
            Padding(
              padding: EdgeInsets.symmetric(horizontal:12),
              child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
          ],
        ),
        body:Stack(
          children:[
            SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:15),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text("Hello,Stark",
                            style:
                            TextStyle(fontSize:24,fontWeight:FontWeight.bold)),
                        SizedBox(height: 4),
                        Text("Find your perfect profession based on your passion"),
                      ],
                    ),
                  ),

                  ////Career Quiz Page
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.lightbulb_outline, color: Colors.blue),
                        const SizedBox(width: 10),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:(context)=> const AssessmentQuiz(),
                                ),
                              );
                            },
                            child: const Text("Take the Career Quiz"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height:24),

                  ////Explore Categories
                  Padding(
                    padding:EdgeInsets.symmetric(vertical:4,horizontal:12),
                    child:Text("Explore Categories",
                      style:
                      TextStyle(fontSize:22,fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child:Row(
                      children: [
                        CategoryIcon(
                          icon: Icons.laptop,
                          label: "Tech",
                          bgColor: const Color(0xFFEFF4FB),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const techCategoryPage(),
                              ),
                            );
                          },
                        ),
                        SizedBox(width: 12),
                        CategoryIcon(
                          icon: Icons.health_and_safety,
                          label: "Healthcare",
                          bgColor: const Color(0xFFEFF4FB),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const healthCareCategoryPage(),
                              ),
                            );
                          },
                        ),
                        SizedBox(width: 12),
                        CategoryIcon(
                          icon: Icons.color_lens,
                          label: "Design",
                          bgColor: const Color(0xFFEFF4FB),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const designCategoryPage(),
                              ),
                            );
                          },
                        ),
                        SizedBox(width: 12),
                        CategoryIcon(
                          icon: Icons.balance,
                          label: "Law",
                          bgColor: const Color(0xFFEFF4FB),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const lawCategoryPage(),
                              ),
                            );
                          },
                        ),
                        SizedBox(width: 12),
                        CategoryIcon(
                          icon: Icons.business,
                          label: "Business",
                          bgColor: const Color(0xFFEFF4FB),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const businessCategoryPage(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),

                  ////Trending Careers
                  Padding(
                    padding:EdgeInsets.symmetric(vertical:5,horizontal:8),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text("🔥 Trending Careers",
                          style:
                          TextStyle(fontSize:22,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height:8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:[
                                Padding(
                                  padding:EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                                ),
                                CategoryIcon(
                                  icon: Icons.laptop,
                                  label: "Data Scientist",
                                  bgColor: const Color(0xFFEFF4FB),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const techCategoryPage(),
                                      ),
                                    );
                                  },
                                ),
                                Padding(
                                  padding:EdgeInsets.symmetric(vertical: 0,horizontal: 13),
                                ),
                                CategoryIcon(
                                  icon: Icons.laptop,
                                  label: "Car Driver",
                                  bgColor: const Color(0xFFEFF4FB),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const techCategoryPage(),
                                      ),
                                    );
                                  },
                                ),
                                Padding(
                                  padding:EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                                ),
                                CategoryIcon(
                                  icon: Icons.laptop,
                                  label: "Prompt Engineering",
                                  bgColor: const Color(0xFFEFF4FB),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const techCategoryPage(),
                                      ),
                                    );
                                  },
                                ),
                                Padding(
                                  padding:EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:[
                                CategoryIcon(
                                  icon: Icons.laptop,
                                  label: "UX Designer",
                                  bgColor: const Color(0xFFEFF4FB),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const techCategoryPage(),
                                      ),
                                    );
                                  },
                                ),
                                CategoryIcon(
                                  icon: Icons.laptop,
                                  label: "Machine Learning",
                                  bgColor: const Color(0xFFEFF4FB),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const techCategoryPage(),
                                      ),
                                    );
                                  },
                                ),
                                CategoryIcon(
                                  icon: Icons.laptop,
                                  label: "A.I Engineer",
                                  bgColor: const Color(0xFFEFF4FB),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const techCategoryPage(),
                                      ),
                                    );
                                  },
                                ),
                                Padding(
                                  padding:EdgeInsets.symmetric(vertical: 0,horizontal: 1),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),


                  ),
                  SizedBox(height: 8),

                  ////International Studies
                  Padding(
                    padding:EdgeInsets.symmetric(vertical: 0,horizontal: 8),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text("✈️ International Opportunities",
                            style:
                            TextStyle(fontSize:22,fontWeight:FontWeight.bold)),
                        SizedBox(height: 4),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Padding(
                              padding:EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                            ),
                            GestureDetector(
                              onTap:(){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>JobCategoryPage()),
                                );

                              },
                              child: Column(
                                children:[
                                  Container(
                                    width:100,
                                    height:100,
                                    decoration: BoxDecoration(
                                      color:Colors.blue,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child:Icon(Icons.flight, color: Colors.white, size: 40),
                                  ),
                                  const Text("Jobs",
                                      style:
                                      TextStyle(fontSize:22,fontWeight:FontWeight.bold)),
                                ],
                              ),
                            ),
                            Padding(
                              padding:EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                            ),
                            GestureDetector(
                              onTap:(){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder:(context)=>StudyAbroadCategoryPage()),
                                );
                              },
                              child: Column(
                                children:[
                                  Container(
                                    width:100,
                                    height:100,
                                    decoration: BoxDecoration(
                                      color:Colors.blue,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child:Icon(Icons.flight, color: Colors.white, size: 40),
                                  ),
                                  const Text("Study",
                                      style:
                                      TextStyle(fontSize:22,fontWeight:FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            ////Chat bot avatar

            Positioned(
                bottom:16,
                right: 16,
                child:GestureDetector(
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=>chatbot()),
                    );
                  },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    Text("ChatBot",
                    style:
                    TextStyle(fontWeight:FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}




