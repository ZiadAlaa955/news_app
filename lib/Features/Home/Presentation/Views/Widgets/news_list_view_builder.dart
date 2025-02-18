import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/news_list_view.dart';
import 'package:news_app/Features/Home/Presentation/Manager/news_cubit/news_cubit.dart';

class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NewsCubit>(context).getNews(category);

    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is NewsLoaded) {
          return NewsListView(newsList: state.newsList ?? []);
        } else if (state is NewsFailure) {
          return Text(state.errorMessage);
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
