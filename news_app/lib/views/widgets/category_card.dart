import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/views/category_view.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 100,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return CategoryView(
                  categoryName: categoryModel.categoryName,
                );
              },
            ),
          );
        },
        child: Card(
          color: Colors.blueAccent,
          elevation: 5,
          child: Stack(
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    categoryModel.imageName,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Center(
                  child: Text(
                categoryModel.categoryName,
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w800,
                    fontSize: 16),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
