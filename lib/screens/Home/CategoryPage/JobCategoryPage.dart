import 'package:flutter/material.dart';
import 'package:sarthi_1/screens/Home/CategoryPage/CategoryIcon.dart';
import 'package:url_launcher/url_launcher.dart';


class JobCategoryPage extends StatelessWidget{
  const JobCategoryPage({Key?key}):super(key:key);

  Future<void> _launchURL1() async {
    final Uri url = Uri.parse('https://in.linkedin.com/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchURL2() async {
    final Uri url = Uri.parse('https://in.indeed.com/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchURL3() async {
    final Uri url = Uri.parse('https://www.glassdoor.co.in/Community/index.htm');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchURL4() async {
    final Uri url = Uri.parse('https://www.goabroad.com/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchURL5() async {
    final Uri url = Uri.parse('https://www.workabroad.ph/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchURL6() async {
    final Uri url = Uri.parse('https://www.foundit.in/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
  Future<void> _launchURL7() async {
    final Uri url = Uri.parse('https://eurojobs.com/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
  Future<void> _launchURL8() async {
    final Uri url = Uri.parse('https://www.gulftalent.com/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
  Future<void> _launchURL9() async {
    final Uri url = Uri.parse('https://www.daijob.com/en/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
  Future<void> _launchURL10() async {
    final Uri url = Uri.parse('https://www.usajobs.gov/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jobs'),
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
                              'assets/images/Linkedin.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            ' LinkedIn',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),

                      const SizedBox(height: 8),

                        const Text(
                          'Professional networking site with job listings, company pages, and networking features.',
                          style: TextStyle(fontSize: 14),
                          softWrap:true,
                        ),


                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child:ElevatedButton(
                          onPressed: (){
                            _launchURL1();
                          },
                          child: const Text('Visit'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:4),

            //Indeed
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
                              'assets/images/Indeed.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            ' Indeed',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),

                      const SizedBox(height: 8),

                      const Text(
                        'Search jobs by country',
                        style: TextStyle(fontSize: 14),
                        softWrap:true,
                      ),


                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child:ElevatedButton(
                          onPressed: (){
                            _launchURL2();
                          },
                          child: const Text('Visit'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:4),

            //GlassDoor
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
                              'assets/images/GlassDoor.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'GlassDoor',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),

                      const SizedBox(height: 8),

                      const Text(
                        'Job listings with company reviews and salary insights.',
                        style: TextStyle(fontSize: 14),
                        softWrap:true,
                      ),


                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child:ElevatedButton(
                          onPressed: (){
                            _launchURL3();
                          },
                          child: const Text('Visit'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:4),

            //GoAbroad
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
                              'assets/images/GoAbroad.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Go Abroad',

                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),

                      const Text(
                        'Focused on internships, teaching, and volunteer programs abroad.',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                        softWrap:true,
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

            //WorkAbroad
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
                              'assets/images/WorkAbroad.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'WorkAbroad',

                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),

                      const Text(
                        'Philippine-based site listing overseas jobs.',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        softWrap:true,
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


            //Monster Global
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
                              'assets/images/Monster_Global.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Monster Global',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),

                      const Text(
                        'International version of Monster.com.',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        softWrap:true,
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


            //EuroJobs
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
                              'assets/images/EuroJoba.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'EuroJobs',

                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),

                      const Text(
                        'Jobs in European countries like Germany, Netherlands, France.',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        softWrap:true,
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


            //GulfTalent
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
                              'assets/images/GulfTalent.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'GulfTalent',

                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),

                      const Text(
                        'Leading job portal for Middle East jobs (UAE, Saudi, Qatar).',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        softWrap:true,
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


            //Japan / Daijob / GaijinPot
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
                              'assets/images/Daijob.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Japan / Daijob / GaijinPot',

                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),

                      const Text(
                        '	Listings for foreigners in Japan.',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        softWrap:true,
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


            //USAJobs
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
                              'assets/images/USAJOBS.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'USAJobs',

                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height:2),

                      const Text(
                        'Official U.S. government job portal.',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        softWrap:true,
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