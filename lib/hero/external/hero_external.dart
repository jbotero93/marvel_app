import 'dart:convert';

import 'package:marvel_app/common/external/get_hash.dart';
import 'package:marvel_app/common/external/keys.dart';
import 'package:http/http.dart' as http;
import 'package:marvel_app/hero/domain/models/item_model.dart';

class HeroExternal {
  Future<List<ItemModel>> fetchComics({required int id}) async {
    final timeStamp = DateTime.now().millisecondsSinceEpoch.toString();
    final hash = GetHash().generateHash(timeStamp);

    final url = Uri.https(
      'gateway.marvel.com:443',
      '/v1/public/characters/$id/items',
      {
        'apikey': Keys().publicKey,
        'hash': hash,
        'ts': timeStamp,
      },
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final itemList = <ItemModel>[];

      final characters = jsonResponse['data']['results'];
      for (var character in characters) {
        final item = ItemModel.fromJson(character);
        itemList.add(item);
      }
      return itemList;
    } else {
      print('Error en la petición: ${response.statusCode}');
      return [];
    }
  }

  Future<List<ItemModel>> fetchEvents({required int id}) async {
    final timeStamp = DateTime.now().millisecondsSinceEpoch.toString();
    final hash = GetHash().generateHash(timeStamp);

    final url = Uri.https(
      'gateway.marvel.com:443',
      '/v1/public/characters/$id/events',
      {
        'apikey': Keys().publicKey,
        'hash': hash,
        'ts': timeStamp,
      },
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final itemList = <ItemModel>[];

      final characters = jsonResponse['data']['results'];
      for (var character in characters) {
        final item = ItemModel.fromJson(character);
        itemList.add(item);
      }
      return itemList;
    } else {
      print('Error en la petición: ${response.statusCode}');
      return [];
    }
  }

  Future<List<ItemModel>> fetchSeries({required int id}) async {
    final timeStamp = DateTime.now().millisecondsSinceEpoch.toString();
    final hash = GetHash().generateHash(timeStamp);

    final url = Uri.https(
      'gateway.marvel.com:443',
      '/v1/public/characters/$id/series',
      {
        'apikey': Keys().publicKey,
        'hash': hash,
        'ts': timeStamp,
      },
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final itemList = <ItemModel>[];

      final characters = jsonResponse['data']['results'];
      for (var character in characters) {
        final item = ItemModel.fromJson(character);
        itemList.add(item);
      }
      return itemList;
    } else {
      print('Error en la petición: ${response.statusCode}');
      return [];
    }
  }

  Future<List<ItemModel>> fetchStories({required int id}) async {
    final timeStamp = DateTime.now().millisecondsSinceEpoch.toString();
    final hash = GetHash().generateHash(timeStamp);

    final url = Uri.https(
      'gateway.marvel.com:443',
      '/v1/public/characters/$id/stories',
      {
        'apikey': Keys().publicKey,
        'hash': hash,
        'ts': timeStamp,
      },
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final itemList = <ItemModel>[];

      final characters = jsonResponse['data']['results'];
      for (var character in characters) {
        final item = ItemModel.fromJson(character);
        itemList.add(item);
      }
      return itemList;
    } else {
      print('Error en la petición: ${response.statusCode}');
      return [];
    }
  }
}
