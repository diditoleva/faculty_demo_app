import 'package:built_value/serializer.dart';
import 'package:faculty_demo_app/news/model/news.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'news_serializers.g.dart';

@SerializersFor([News])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();