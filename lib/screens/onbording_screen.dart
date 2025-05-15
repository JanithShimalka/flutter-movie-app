import 'package:flutter/material.dart';
import 'package:test_app_2/screens/login_page.dart';

class onboarding_Screeen extends StatefulWidget {
  const onboarding_Screeen({super.key});

  @override
  State<onboarding_Screeen> createState() => _onboarding_ScreeenState();
}

class _onboarding_ScreeenState extends State<onboarding_Screeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Find the ",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "leatest and greatest ",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: "movie here",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla in sed risus si',
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => login_page()),
                      );
                    },
                    icon: const Icon(Icons.arrow_forward, color: Colors.white),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.red),
                    ),
                  ),
                ),
                //Spacer(),
                Image(image: AssetImage("Assets/images/woman.png")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
