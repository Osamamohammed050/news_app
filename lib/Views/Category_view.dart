import 'package:flutter/material.dart';
import 'package:news_app/Widgets/News_List_View_Builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category, required this.name});
  final String category;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1565C0),
        toolbarHeight: 50,
        title: Text(name + ' News' , style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color, fontSize: 24 , fontWeight: FontWeight.w500),),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder( category: category,),  
        ],
      ),
    );
  }
}