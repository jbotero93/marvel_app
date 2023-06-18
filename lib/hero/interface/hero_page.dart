import 'package:flutter/material.dart';
import 'package:marvel_app/common/interface/marvel_appbar.dart';
import 'package:marvel_app/hero/domain/hero_provider.dart';
import 'package:marvel_app/hero/interface/widgets/detail_tab.dart';

import 'package:provider/provider.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key, required this.name, required this.id});
  final String name;
  final int id;

  @override
  Widget build(BuildContext context) {
    final heroProvider = Provider.of<HeroProvider>(context);
    return Scaffold(
      appBar: MarvelAppbar(title: name),
      body: Column(
        children: [
          TabBar(
            controller: heroProvider.tabController.value,
            tabs: const [
              Tab(
                text: 'Comics',
              ),
              Tab(
                text: 'Events',
              ),
              Tab(
                text: 'Series',
              ),
              Tab(
                text: 'Stories',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: heroProvider.tabController.value,
              children: [
                ValueListenableBuilder(
                  valueListenable: heroProvider.comicList,
                  builder: (context, itemList, snapshot) {
                    return DetailTab(
                      itemList: itemList,
                    );
                  },
                ),
                ValueListenableBuilder(
                  valueListenable: heroProvider.eventsList,
                  builder: (context, itemList, snapshot) {
                    return DetailTab(
                      itemList: itemList,
                    );
                  },
                ),
                ValueListenableBuilder(
                  valueListenable: heroProvider.seriesList,
                  builder: (context, itemList, snapshot) {
                    return DetailTab(
                      itemList: itemList,
                    );
                  },
                ),
                ValueListenableBuilder(
                  valueListenable: heroProvider.storiesList,
                  builder: (context, itemList, snapshot) {
                    return DetailTab(
                      itemList: itemList,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
