import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/Article_Model.dart';
import 'package:news_app/Services/News_Service.dart';
import 'package:news_app/Widgets/News_List_View.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key , required this.category, });

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(dio: Dio()).getNews(category: widget.category);

  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(child: Text('Oops!There Was an Error Fetching News')),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );

    //   return isLoading
    //       ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //       :articles.isNotEmpty ?NewsListView(articles: articles) : SliverToBoxAdapter(child: Center(child: Text('Oops!There Was an Error Fetching News' )));
    // }
  }
}
