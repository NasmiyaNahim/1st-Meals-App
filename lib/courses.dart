import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Container Example'),
        // actions: [
        //   ClipOval(
        //     child: SizedBox(
        //       width: 40,
        //       height: 40,
        //       child: Image.asset(
        //         'assets/images/profile.gif',
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //   ),
        // ],
        leading: IconButton(
          icon: Image.asset('assets/images/Less Than.png'),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Container(
          width: 360,
          height: 1181,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 73,
                  width: 360,
                  decoration: BoxDecoration(
                    color: Color(0xFF817400),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          // Add functionality for leading icon onPressed
                        },
                      ),
                      Row(
                        children: [
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
                          // Add more action buttons if needed
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Other widgets inside the container
            ],
          ),
        ),
      ),
    );
  }
}      

//     );
//   }
// }