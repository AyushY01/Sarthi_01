import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class lawCategoryPage extends StatefulWidget {
  const lawCategoryPage({Key? key}) : super(key: key);

  @override
  State<lawCategoryPage> createState() => _LawCategoryPageState();
}

class _LawCategoryPageState extends State<lawCategoryPage> {
  final String urlToOpen = 'https://ayushy01.github.io/DOJ/Law/Lawindex.html';

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
        title: const Text('Law Category'),
      ),
      body: const Center(
        child: Text('Opening link...'),
      ),
    );
  }
}
