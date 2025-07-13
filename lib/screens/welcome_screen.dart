import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../widgets/icon_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fullbackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 20),
              Column(
                children: const [
                  Text(
                    'HealthCare Bot',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.buttoncolor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Your Friendly Medicine Reminder\n& Health Assistant',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.buttoncolor,
                    ),
                  ),
                ],
              ),
              Image.asset('assets/welcome_1.png', height: 220),
              const Text(
                'Caring for you, every dose at time.',
                style: TextStyle(fontSize: 16, color: AppColors.buttoncolor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttoncolor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 12,
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                  const SizedBox(width: 20),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.buttoncolor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 12,
                      ),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(color: AppColors.buttoncolor),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 10,
                children: const [
                  IconText(
                    iconAsset: 'assets/tabler_clock-filled.svg',
                    text: 'Stay on Track',
                  ),
                  IconText(
                    iconAsset: 'assets/icon-park-solid_pills.svg',
                    text: 'Never Miss a Dose',
                  ),
                  IconText(
                    iconAsset: 'assets/maki_doctor.svg',
                    text: 'Health, Simplified',
                  ),
                ],
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
