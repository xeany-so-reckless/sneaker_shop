import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home_page.dart';


class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('lib/images/pngwing.com.png',
                height: 240,
                ),
              ),
              const SizedBox(height: 60,),        
          
              //title
              const Text(
                'Just Do It',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                ),
          
              const SizedBox(height: 24,),
          
              //sub title
              const Text(
                'Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
                ),

                const SizedBox(height: 60,),
          
              //start new button
              GestureDetector(
                onTap: () => Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                    ),
                    ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(25),
                  child: const Center(
                    child: const Text(
                      'Shop Now', 
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}