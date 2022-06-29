// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<News> _$newsSerializer = new _$NewsSerializer();

class _$NewsSerializer implements StructuredSerializer<News> {
  @override
  final Iterable<Type> types = const [News, _$News];
  @override
  final String wireName = 'News';

  @override
  Iterable<Object?> serialize(Serializers serializers, News object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'imagePath',
      serializers.serialize(object.imagePath,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  News deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imagePath':
          result.imagePath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$News extends News {
  @override
  final String title;
  @override
  final String date;
  @override
  final String content;
  @override
  final String imagePath;

  factory _$News([void Function(NewsBuilder)? updates]) =>
      (new NewsBuilder()..update(updates))._build();

  _$News._(
      {required this.title,
      required this.date,
      required this.content,
      required this.imagePath})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'News', 'title');
    BuiltValueNullFieldError.checkNotNull(date, r'News', 'date');
    BuiltValueNullFieldError.checkNotNull(content, r'News', 'content');
    BuiltValueNullFieldError.checkNotNull(imagePath, r'News', 'imagePath');
  }

  @override
  News rebuild(void Function(NewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsBuilder toBuilder() => new NewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is News &&
        title == other.title &&
        date == other.date &&
        content == other.content &&
        imagePath == other.imagePath;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), date.hashCode), content.hashCode),
        imagePath.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'News')
          ..add('title', title)
          ..add('date', date)
          ..add('content', content)
          ..add('imagePath', imagePath))
        .toString();
  }
}

class NewsBuilder implements Builder<News, NewsBuilder> {
  _$News? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  NewsBuilder();

  NewsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _date = $v.date;
      _content = $v.content;
      _imagePath = $v.imagePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(News other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$News;
  }

  @override
  void update(void Function(NewsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  News build() => _build();

  _$News _build() {
    final _$result = _$v ??
        new _$News._(
            title:
                BuiltValueNullFieldError.checkNotNull(title, r'News', 'title'),
            date: BuiltValueNullFieldError.checkNotNull(date, r'News', 'date'),
            content: BuiltValueNullFieldError.checkNotNull(
                content, r'News', 'content'),
            imagePath: BuiltValueNullFieldError.checkNotNull(
                imagePath, r'News', 'imagePath'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
