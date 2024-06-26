import 'package:flutter/material.dart';
import 'package:flutter_restaurant_authentication/screens/login_screen.dart';
import 'package:flutter_restaurant_authentication/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'سلام! کاربر عزیز',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'normal',
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'به اپلیکیشن رزرو صبحانه خوش آمدید',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'normal',
                ),
              ),
              const SizedBox(height: 40),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width - 40, 45),
                  side: const BorderSide(color: Colors.white, width: 2),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.white12,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  'ورود به حساب کاربری',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'normal',
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(MediaQuery.of(context).size.width - 40, 45),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SignupScreen()),
                  );
                },
                child: const Text(
                  'ساخت حساب کاربری',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'normal',
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 200),
            ],
          ),
        ],
      ),
    );
  }
}
