import 'package:flutter/material.dart';
import 'package:week05/routes/description.dart';

class FoodMenuItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String rating;

  FoodMenuItem(
      {required this.imageUrl,
      required this.title,
      required this.price,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MenuDescription(
                    foodName: title,
                    imageUrl: imageUrl,
                    price: price,
                    rating: rating,
                  )),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageUrl,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(price),
                      const SizedBox(width: 8),
                      const Icon(Icons.star, color: Colors.yellow, size: 16),
                      const SizedBox(width: 4),
                      Text(rating),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.add_box,
              color: Color.fromARGB(255, 237, 113, 77),
              size: 32,
            ),
          ],
        ),
      ),
    );
  }
}
