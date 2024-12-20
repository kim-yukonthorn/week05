import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:week05/components/food_card.dart';
import 'package:week05/components/food_item.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<dynamic> _popularFood = [];
  List<dynamic> _food = [];

  Future<void> loadPopularFood() async {
    final String response =
        await rootBundle.loadString('assets/popularFood.json');
    final data = json.decode(response);
    setState(() {
      _popularFood = data;
    });
  }

  Future<void> loadFood() async {
    final String response = await rootBundle.loadString('assets/food.json');
    final data = json.decode(response);
    setState(() {
      _food = data;
    });
  }

  @override
  void initState() {
    super.initState();
    loadPopularFood();
    loadFood();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://instagram.fbkk30-1.fna.fbcdn.net/v/t51.29350-15/426580865_2081437708883884_2970122969327701860_n.jpg?stp=dst-jpg_e35_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyLmYyOTM1MC5kZWZhdWx0X2ltYWdlIn0&_nc_ht=instagram.fbkk30-1.fna.fbcdn.net&_nc_cat=104&_nc_oc=Q6cZ2AGCXC9VQFOX37J9LU5RT-aMDAn6p6XbUBJT9_uCyDntLx1oxJk9MnfXTvI2DzD199E&_nc_ohc=1KuDCQgIlXIQ7kNvgE4n77b&_nc_gid=dc13154982c24af19ccb2ed7057547f4&edm=AP4sbd4BAAAA&ccb=7-5&ig_cache_key=MzI5OTcwMjc5ODQ2MzU2MzQ1OQ%3D%3D.3-ccb7-5&oh=00_AYBLHJ8S6dQzuh2NHW6cbp7__syv4F1ThGhP1MIVhVmPKg&oe=676B01FE&_nc_sid=7a9f4b'),
              radius: 20,
            ),
            SizedBox(width: 10),
            Column(
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  "SE#12",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Spacer(),
            Icon(Icons.shopping_basket_outlined)
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Balance",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "\$20,000",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Spacer(),
                Icon(
                  Icons.add_box,
                  color: Colors.orange.shade800,
                  size: 30,
                )
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                Text(
                  "Popular food",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "see more",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _popularFood.length,
                itemBuilder: (context, index) {
                  return FoodCard(
                      imageUrl: _popularFood[index]['imageUrl'],
                      title: _popularFood[index]['title'],
                      subtitle: _popularFood[index]['subtitle'],
                      price: _popularFood[index]['price'],
                      rating: _popularFood[index]['rating']);
                },
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 40, // Adjust the height to your preference
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Food Menu',
                  prefixIcon: const Icon(Icons.search,
                      size: 20), // Adjust icon size if needed
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10), // Adjust padding
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade100,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Food Menu Section
            const Text(
              'Food menus',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _food.length,
              itemBuilder: (context, index) {
                return FoodMenuItem(
                    imageUrl: _food[index]['imageUrl'],
                    title: _food[index]['title'],
                    price: _food[index]['price'],
                    rating: _food[index]['rating']);
              },
            ),
          ],
        ),
      ),
    );
  }
}
