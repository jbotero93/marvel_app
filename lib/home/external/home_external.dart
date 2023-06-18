import 'dart:convert';

import 'package:marvel_app/common/domain/models/hero_model.dart';
import 'package:marvel_app/common/external/get_hash.dart';
import 'package:marvel_app/common/external/keys.dart';
import 'package:http/http.dart' as http;

class HomeExternal {
  Future<List<HeroModel>?> fetchMarvelCharacters() async {
    final timeStamp = DateTime.now().millisecondsSinceEpoch.toString();
    final hash = GetHash().generateHash(timeStamp);

    final url = Uri.https(
      'gateway.marvel.com:443',
      '/v1/public/characters',
      {
        'apikey': Keys().publicKey,
        'hash': hash,
        'ts': timeStamp,
      },
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final characterList = <HeroModel>[];

      final characters = jsonResponse['data']['results'];
      for (var character in characters) {
        final hero = HeroModel.fromJson(character);
        characterList.add(hero);
      }
      return characterList;
    } else {
      print('Error en la petición: ${response.statusCode}');
      return [];
    }
  }
}
