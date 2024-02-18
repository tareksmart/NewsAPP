import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/views/widgets/HeadLine_card.dart';
import 'package:news_app/views/widgets/category_card.dart';
import 'package:news_app/views/widgets/category_listView.dart';
import 'package:news_app/views/widgets/headLine_scrollView.dart';
import 'package:news_app/views/widgets/headLine_scrollView_builder.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<Widget> categoryList = [
    Categorycard(
      categoryModel:
          CategoryModel(categoryName: 'sports', imageName: 'assets/sports.png'),
    ),
    Categorycard(
      categoryModel: CategoryModel(
          categoryName: 'business', imageName: 'assets/bussness.jpg'),
    ),
    Categorycard(
      categoryModel: CategoryModel(
          categoryName: 'Entertainment', imageName: 'assets/Entertainment.png'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloude',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                  color: Colors.amber),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView(categoryList: categoryList)),
            HeadLineScrollViewBuilder(),
          ],
        ),
      ),
    );
  }
}


