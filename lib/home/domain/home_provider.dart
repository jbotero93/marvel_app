import 'package:flutter/material.dart';
import 'package:marvel_app/common/domain/models/hero_model.dart';
import 'package:marvel_app/home/external/home_external.dart';

class HomeProvider with ChangeNotifier {
  final heroList = ValueNotifier<List<HeroModel>?>(null);
  Future<void> fetchMarvelCharacters() async {
    await HomeExternal().fetchMarvelCharacters().then((value) {
      heroList.value = value;
    });
  }
}
