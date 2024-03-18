import 'package:flutter/material.dart';
import 'package:mealsapp/home.dart';
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          
        ),
      ),
      backgroundColor: const Color(0xFFD9D9D9),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 20.0,
              left: 0,
              right: 290.0,
              bottom: 20.0,
            ),
            child: Text(
              'My Profile',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 280.0,
              bottom: 5.0,
            ),
            child: Text(
              'First Name',
              style: TextStyle(
                color: Color(0xFF250231),
                fontSize: 15,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: 0.75,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            width: 350,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 280.0,
              bottom: 5.0,
              ),
            child: Text(
              'Last Name',
              style: TextStyle(
                color: Color(0xFF250231),
                fontSize: 15,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: 0.75,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            width: 350,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 28.0,
                  bottom: 20.0,
                ),
              ),
              Text(
                'Address',
                style: TextStyle(
                  color: Color(0xFF250231),
                  fontSize: 15,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.75,
                ),
              ),
              SizedBox(width: 250),
              Padding(
                padding: EdgeInsets.only(
                  right: 5.0,
                  bottom: 1.0,
                ),
              ),
              Text(
                'Work',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.75,
                ),
              ),
            ],),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            width: 350,
            height: 101,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 30.0,
                  bottom: 20.0,
                ),
              ),
              Text(
                'Change',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF250231),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.60,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],),
            const SizedBox(height: 15,),
          const Row(
            children: [
              SizedBox(width: 340),
              Text(
                'Home',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF250231),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.75,
                ),
              ),
            ],),
          Container(
            margin: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            width: 350,
            height: 101,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 30.0,
                  bottom: 20.0,
                ),
              ),
              Text(
                'change',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF250231),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.60,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],),
          const SizedBox(height: 110),
            GestureDetector(
             onTap: () {
             Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => const Home()),
           );
          },
          child: Container(
            width: 256,
            height: 44,
            decoration: ShapeDecoration(
              color: const Color(0xFF817400),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'CONTINUE to HOME',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: 0.75,
                    ),
                  )
                ],),
          ),
         ),
      ],),
    );
  }
}
