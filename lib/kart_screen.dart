import 'package:flutter/material.dart';
import 'package:mealsapp/account_screen.dart';
import 'package:mealsapp/apetizers.dart';
import 'package:mealsapp/home.dart';
import 'package:mealsapp/payment.dart';

class KartPage extends StatelessWidget {
  const KartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildItem(String title, String subtitle, String qty) {
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        height: 122,
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            subtitle,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Text(
                            'Qty',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 35),
                          Container(
                            width: 80,
                            height: 35,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 223, 223, 223),
                              border: Border.all(
                                color: Colors.black,
                                width: 0.5,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  '-',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  width: 1,
                                  color: Colors.black,
                                ),
                                Text(
                                  qty,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  width: 1,
                                  color: Colors.black,
                                ),
                                const Text(
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
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 107,
                  height: 106,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Home()));
                      },
                      child: Image.asset(
                        'assets/images/Rectangle 8.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Positioned(
              right: 120,
              bottom: 0,
              child: Text(
                'Remove Item',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF817400),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:GestureDetector(
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountScreen()),
            );
          },
            child: ClipOval(

              
              child: Image.asset(
                'assets/images/profile.gif',
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
          ),
      ),],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Apetizers()));
            },
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
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            buildItem('Lollipop ', 'Chicken', '3'),
            const SizedBox(height: 30),
            buildItem('Alfaham ', 'Full Chicken', '1'),
            const SizedBox(height: 30),
            buildItem('Biriyani ', 'Chicken', '2'),
            const SizedBox(height: 30),
            buildItem('Biriyani ', 'Beef', '1'),
            const SizedBox(height: 50),
            Center(
              child: SizedBox(
                width: 256,
                height: 44,
                child: Container(
                  decoration: ShapeDecoration(
                    color: const Color(0xFF817400),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: GestureDetector(
                    onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PaymentScreen()));
                    },
                      child: const Text(
                        'CONTINUE to PAYMENT',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
