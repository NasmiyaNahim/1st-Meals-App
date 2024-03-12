import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF817400),
        leading: IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
        actions: [
          Container(
  width: 39,
  height: 39,
  decoration: ShapeDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/profile.gif"),
      fit: BoxFit.fill,
    ),
    shape: OvalBorder(),
  ),
)

          //Image.asset('assets/images/profile.gif'),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 213, 213, 200),
      body: Column(
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
                'Select a Outlet Near You..!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
  width: 555,
  height: 36,
  decoration: ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  child: Row(
    children: [
      Container(
  width: 24,
  height: 24,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/Search.png"),
      fit: BoxFit.contain,
    ),
  ),
),

      SizedBox(width: 8), // Add spacing between the image and text
      Text(
        'Search for your location !',
        style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontSize: 15,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
      ),
    ],
  ),
)

        ],
      ),
    );
  }
}
