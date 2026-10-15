import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';
class LoginScreen extends StatelessWidget {
  final String userType;

  const LoginScreen({
    super.key,
    required this.userType,
  });

  @override
  Widget build(BuildContext context) {
    final bool isShopkeeper = userType == 'Shopkeeper';

    return Scaffold(
      backgroundColor: const Color(0xFF001722),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Image.asset(
                'assets/images/login_logo.png',
                height: 80,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 30),

              Text(
                '$userType Login',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              Text(
                isShopkeeper
                    ? 'Login to manage your shop'
                    : 'Login to explore your local marketplace',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 35),

              const CustomTextField(
                label: 'Email or Phone Number',
                icon: Icons.person_outline,
              ),

              const SizedBox(height: 20),

              const CustomTextField(
                label: 'Password',
                icon: Icons.lock_outline,
                obscureText: true,
              ),

              const SizedBox(height: 12),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xFFFFC928),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              CustomButton(
                text: 'Login',
                onPressed: () {},
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(color: Colors.white70),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0xFFFFC928),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}