import 'package:flutter/material.dart';
import 'package:marvel_app/home/domain/home_provider.dart';
import 'package:marvel_app/home/interface/home_page.dart';
import 'package:provider/provider.dart';

class HomeInjection {
  HomeInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => HomeProvider()..fetchMarvelCharacters(),
      child: HomePage(),
    );
  }
}
