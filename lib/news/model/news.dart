import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:faculty_demo_app/news/model/news_serializers.dart';

part 'news.g.dart';

abstract class News implements Built<News, NewsBuilder> {
  String get title;
  String get date;
  String get content;
  String get imagePath;

  News._();

  factory News([Function(NewsBuilder b) updates]) = _$News;

  static News? fromJson(Map<String, dynamic> news) {
    return serializers.deserializeWith(serializer, news);
  }

  static Serializer<News> get serializer => _$newsSerializer;
}