import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mealsapp/courses.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF817400),
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
        leading: IconButton(
          icon: Image.asset('assets/images/Less Than.png'),
          onPressed: () {},
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
          _buildContainerWithImage('Soups'),
          SizedBox(height: 16), 
          _buildContainerWithImage('Soups'),
          SizedBox(height: 16), 
          _buildContainerWithImage('Soups'),
          SizedBox(height: 16),
          _buildContainerWithImage('Soups'),
          SizedBox(height: 16), 
          _buildContainerWithImage('Soups'),
          SizedBox(height: 16), 
          _buildContainerWithImage('Soups'),
          SizedBox(height: 16), 
          _buildContainerWithImage('Soups'),
          SizedBox(height: 16), 
          _buildContainerWithImage('Soups'),
          SizedBox(height: 16), 
          _buildContainerWithImage('Soups'),
          SizedBox(height: 16), 
          _buildContainerWithImage('Soups'),
        ],
      
      )),
    );
    

  }

  Widget _buildContainerWithImage(String text) {
    return Stack(
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
          top: 0,
          right: 0,
          child: Container(
            width: 61,
            height: 51,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Rectangle 8.png"),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}