import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:marvel_app/common/external/keys.dart';

class GetHash {
  String generateHash(String timeStamp) {
    final bytes = utf8.encode(timeStamp + Keys().privateKey + Keys().publicKey);
    final digest = md5.convert(bytes);
    return digest.toString();
  }
}
