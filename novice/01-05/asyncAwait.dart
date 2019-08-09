import 'dart:async';
import 'dart:io';
import 'dart:convert';

Future<void> printDailyNewsDigest() async {
  var request = await HttpClient()
      .getUrl(Uri.parse('https://dart.dev/f/dailyNewsDigest.txt'));
  var response = await request.close();
  // transforms and prints the response
  await for (var contents in response.transform(Utf8Decoder())) {
    print(contents);
  }
}

void main() {
  printDailyNewsDigest();
}
