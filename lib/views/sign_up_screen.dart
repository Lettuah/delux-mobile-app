import "package:delux/widgets/custom_elevated_button.dart";
import "package:flutter/material.dart";
import "package:delux/widgets/background_gradient_widget.dart";
import "package:get/get.dart";
import "package:url_launcher/url_launcher.dart";

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isBuyingPermit = false;

  String? _selectedCountry;
  String? _selectedPackage;
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _permitController = TextEditingController();

  void _handleTelegramButtonClick() {
    final form = _formKey.currentState!;
    setState(() => _isBuyingPermit = true); // Skip permit validation
    // Temporarily clear the permit field validator
    final oldPermitValue = _permitController.text;
    _permitController.text = "dummy"; // trick validator
    bool isValid = form.validate();
    _permitController.text = oldPermitValue;

    if (!isValid) {
      // Show errors except permit
      return;
    }
    setState(() => _isBuyingPermit = false); // Reset after validation
    _launchTelegramWithFormData();
  }

  void _launchTelegramWithFormData() async {
    final fullName = _fullNameController.text;
    final email = _emailController.text;
    final username = _usernameController.text;
    final phone = _phoneController.text;
    final package = _selectedPackage ?? "Not Selected";
    final country = _selectedCountry ?? "Not Selected";
    final password = "*" * _passwordController.text.length;

    final message = Uri.encodeComponent(
      '''Hello, I want to buy Delux Job Permit Code.\n\nFull Name: $fullName\nEmail: $email\nUsername: $username\nPhone: $phone\nPACKAGE: $package\nCountry: $country\nPassword: $password''',
    );

    final url = "https://t.me/deluxcompanyaccount?text=$message";

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Could not open Telegram")));
    }
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _permitController.dispose();
    super.dispose();
  }

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Get.toNamed('home');
                        },
                        label: const Text('Back'),
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        _buildInputField(
                          label: "Full Name",
                          icon: Icons.person,
                          controller: _fullNameController,
                        ),
                        const SizedBox(height: 16),
                        _buildInputField(
                          label: "Email Address",
                          icon: Icons.email,
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                        ),
                        const SizedBox(height: 16),
                        _buildInputField(
                          label: "Username",
                          icon: Icons.account_circle,
                          controller: _usernameController,
                        ),
                        const SizedBox(height: 16),
                        _buildInputField(
                          label: "Phone Number",
                          icon: Icons.phone,
                          keyboardType: TextInputType.phone,
                          controller: _phoneController,
                        ),
                        const SizedBox(height: 16),
                        _buildDropdownField(
                          label: "Select Package",
                          icon: Icons.inventory,
                          items: [
                            "Normal Plan (₦8,500)",
                            "Delux Alpha (₦12,000)",
                          ],
                          selectedValue: _selectedPackage,
                          onChanged: (value) {
                            setState(() {
                              _selectedPackage = value;
                            });
                          },
                        ),
                        const SizedBox(height: 16),
                        _buildDropdownField(
                          label: "Select Country",
                          icon: Icons.flag,
                          items: [
                            "Nigeria",
                            "Ghana",
                            "Uganda",
                            "Cameroon",
                            "Kenya",
                          ],
                          selectedValue: _selectedCountry,
                          onChanged: (value) {
                            setState(() {
                              _selectedCountry = value;
                            });
                          },
                        ),
                        const SizedBox(height: 16),
                        _buildInputField(
                          label: "Password",
                          icon: Icons.lock,
                          isPassword: true,
                          controller: _passwordController,
                        ),
                        const SizedBox(height: 16),
                        _buildInputField(
                          label: "Job Permit Code",
                          icon: Icons.card_giftcard,
                          controller: _permitController,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Don\'t  have permit code?',
                              style: TextStyle(height: -1),
                            ),
                            TextButton(
                              onPressed: () {
                                _handleTelegramButtonClick();
                              },
                              child: const Text(
                                'Click Here',
                                style: TextStyle(
                                  height: -1,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                        SizedBox(
                          width: double.infinity,
                          child: CustomElevatedButton(
                            buttonTitle: "Create Account",
                            onClick: () {
                              if (_formKey.currentState!.validate()) {
                                // Proceed with sign up
                              } else {
                                debugPrint("Form is invalid.");
                              }
                            },
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
    TextEditingController? controller,
  }) {
    return TextFormField(
      controller: controller,
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
      validator: (value) {
        if (value == null || value == "") {
          return "$label is required";
        }

        // Full Name Validation
        if (label == "Full Name") {
          final words = value.trim().split(RegExp(r'\s+'));
          if (value.trim().length < 10) {
            return "Full Name must be at least 10 characters long";
          }
          if (words.length < 2 || words.length > 3) {
            return "Enter at least two names (Surname and FirstName), max of three";
          }
        }

        // Email Validation
        if (label == "Email Address") {
          final emailRegex = RegExp(r'^[\w\.-]+@[\w\.-]+\.\w{2,}$');
          if (!emailRegex.hasMatch(value.trim())) {
            return "Enter a valid email address";
          }
        }

        // Username Validation
        if (label == "Username") {
          if (value.contains(RegExp(r'\s'))) {
            return "Username must not contain spaces";
          }
        }

        // Phone Number Validation
        if (label == "Phone Number") {
          final cleaned = value.replaceAll(
            RegExp(r'\D'),
            '',
          ); // remove non-digits
          if (cleaned.length != 11) {
            return "Phone number must be exactly 11 digits";
          }
          if (!cleaned.startsWith("0") || cleaned[2] != '0') {
            return "Must be valid phone number in this format: 07012345678";
          }
        }

        // Password Validation
        if (label == "Password") {
          if (value.length < 6) {
            return "Password must be at least 6 characters long";
          }
        }

        // Only validate permit code when not buying permit
        if (label == "Job Permit Code" && !_isBuyingPermit) {
          return "The Job Permit Code entered is not valid.";
        }
        return null;
      },
    );
  }

  Widget _buildDropdownField({
    required String label,
    required IconData icon,
    required List<String> items,
    String? selectedValue,
    required Function(String?) onChanged,
  }) {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      onChanged: onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "$label is required";
        }
        return null;
      },
      dropdownColor: Colors.black87,
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
      items:
          items.map((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
    );
  }
}
