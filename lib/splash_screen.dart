import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mealsapp/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF817400),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 138,
                height: 100,
                child: Image.asset('assets/images/logo.gif')),
            const Text(
              'JustEat',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 250,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              child: Container(
                width: 278,
                height: 38,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const SizedBox(
                  width: 192,
                  height: 14.55,
                  child: Padding(
                    padding: EdgeInsets.only(left: 50, top: 8),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Click here to',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'CONTINUE!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            const Text(
              'Powered by',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            Image.asset('assets/images/Imiot.png'),
          ],
        ),
      ),
    );
  }
}
