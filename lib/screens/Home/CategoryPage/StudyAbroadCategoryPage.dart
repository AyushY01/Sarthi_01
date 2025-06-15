import 'package:flutter/material.dart';
import 'package:sarthi_1/screens/Home/CategoryPage/CategoryIcon.dart';
import 'package:url_launcher/url_launcher.dart';


class StudyAbroadCategoryPage extends StatelessWidget{
  const StudyAbroadCategoryPage({Key?key}):super(key:key);

  Future<void> _launchURLUS() async {
    final Uri url = Uri.parse('https://foreign.fulbrightonline.org/about/foreign-student-program');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchURL2() async {
    final Uri url = Uri.parse('https://www.chevening.org/scholarships/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchURL3() async {
    final Uri url = Uri.parse('https://erasmus-plus.ec.europa.eu/opportunities/opportunities-for-individuals/students');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchURL4() async {
    final Uri url = Uri.parse('https://www.daad.de/en/studying-in-germany/scholarships/daad-scholarships/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchURL5() async {
    final Uri url = Uri.parse('https://www.rhodeshouse.ox.ac.uk/scholarships/the-rhodes-scholarship/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchURL6() async {
    final Uri url = Uri.parse('https://www.gatescambridge.org/programme/the-scholarship/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
  Future<void> _launchURL7() async {
    final Uri url = Uri.parse('https://www.dfat.gov.au/people-to-people/australia-awards/australia-awards-scholarshi');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
  Future<void> _launchURL8() async {
    final Uri url = Uri.parse('https://www.studyinjapan.go.jp/en/planning/scholarships/mext-scholarships/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
  Future<void> _launchURL9() async {
    final Uri url = Uri.parse('https://www.sbfi.admin.ch/sbfi/en/home/education/scholarships-and-grants/swiss-government-excellence-scholars');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
  Future<void> _launchURL10() async {
    final Uri url = Uri.parse('https://www.britishcouncil.in/study-uk/scholarships/commonwealth-scholarships');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Abroad'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  //FullBright Scholarship
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8), // set to 0 for sharp corners
                            child: Image.asset(
                             'assets/Flag/U.S_Flag.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Fulbright Scholarship',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),
                      const Chip(
                        label: Text('Fully Funded'),
                        backgroundColor: Colors.greenAccent,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Eligibility: All nationalities',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Application Deadline: May 15, 2025',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child:ElevatedButton(
                              onPressed: (){
                                _launchURLUS();
                              },
                          child: const Text('Apply'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:4),

            // Chevening Scholarship (UK)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  //FullBright Scholarship
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8), // set to 0 for sharp corners
                            child: Image.asset(
                              'assets/Flag/UK_Flag.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Chevening Scholarship',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),
                      const Chip(
                        label: Text('Fully Funded'),
                        backgroundColor: Colors.greenAccent,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Eligibility: All nationalities',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Application Deadline: May 15, 2025',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child:ElevatedButton(
                          onPressed: (){
                            _launchURL2();
                          },
                          child: const Text('Apply'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:4),

            //Erasmus+ Scholarship (Europe)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  //FullBright Scholarship
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8), // set to 0 for sharp corners
                            child: Image.asset(
                              'assets/Flag/Europe_Flag.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Erasmus+ Scholarship',

                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),
                      const Chip(
                        label: Text('Fully Funded'),
                        backgroundColor: Colors.greenAccent,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Eligibility: All nationalities',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Application Deadline: May 15, 2025',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child:ElevatedButton(
                          onPressed: (){
                            _launchURL3();
                          },
                          child: const Text('Apply'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:4),

            //DAAD Scholarship (Germany)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  //FullBright Scholarship
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8), // set to 0 for sharp corners
                            child: Image.asset(
                              'assets/Flag/Germany_Flag.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'DAAD Scholarship',

                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),
                      const Chip(
                        label: Text('Fully Funded'),
                        backgroundColor: Colors.greenAccent,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Eligibility: All nationalities',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Application Deadline: May 15, 2025',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child:ElevatedButton(
                          onPressed: (){
                            _launchURL4();
                          },
                          child: const Text('Apply'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:4),

            //Rhodes Scholarship (UK, University of Oxford)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  //FullBright Scholarship
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8), // set to 0 for sharp corners
                            child: Image.asset(
                              'assets/Flag/UK_Flag.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Rhodes Scholarship',

                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),
                      const Chip(
                        label: Text('Fully Funded'),
                        backgroundColor: Colors.greenAccent,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Eligibility: All nationalities',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Application Deadline: May 15, 2025',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child:ElevatedButton(
                          onPressed: (){
                            _launchURL5();
                          },
                          child: const Text('Apply'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:4),


            //Gates Cambridge Scholarship (UK, University of Cambridge)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  //FullBright Scholarship
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8), // set to 0 for sharp corners
                            child: Image.asset(
                              'assets/Flag/UK_Flag.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child:Text(
                              'Gates Cambridge Scholarship',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              softWrap: true,
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height:2),
                      const Chip(
                        label: Text('Fully Funded'),
                        backgroundColor: Colors.greenAccent,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Eligibility: All nationalities',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Application Deadline: May 15, 2025',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child:ElevatedButton(
                          onPressed: (){
                            _launchURL6();
                          },
                          child: const Text('Apply'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:4),


            //Australia Awards Scholarships
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  //FullBright Scholarship
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8), // set to 0 for sharp corners
                            child: Image.asset(
                              'assets/Flag/Australia_Flag.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Australia Awards Scholarships',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              softWrap:true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),
                      const Chip(
                        label: Text('Fully Funded'),
                        backgroundColor: Colors.greenAccent,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Eligibility: All nationalities',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Application Deadline: May 15, 2025',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child:ElevatedButton(
                          onPressed: (){
                            _launchURL7();
                          },
                          child: const Text('Apply'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:4),


            //Japanese Government (MEXT) Scholarship
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  //FullBright Scholarship
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8), // set to 0 for sharp corners
                            child: Image.asset(
                              'assets/Flag/Japan_Flag.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Japanese Government (MEXT) Scholarship',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              softWrap:true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),
                      const Chip(
                        label: Text('Fully Funded'),
                        backgroundColor: Colors.greenAccent,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Eligibility: All nationalities',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Application Deadline: May 15, 2025',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child:ElevatedButton(
                          onPressed: (){
                            _launchURL8();
                          },
                          child: const Text('Apply'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:4),


            //Swiss Government Excellence Scholarships
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  //FullBright Scholarship
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8), // set to 0 for sharp corners
                            child: Image.asset(
                              'assets/Flag/Swiss_Flag.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Swiss Government Excellence Scholarships',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              softWrap:true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),
                      const Chip(
                        label: Text('Fully Funded'),
                        backgroundColor: Colors.greenAccent,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Eligibility: All nationalities',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Application Deadline: May 15, 2025',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child:ElevatedButton(
                          onPressed: (){
                            _launchURL9();
                          },
                          child: const Text('Apply'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:4),


            //Commonwealth Scholarships
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  //FullBright Scholarship
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8), // set to 0 for sharp corners
                            child: Image.asset(
                              'assets/Flag/UK_Flag.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Commonwealth Scholarship',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),
                      const Chip(
                        label: Text('Fully Funded'),
                        backgroundColor: Colors.greenAccent,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Eligibility: All nationalities',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Application Deadline: May 15, 2025',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child:ElevatedButton(
                          onPressed: (){
                            _launchURL10();
                          },
                          child: const Text('Apply'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:4),

          ],

        ),
      ),
    );
  }

}