import 'package:flutter/material.dart';
import 'package:mealsapp/courses.dart';
import 'package:mealsapp/apetizers.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: const Color(0xFF827500),
        actions: [
          ClipOval(
            child: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset(
                'assets/images/profile.gif',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Apetizers()));
          },
          child: Image.asset(
            'assets/images/Less Than.png',
            width: 40,
            height: 40,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(width: 20),
                Image.asset(
                  "assets/images/Rectangle 16.png",
                  width: 140,
                  height: 140,
                ),
                const SizedBox(width: 50),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset(
                    "assets/images/Rectangle 17.png",
                    width: 140,
                    height: 140,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 26.0),
              child: Text(
                "Hot & Sour Chicken Soup",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 26.0),
                    child: Row(
                      children: [
                        Text(
                          "Chinese Cuisine", // Changed text here
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF820046),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset(
                    "assets/images/Frame 17.png",
                    width: 36,
                    height: 36,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 0.20),
            const Padding(
              padding: EdgeInsets.only(left: 26), // Adjust left padding
              child: Text(
                "100% Non-Veg",
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF820046),
                ),
              ),
            ),
            const SizedBox(height: 5), // Adjust the height here
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF827500),
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 326,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Hot and Sour Chicken Soup: A fiery blend of tender chicken, mushrooms, bamboo shoots, carrots, and bell peppers in a rich broth. With a tantalizing mix of soy sauce, rice vinegar, and chili paste, this soup delivers a perfect balance of heat and tang. A deliciously satisfying culinary adventure in every spoonful.\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        "Add this Item",
                        style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF820046),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 90,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFF827500),
                          border: Border.all(
                            color: Colors.white,
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                // Handle minus button tap
                              },
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            const VerticalDivider(
                              color: Colors.white,
                              thickness: 1,
                              width: 10, // Reduced width
                            ),
                            const Text(
                              '3',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const VerticalDivider(
                              color: Colors.white,
                              thickness: 1,
                              width: 10, // Reduced width
                            ),
                            InkWell(
                              onTap: () {
                                // Handle plus button tap
                              },
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 80),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Courses()));
                      },
                      child: Container(
                        width: 256,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff817400),
                        ),
                        child: const Center(
                          child: Text(
                            "Add More Dishes",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}