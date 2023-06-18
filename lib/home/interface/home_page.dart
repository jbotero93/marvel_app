import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_app/common/domain/models/hero_model.dart';
import 'package:marvel_app/common/interface/marvel_appbar.dart';
import 'package:marvel_app/common/interface/marvel_loading.dart';
import 'package:marvel_app/home/domain/home_provider.dart';
import 'package:marvel_app/home/interface/widgets/hero_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: MarvelAppbar(
        title: 'Marvel SuperHeroes',
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () async {
              homeProvider.heroList.value = null;
              homeProvider.fetchMarvelCharacters();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.replay_outlined,
                    color: Colors.redAccent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Refresh',
                    style: GoogleFonts.bevan(
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ValueListenableBuilder<List<HeroModel>?>(
            valueListenable: homeProvider.heroList,
            builder: (context, heroList, snapshot) {
              return heroList == null
                  ? const MarvelLoading()
                  : heroList.isEmpty
                      ? Center(
                          child: Text(
                            'Error',
                            style: GoogleFonts.bevan(
                              color: Colors.redAccent,
                              fontSize: 25,
                            ),
                          ),
                        )
                      : Expanded(
                          child: ListView.builder(
                            itemCount: heroList.length,
                            itemBuilder: (context, index) {
                              return HeroCard(
                                heroItem: heroList[index],
                              );
                            },
                          ),
                        );
            },
          ),
        ],
      ),
    );
  }
}
