import "package:delux/app/app.string.dart" as app_string;
import "package:delux/widgets/background_gradient_widget.dart";
import "package:delux/widgets/footer_widget.dart";
import "package:flutter/material.dart";

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundGradientWidget(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Privacy Policy',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            backgroundColor: Colors.amber,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  padding: const EdgeInsets.all(15),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        'Effective Date: 22/02/2025',
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        '1. Information Collection',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '${app_string.appName} does not collect, store, or share any personal data from its users.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 24),
                      Text(
                        '2. How ${app_string.appName} Works',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '${app_string.appName} is a platform that connects individuals to social media platforms to help them monetize their social media accounts by completing simple online tasks.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 24),
                      Text(
                        '3. Third-Party Platforms',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'While using ${app_string.appName}, you may interact with third-party platforms (e.g., social media websites). We encourage you to review their privacy policies as they operate independently from ${app_string.appName}.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 24),
                      Text(
                        '4. Changes to This Policy',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'We may update this Privacy Policy occasionally. Any changes will be reflected here with an updated effective date.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 24),
                      Text(
                        '5. Contact Us',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'If you have any questions or concerns, please contact us using any of our social media handles ',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                FooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
