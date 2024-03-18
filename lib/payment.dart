import 'package:flutter/material.dart';
import 'package:mealsapp/account_screen.dart';
import 'package:mealsapp/home.dart';
import 'package:mealsapp/kart_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          )),
        ],
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Text(
              'Select a Method of Payment',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          SizedBox(height: 219),
          Center(
            child: Text(
              'Success !',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          SizedBox(height: 19),
          Center(
            child: Text(
              'Payment Successfully Completed',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          SizedBox(height: 170),
          Center(
            child: Column(
              children: [
                Text(
                  'You will be Redirected to Main Menu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(height: 11),
                Text(
                  'or',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              width: 256,
              height: 44,
              decoration: ShapeDecoration(
                color: Color(0xFF817400),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      },
                child: Text(
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}