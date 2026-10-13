// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/Models/Article_Model.dart';
// import 'package:news_app/Services/News_Service.dart';
// import 'package:news_app/Widgets/News_Tile.dart';

// class NewsListView extends StatefulWidget {
//   NewsListView({super.key});

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {

//   List<ArticleModel> articles = [];
//   bool isLoading = true;

//   @override
//   void initState()  {
//     super.initState();
//      GetGeneralNews();
    
//   }

//   Future<void> GetGeneralNews() async {
//     articles = await NewsService(dio: Dio()).getNews();
//     setState(() {
//     isLoading = false;

//     });
//   }

  
//   @override
//   Widget build(BuildContext context) {

    
//     return  isLoading ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())) : SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: articles.length,
//         (context, index) => NewsTile(articleModel: articles[index]),
//       ),
//     );
//   }
// }
