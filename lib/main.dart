// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nft_market_place/screens/main/dashboard.dart';
import 'package:nft_market_place/screens/public/connect_wallet_screen.dart';
import 'package:nft_market_place/screens/public/onboarding_screen.dart';
import 'package:nft_market_place/screens/public/setup_profile_screen.dart';
import 'package:nft_market_place/screens/public/start_screen.dart';
import 'package:nft_market_place/screens/public/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'NFT market place',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
      getPages: [
        GetPage(name: '/', page: () => OnboardingScreen()),
        GetPage(name: '/start', page: () => StartScreen()),
        GetPage(name: '/connect_wallet', page: () => ConnectWalletScreen()),
        GetPage(name: '/setup_profile', page: () => SetupProfileScreen()),
        GetPage(name: '/welcome', page: () => WelcomeScreen()),
        GetPage(name: '/dashboard', page: () => DashboardScreen()),
      ],
    );
  }
}
