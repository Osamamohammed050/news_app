import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/Article_Model.dart';
import 'package:news_app/Services/News_Service.dart';
import 'package:news_app/Widgets/News_Tile.dart';

class NewsListView extends StatelessWidget {

   final List<ArticleModel> articles;

  NewsListView({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) => NewsTile(articleModel: articles[index]),
            ),
          );
  }
}
