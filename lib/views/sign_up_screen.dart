import "package:delux/widgets/custom_elevated_button.dart";
import "package:flutter/material.dart";
import "package:delux/widgets/background_gradient_widget.dart";

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundGradientWidget(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Form(
                    child: Column(
                      children: [
                        _buildInputField(
                          label: "Full Name",
                          icon: Icons.person,
                        ),
                        const SizedBox(height: 16),
                        _buildInputField(
                          label: "Email Address",
                          icon: Icons.email,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 16),
                        _buildInputField(
                          label: "Username",
                          icon: Icons.account_circle,
                        ),
                        const SizedBox(height: 16),
                        _buildInputField(
                          label: "Phone Number",
                          icon: Icons.phone,
                          keyboardType: TextInputType.phone,
                        ),
                        const SizedBox(height: 16),
                        _buildInputField(
                          label: "Select Country",
                          icon: Icons.flag,
                        ),
                        const SizedBox(height: 16),
                        _buildInputField(
                          label: "Password",
                          icon: Icons.lock,
                          isPassword: true,
                        ),
                        const SizedBox(height: 16),
                        _buildInputField(
                          label: "Coupon Code (optional)",
                          icon: Icons.card_giftcard,
                        ),
                        const SizedBox(height: 32),
                        SizedBox(
                          width: double.infinity,
                          child: CustomElevatedButton(
                            buttonTitle: "Create Account",
                            onClick: () {},
                            padding: const EdgeInsets.all(20),
                            fontSize: 20,
                            buttonColor: Colors.amber,
                            textColor: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required IconData icon,
    bool isPassword = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextFormField(
      cursorColor: Colors.amber,
      obscureText: isPassword,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        prefixIcon: Icon(icon, color: Colors.white),
        filled: true,
        fillColor: Colors.white.withValues(alpha: 0.1),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white70),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white38),
        ),
      ),
    );
  }
}
