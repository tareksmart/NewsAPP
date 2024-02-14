import 'package:flutter/widgets.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
    required this.categoryList,
  });

  final List<Widget> categoryList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
        return categoryList[index];
      }),
    );
  }
}
