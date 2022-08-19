import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileUtils {
  FileUtils._();

  static final FileUtils _instance = FileUtils._();

  static FileUtils getInstance() {
    return _instance;
  }

  Future<void> writeToFile(String fileName, String contents) async {
    var documentPath = await getApplicationDocumentsDirectory();
    var file = File("${documentPath.path}/$fileName");
    if (await file.exists()) {
      file.delete();
    }
    await file.create(recursive: true);
    file.writeAsString(contents);
  }

  Future<String> readFromFile(String fileName) async {
    var documentPath = await getApplicationDocumentsDirectory();
    var file = File("${documentPath.path}/$fileName");
    if (await file.exists()) {
      return file.readAsString();
    } else {
      return "";
    }
  }
}
