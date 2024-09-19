import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Search',
              style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
              color: Colors.grey,
              ),
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text('everyone flies... some fly longer than other',
          style: TextStyle(color: Colors.grey[600]),),
        ),
        //hot picks
        Row(
          children: [
          Text(
            'Hot Picks 🙀🔥',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            ),
            ),
          Text(
            'See All', 
            style:
             TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),)
          ],
        )
      ],
    );
  }
}