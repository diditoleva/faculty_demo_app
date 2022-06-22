import 'package:faculty_demo_app/news/blok/news_bloc.dart';
import 'package:faculty_demo_app/news/model/news.dart';
import 'package:faculty_demo_app/news/news_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsBloc, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        bool isLoading = state.isLoading;
        List? news = state.newsList;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Новини"),
          ),
          body: Container(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : _buildNews(news),
          ),
        );
      },
    );
  }

  Widget _buildNews(List? news) {
    if (news == null || news.isEmpty) {
      return const Center(child: Text("В момента няма новини!"),);
    }

    return ListView.builder(
      itemCount: news.length,
        itemBuilder: (context, index) {
          final News item = news[index];

          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: ListTile(
              leading: Image.asset(
                item.imagePath,
                width: 80,
              ),
              title: Text(item.title),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(item.date),
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.black12,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetailsScreen(news: item)));
              },
            ),
          );
    });
  }
}
