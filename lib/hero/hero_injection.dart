import 'package:flutter/material.dart';
import 'package:marvel_app/hero/domain/hero_provider.dart';
import 'package:marvel_app/hero/interface/hero_page.dart';
import 'package:provider/provider.dart';

class HeroInjection {
  HeroInjection._();

  static Widget injection({required int id, required String name}) {
    return ListenableProvider(
      create: (context) => HeroProvider()
        ..fetchComics(id: id)
        ..fetchEvents(id: id)
        ..fetchSeries(id: id)
        ..fetchStories(id: id),
      child: HeroPage(id: id, name: name),
    );
  }
}
