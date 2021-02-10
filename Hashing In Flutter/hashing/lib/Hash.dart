import 'package:crypto/crypto.dart' as crypto;
import 'dart:convert'; // for the utf8.encode method

class Hash {
  static List<int> toBytes(String text) {
    return utf8.encode(text);
  }

  static String md5(String text) {
    return crypto.md5.convert(toBytes(text)).toString();
  }

  static String sha1(String text) {
    return crypto.sha1.convert(toBytes(text)).toString();
  }

  static String sha256(String text) {
    return crypto.sha256.convert(toBytes(text)).toString();
  }

  static String sha512(String text) {
    return crypto.sha512.convert(toBytes(text)).toString();
  }
}
