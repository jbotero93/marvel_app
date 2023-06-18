import 'package:flutter/material.dart';
import 'package:marvel_app/splash/domain/splash_provider.dart';
import 'package:marvel_app/splash/interface/splash_page.dart';
import 'package:provider/provider.dart';

class SplashInjection {
  SplashInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => SplashProvider(),
      child: const SplashPage(),
    );
  }
}
