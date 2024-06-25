import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/login.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 10,
            top: 30,
            child: IconButton(
              style: IconButton.styleFrom(backgroundColor: Colors.white24),
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'ورود به حساب کاربری',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'normal',
                    fontSize: 24,
                  ),
                ),

                const SizedBox(height: 20),

                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white24,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      label: const Text(
                        'نام کاربری',
                        style: TextStyle(color: Colors.white, fontFamily: 'normal'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white24,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      label: const Text(
                        'رمز عبور',
                        style: TextStyle(color: Colors.white, fontFamily: 'normal'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, fixedSize: Size(MediaQuery.of(context).size.width, 45)),
                  onPressed: () {},
                  child: const Text(
                    'احراز هویت',
                    style: TextStyle(
                      fontFamily: 'normal',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
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
