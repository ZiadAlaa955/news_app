part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}

final class NewsLoading extends NewsState {}

final class NewsLoaded extends NewsState {
  final List<NewsModel>? newsList;

  NewsLoaded({required this.newsList});
}

final class NewsFailure extends NewsState {
  final String errorMessage;

  NewsFailure({required this.errorMessage});
}
