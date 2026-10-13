import 'package:flutter/material.dart';
import 'package:news_app/Models/Category_Model.dart';
import 'package:news_app/Widgets/Category_Card.dart';

class CategegoriesListView extends StatelessWidget {
    CategegoriesListView({
    super.key,
  });

  final List<CategoryModel> categories =  [
    CategoryModel(name: "Business", image: ("assets/images/business.avif")),
    CategoryModel(name: "Entertainment", image: ("assets/images/entertainment.avif")),
    // CategoryModel(name: "General", image: ("assets/images/general.avif")),
    CategoryModel(name: "Health", image: ("assets/images/health.avif")),
    CategoryModel(name: "Science", image: ("assets/images/science.avif")),
    CategoryModel(name: "Sports", image: ("assets/images/sports.avif")),
    CategoryModel(name: "Technology", image: ("assets/images/technology.jpeg")),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index) {
        return CategoryCard(
          category: categories[index],
        );
      } ),
    );
  }
}
