import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/Features/Home/Data/Models/news_model.dart';
import 'package:news_app/Core/Utils/news_service.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.newsService) : super(NewsInitial());

  final NewsService newsService;

  Future<void> getNews(String category) async {
    emit(NewsLoading());

    try {
      final List<NewsModel> newsList =
          await newsService.getTopHeadlines(category);
      emit(NewsLoaded(newsList: newsList));
    } on Exception catch (e) {
      emit(NewsFailure(errorMessage: e.toString()));
    }
  }
}
