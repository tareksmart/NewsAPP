import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/HeadLine_card.dart';

class HeadLineScrollView extends StatelessWidget {
  HeadLineScrollView({super.key, required this.headLineCard});
  final HeadLineCard headLineCard;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      
        itemCount: 10,
        itemBuilder: (context, index) {
          return headLineCard;
        });
  }
}
