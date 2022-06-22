import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:faculty_demo_app/jsons/news_json.dart';
import 'package:faculty_demo_app/news/model/news.dart';
import 'package:meta/meta.dart';

part 'news_event.dart';

part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsState.initial()) {
    on<LoadingNewsEvent>((event, emit) async {
      // Imitate network operation
      await Future.delayed(const Duration(seconds: 2), () {
        List<News?> news = (json.decode(NewsData.newsJson) as List)
            .map((i) => News.fromJson(i))
            .toList();

        emit(NewsState(isLoading: false, newsList: news));
      });
    });
  }
}
