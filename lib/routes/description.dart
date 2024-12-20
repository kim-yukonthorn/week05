import 'package:flutter/material.dart';

class MenuDescription extends StatelessWidget {
  final String foodName;
  final String imageUrl;
  final String price;
  final String rating;
  final List desc = [
    "Our Spaghetti menu offers a delicious selection of pasta dishes, crafted with high-quality ingredients and bursting with flavor. Enjoy the classic Spaghetti Bolognese, featuring a rich and hearty meat sauce slow-cooked with tomatoes and aromatic herbs, or savor the creamy indulgence of Spaghetti Carbonara, complete with crispy pancetta and a touch of Parmesan. For seafood lovers, our Seafood Spaghetti brings together fresh catches in a light tomato, Spaghetti Aglio e Olio, with its perfect blend of garlic, olive oil, chili flakes, and parsley, is sure to delight. Whatever your taste, our spaghetti dishes are prepared to satisfy and impress. 🍝",
    "Our Pad Thai menu brings the iconic taste of Thailand to your plate. Enjoy the perfect balance of sweet, sour, and savory in stir-fried rice noodles tossed with tamarind sauce, tofu, and fresh bean sprouts. Try our Classic Pad Thai with shrimp for a flavorful twist or go vegetarian with our Tofu Pad Thai, packed with vibrant flavors. Each dish is topped with roasted peanuts and lime for a refreshing finish. A timeless favorite that never disappoints! 🍜",
    "Our Som Tum menu brings you the vibrant and irresistible flavors of traditional Thai cuisine, made with the freshest ingredients for an authentic experience. Try the classic Som Tum Thai, a zesty green papaya salad mixed with lime juice, fish sauce, and roasted peanuts, perfectly balancing sweet, sour, and spicy. For those who enjoy a seafood twist, our Som Tum Goong Sod adds juicy fresh shrimp for an extra layer of flavor. Meat lovers will adore Som Tum Kor Moo Yang, pairing the tangy salad with grilled pork neck. For an adventurous palate,  Whatever your preference, our Som Tum is a true delight for your taste buds! 🥗",
    "Our Vegetable Salad menu features fresh and flavorful options for every taste. Try our Classic Garden Salad, a mix of crisp greens and colorful veggies with a tangy vinaigrette. For a hearty twist, enjoy our Grilled Vegetable Salad, blending smoky zucchini and bell peppers with a balsamic glaze. Craving something unique? Our Sesame Ginger Salad adds an Asian-inspired kick. Each dish is crafted to be healthy, delicious, and satisfying. 🥗",
    "Our Hawaiian Pizza is a tropical delight that combines savory and sweet flavors in every bite. Enjoy a crispy crust topped with rich tomato sauce, melted mozzarella, juicy pineapple chunks, and smoky ham. The perfect balance of sweetness and saltiness makes this pizza a favorite for any occasion. A slice of paradise you won’t want to miss! 🍍🍕",
  ];

  MenuDescription(
      {super.key,
      required this.foodName,
      required this.imageUrl,
      required this.price,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://instagram.fbkk30-1.fna.fbcdn.net/v/t51.29350-15/426580865_2081437708883884_2970122969327701860_n.jpg?stp=dst-jpg_e35_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyLmYyOTM1MC5kZWZhdWx0X2ltYWdlIn0&_nc_ht=instagram.fbkk30-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=-wdDtxRCJBAQ7kNvgFz8jCk&_nc_gid=6d629b82521d46008c85ee0920a48022&edm=AP4sbd4BAAAA&ccb=7-5&ig_cache_key=MzI5OTcwMjc5ODQ2MzU2MzQ1OQ%3D%3D.3-ccb7-5&oh=00_AYAEW2_TpSgMKynw5oS5OK_4wEADHqrsZBW6a9ZkP3NMrw&oe=6761C77E&_nc_sid=7a9f4b'), // Replace with actual image
              radius: 20,
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  'Phachara Aunkitti',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon:
                const Icon(Icons.shopping_basket_outlined, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            // Header Section
            const SizedBox(height: 10),
            const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Balance',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      '\$20,000',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.add_box,
                  color: Color.fromARGB(255, 237, 113, 77),
                  size: 32,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                  ),
                ),
                Text(
                  foodName,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 24),
                    Text(rating),
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageUrl,
                height: 225,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
                "Our Pad Thai menu brings the iconic taste of Thailand to your plate. Enjoy the perfect balance of sweet, sour, and savory in stir-fried rice noodles tossed with tamarind sauce, tofu, and fresh bean sprouts. Try our Classic Pad Thai with shrimp for a flavorful twist or go vegetarian with our Tofu Pad Thai, packed with vibrant flavors. Each dish is topped with roasted peanuts and lime for a refreshing finish. A timeless favorite that never disappoints! 🍜"),
            Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    const Text("Price"),
                    Text(price),
                  ],
                )),
            // const SizedBox(
            //     width: double.infinity,
            //     child: Text(
            //       "Price:",
            //       textAlign: TextAlign.end,
            //     )),
            // const SizedBox(
            //     width: double.infinity,
            //     child: Text(
            //       "\$25",
            //       textAlign: TextAlign.end,
            //     )),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 130, vertical: 5),
                backgroundColor: const Color.fromARGB(255, 237, 113, 77),
                foregroundColor: Colors.white,
              ),
              child: const Text("Add to cart"),
            )
          ],
        ),
      ),
    );
  }
}
