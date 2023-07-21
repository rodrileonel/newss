
import 'package:flutter/material.dart';
import 'package:superapp/app/articles/views/articles_view.dart';
import 'package:superapp/core/theme/app_theme.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key, this.userName = '', this.userCode = ''});

  final String userName;
  final String userCode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.commonTheme,
      home: const ArticlesView(),
    );
  }
}
