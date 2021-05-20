import 'dart:io';

import 'package:alfred/alfred.dart';

void main() async {
  final app = Alfred();

  app.get('/helloworld', (req, res) => "Hello world!");

  final envPort = Platform.environment['PORT'];

  final server = await app.listen(envPort != null ? int.parse(envPort) : 8080);

  print("Listening on ${server.port}");
}
