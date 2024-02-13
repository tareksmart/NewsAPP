import 'package:flutter/material.dart';

class HeadLineCard extends StatelessWidget {
  const HeadLineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://cdn.iview.abc.net.au/thumbs/1200/nu/NU2402V_6593459a734a4_1920.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'hello from fox news gaza that all display the criminal of netiaho criminal',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const Text(
            'hello from fox news gaza that all display the criminal of netiaho criminal',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style:  TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
