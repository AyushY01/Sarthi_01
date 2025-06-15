import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class techCategoryPage extends StatefulWidget {
  const techCategoryPage({Key? key}) : super(key: key);

  @override
  State<techCategoryPage> createState() => _TechCategoryPageState();
}

class _TechCategoryPageState extends State<techCategoryPage> {
  final String urlToOpen = 'https://ayushy01.github.io/DOJ/Tech/Techindex.html';

  @override
  void initState() {
    super.initState();
    _launchURL();
  }

  Future<void> _launchURL() async {
    final Uri uri = Uri.parse(urlToOpen);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $urlToOpen');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tech Category'),
      ),
      body: const Center(
        child: Text('Opening link...'),
      ),
    );
  }
}
