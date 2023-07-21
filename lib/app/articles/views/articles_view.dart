import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:superapp/app/articles/bloc/articles_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superapp/domain/model/article.dart';
import 'package:superapp/widgets/progress_scaffold.dart';

class ArticlesView extends StatelessWidget {
  const ArticlesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<ArticlesBloc>(),
      child: Builder(builder: (context) {
        context.read<ArticlesBloc>().add(const ArticlesEvent.getArticles());
        return BlocBuilder<ArticlesBloc, ArticlesState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const ProgressScaffold(),
              success: (articles) => Scaffold(
                appBar: AppBar(title: const Text('NewsApp')),
                body: ListView(
                  padding: const EdgeInsets.all(20),
                  children: articles
                          ?.map((article) => ArticleCard(article: article))
                          .toList() ??
                      [],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 5, spreadRadius: 5),
          
        ]
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Flexible(
              flex: 20,
              child: Image.network(
                article.urlToImage ?? '',
                errorBuilder: (context, error, stackTrace) =>
                    const SizedBox.shrink(),
              )),
          const SizedBox(width: 15),
          Flexible(flex: 80, child: Text(article.title ?? '')),
        ],
      ),
    );
  }
}
