import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/headLine_scrollView_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          HeadLineScrollViewBuilder(categoryName: categoryName),
        ],
      ),
    );
  }
}
