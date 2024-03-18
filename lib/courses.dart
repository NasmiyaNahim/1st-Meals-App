import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mealsapp/account_screen.dart';
import 'package:mealsapp/apetizers.dart';
import 'package:mealsapp/courses.dart';
import 'package:mealsapp/menu.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF817400),
        actions: [
          ClipOval(
            child:GestureDetector(
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountScreen()),
            );
          },
            child: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset(
                'assets/images/profile.gif',
                fit: BoxFit.cover,
              ),
            ),
          ),),
        ],
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Menu()),
            );
          },
          child: IconButton(
            icon: Image.asset('assets/images/Less Than.png'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Menu()),
              );
            },
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 213, 213, 205),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 16.0,
                left: 16.0,
                right: 16.0,
                bottom: 16.0,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Select a Menu Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            _buildContainerWithImage('Soups', 'assets/images/Rectangle 8.png',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Apetizers()),
              );
            }),

            SizedBox(height: 16),
            _buildContainerWithImage(
                'Starters', 'assets/images/Rectangle 8.png', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Apetizers()),
              );
            }),

            SizedBox(height: 16),
            _buildContainerWithImage(
                'Combo Meals', 'assets/images/Rectangle 8.png', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Apetizers()),
              );
            }),
            SizedBox(height: 16),
            _buildContainerWithImage(
                'Jumbo Meals', 'assets/images/Rectangle 8.png', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Apetizers()),
              );
            }),
            SizedBox(height: 16),
            _buildContainerWithImage('Bread items', 'assets/images/bread.png',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Apetizers()),
              );
            }),
            SizedBox(height: 16),
            _buildContainerWithImage('Rice & Noodles', 'assets/images/rice.png',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Apetizers()),
              );
            }),
            SizedBox(height: 16),
            _buildContainerWithImage('Curry items', 'assets/images/curry.png',
                () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Apetizers()),
              );
            }),
            SizedBox(height: 16),
            _buildContainerWithImage('Salads', 'assets/images/salad.png', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Apetizers()),
              );
            }),
            SizedBox(height: 16),
            _buildContainerWithImage(
                'Continental', 'assets/images/mixeditem.png', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Apetizers()),
              );
            }),
            SizedBox(height: 16),
            _buildContainerWithImage(
                'Traditional', 'assets/images/mixeditem.png', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Apetizers()),
              );
            }),

            SizedBox(height: 16),
            // Add more containers with different images here
          ],
        ),
      ),
    );
  }

  Widget _buildContainerWithImage(
      String text, String imagePath, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          Container(
            width: 325,
            height: 60,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: (60 - 51) / 2,
            right: 5,
            child: Container(
              width: 61,
              height: 51,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
