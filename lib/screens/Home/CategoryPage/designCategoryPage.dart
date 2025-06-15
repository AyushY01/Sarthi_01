import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class designCategoryPage extends StatefulWidget {
  const designCategoryPage({Key? key}) : super(key: key);

  @override
  State<designCategoryPage> createState() => _DesignCategoryPageState();
}

class _DesignCategoryPageState extends State<designCategoryPage> {
  final String urlToOpen = 'https://ayushy01.github.io/DOJ/Design/Designindex.html';

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
        title: const Text('Design Category'),
      ),
      body: const Center(
        child: Text('Opening link...'),
      ),
    );
  }
}
