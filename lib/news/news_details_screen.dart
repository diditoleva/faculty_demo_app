
import 'package:faculty_demo_app/news/model/news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailsScreen extends StatelessWidget {
  final News news;

  const NewsDetailsScreen({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Новини"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  news.imagePath,
                ),
                const SizedBox(height: 20),
                Text(news.title, style: const TextStyle(fontSize: 24)),
                const SizedBox(height: 10),
                Text(
                  news.date,
                  style: const TextStyle(color: Colors.grey, fontSize: 15),
                ),
                const SizedBox(height: 20),
                Linkify(
                  onOpen: (link) async {
                    if (await canLaunchUrl(Uri.parse(link.url))) {
                      await launchUrl(Uri.parse(link.url));
                    } else {
                      throw 'Could not launch $link';
                    }
                  },
                  text: news.content,
                  options: const LinkifyOptions(humanize: false),
                  style: const TextStyle(fontSize: 17),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
