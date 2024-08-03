
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    if (!mounted) {
      return;
    }

    final session = supabase.auth.currentSession;
    final prefs = await SharedPreferences.getInstance();
    final walkthroughSeen = prefs.getBool('walkthroughSeen') ?? false;


    if (walkthroughSeen == false) {
      Navigator.of(context).pushReplacementNamed('/onboarding');
    } else if (session != null) {
      Navigator.of(context).pushReplacementNamed('/myHomePage');
    } else {
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}