import 'package:animate_do/animate_do.dart';
import 'package:chatapp/core/constants/asset_images.dart';
import 'package:chatapp/core/themes/colors.dart';
import 'package:chatapp/core/themes/styles.dart';
import 'package:chatapp/features/auth/persentation/views/widgets/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return Login();
      }));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeInUp(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(AssetImages.logo),
                height: 200,
                width: 200,
              ),
              Text(
                "Whats Up",
                style:
                    Styles.textStyle30.copyWith(color: ColorsApp.primaryColor),
              ),
              const SizedBox(
                height: 200,
              ),
              Text(
                "The best chat App of this is century",
                style: Styles.textStyle15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
