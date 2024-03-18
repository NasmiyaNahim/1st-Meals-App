import 'package:flutter/material.dart';
import 'package:mealsapp/account_screen.dart';
import 'package:mealsapp/courses.dart';
import 'package:mealsapp/item_screen.dart';


class Apetizers extends StatelessWidget {
  const Apetizers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF817400),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child:GestureDetector(
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountScreen()),
            );
          },
              child: Image.asset(
                'assets/images/profile.gif',
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
          ),),
        ],
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Courses()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/Less Than.png',
              width: 40,
              height: 40,
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 213, 213, 205),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Appetizers',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            soupContainer(context),
            SizedBox(height: 20),
            soupContainer(context),
            SizedBox(height: 20),
            soupContainer(context),
            SizedBox(height: 20),
            soupContainer(context),
            SizedBox(height: 20),
            soupContainer(context),
            SizedBox(height: 20),
            soupContainer(context),
            SizedBox(height: 20),
            soupContainer(context),
            SizedBox(height: 20),
            SizedBox(height: 80), // Adjust the height as needed
            Column(
              children: [
                Text(
                  'Powered by',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Image.asset('assets/images/Imiot.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget soupContainer(BuildContext context) {
    return GestureDetector(
    onTap: () {
       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ItemDetails()),
            );
          },
    
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hot & Sour ', // Placeholder for the soup name
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 0),
                      Text(
                        'Chicken', // Placeholder for the soup type
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Qty',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 35),
                      Container(
                        width: 80,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 221, 221, 221),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5, // Thin border
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '-',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              width: 1,
                              height: 40,
                              color: Colors.black,
                            ),
                            Text(
                              '3',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              width: 1,
                              height: 40,
                              color: Colors.black,
                            ),
                            Text(
                              '+',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            SizedBox(
              width: 80,
              height: 80,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/images/Rectangle 8.png', // Placeholder for the image path
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    ),);
  }
}
