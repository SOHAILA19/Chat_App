import 'package:animate_do/animate_do.dart';
import 'package:chatapp/features/auth/persentation/views/login_view.dart';
import 'package:chatapp/features/splash_screen/persentation/views/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const LoginView();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeInUp(child: const SplashBody()),
      ),
    );
  }
}
