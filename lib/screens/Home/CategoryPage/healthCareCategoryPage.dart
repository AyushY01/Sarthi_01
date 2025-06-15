import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class healthCareCategoryPage extends StatefulWidget {
  const healthCareCategoryPage({Key? key}) : super(key: key);

  @override
  State<healthCareCategoryPage> createState() => _HealthCareCategoryPageState();
}

class _HealthCareCategoryPageState extends State<healthCareCategoryPage> {
  final String urlToOpen = 'https://ayushy01.github.io/DOJ/HealthCare/Healthindex.html';

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
        title: const Text('HealthCare Category'),
      ),
      body: const Center(
        child: Text('Opening link...'),
      ),
    );
  }
}
