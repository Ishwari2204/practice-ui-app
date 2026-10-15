import 'package:flutter/material.dart';
import 'login_screen.dart';
class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001722),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 20),

              Image.asset(
                'assets/images/lokatt_logo_fn.png',
                height: 60,
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox(
                    height: 60,
                    child: Center(
                      child: Text(
                        'LOKATT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 30),

              const Text(
                'Welcome to Lokatt',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Choose how you want to use the app',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 35),

              Image.asset(
                'assets/images/role_selection_graphic.png',
                height: 200,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox(
                    height: 200,
                    child: Center(
                      child: Icon(
                        Icons.people,
                        color: Colors.white,
                        size: 100,
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 35),

              _roleButton(
                    context,
                    'Shopkeeper',
                    'assets/images/shopkeeper_icon.png',
                  ),

              const SizedBox(height: 20),

              _roleButton(
                context,
                'Customer',
                'assets/images/customer_icon.png',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _roleButton(
  BuildContext context,
  String title,
  String imagePath,
) {
  return SizedBox(
    width: double.infinity,
    height: 65,
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(
              userType: title,
            ),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFFC928),
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 40,
            width: 40,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward),
        ],
      ),
    ),
  );
}
}