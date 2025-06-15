import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class businessCategoryPage extends StatefulWidget {
  const businessCategoryPage({Key? key}) : super(key: key);

  @override
  State<businessCategoryPage> createState() => _BusinessCategoryPageState();
}

class _BusinessCategoryPageState extends State<businessCategoryPage> {
  final String urlToOpen = 'https://ayushy01.github.io/';

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
        title: const Text('Business Category'),
      ),
      body: const Center(
        child: Text('Opening link...'),
      ),
    );
  }
}
