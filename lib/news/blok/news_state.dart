part of 'news_bloc.dart';

@immutable
class NewsState extends Equatable {
  final bool isLoading;
  final List<News?>? newsList;

  const NewsState({required this.isLoading, required this.newsList});

  @override
  List<Object?> get props => [newsList];

  factory NewsState.initial() =>
      const NewsState(isLoading: true, newsList: null);

  NewsState copyWith(
          {required bool isLoading, required List<News?>? newsList}) =>
      NewsState(isLoading: isLoading, newsList: newsList);
}
