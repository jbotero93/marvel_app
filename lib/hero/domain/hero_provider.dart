import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/common/interface/marvel_vsync.dart';
import 'package:marvel_app/hero/domain/models/item_model.dart';
import 'package:marvel_app/hero/external/hero_external.dart';

class HeroProvider with ChangeNotifier {
  final tabController =
      ValueNotifier<TabController>(TabController(length: 4, vsync: VSync()));

  final comicList = ValueNotifier<List<ItemModel>?>(null);
  final eventsList = ValueNotifier<List<ItemModel>?>(null);
  final seriesList = ValueNotifier<List<ItemModel>?>(null);
  final storiesList = ValueNotifier<List<ItemModel>?>(null);
  Future<void> fetchComics({required int id}) async {
    await HeroExternal().fetchComics(id: id).then(
      (value) {
        comicList.value = value;
      },
    );
  }

  Future<void> fetchEvents({required int id}) async {
    await HeroExternal().fetchEvents(id: id).then(
      (value) {
        eventsList.value = value;
      },
    );
  }

  Future<void> fetchSeries({required int id}) async {
    await HeroExternal().fetchSeries(id: id).then(
      (value) {
        seriesList.value = value;
      },
    );
  }

  Future<void> fetchStories({required int id}) async {
    await HeroExternal().fetchStories(id: id).then(
      (value) {
        storiesList.value = value;
      },
    );
  }
}
