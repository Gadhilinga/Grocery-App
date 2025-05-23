import 'package:flutter/material.dart';
import 'package:grocery/common/common_header_title.dart';
import 'package:grocery/grocery_view/colors.dart';
import 'package:grocery/grocery_view/grocery_home_page.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: onboardbackground,
            width: size.width,
            height: size.height * 0.6,
            child: Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Image.network(
                "https://raw.githubusercontent.com/Nabinji/Flutter_UI-Design/main/assets/grocery/onboarding_profile.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 15,),
          const CommonHeaderTitle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            title: "Buy Groceries\nEasilly With Us",
          ),
          const SizedBox(height: 10),
          const CommonHeaderTitle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
            title: 'Listen podcast and open your\nworld with this application',
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreenGrocery()),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: gradientColor,
              ),
              child: CommonHeaderTitle(
                title: 'Get Started',

                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
