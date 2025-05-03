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
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   HeadTagUtil.setTitle('Privacy Policy | Delux - Earn & Grow Income');
    //   HeadTagUtil.add("name", "author", "Delux Team");
    //   HeadTagUtil.add("property", "og:url", "Add og:url");
    //   HeadTagUtil.setHead(
    //     title: "Privacy Policy | Delux - Earn & Grow Income",
    //     keywords: [
    //       "Delux",
    //       "Delux Registration",
    //       "Delux App",
    //       "Delux Income",
    //       "delux coupon",
    //       "register delux",
    //       "join delux",
    //       "about delux",
    //       "delux telegram",
    //       "delux tiktok",
    //       "delux agent",
    //       "delux agent registration",
    //       "delux agent registration link",
    //       "delux.com.ng",
    //       "delux.com",
    //       "delux.com.ng registration",
    //     ],
    //     description:
    //         "Delux is a platform that allows you to earn money online effortlessly. Join us today and start your journey towards financial freedom.",
    //     imageUrl: "/assets/img/icon.png",
    //     url: "https://deluxregistration.com",
    //   );
    // });
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
                        'Delux does not collect, store, or share any personal data from its users.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 24),
                      Text(
                        '2. How Delux Works',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Delux is a platform that connects individuals to social media platforms to help them monetize their social media accounts by completing simple online tasks.',
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
                        'While using Delux, you may interact with third-party platforms (e.g., social media websites). We encourage you to review their privacy policies as they operate independently from Delux.',
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
                const FooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
