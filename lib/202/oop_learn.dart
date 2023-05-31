import 'dart:io';

import 'package:full_learn/202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);

  Future<void> toShare(String path) async {
    Uri _path = Uri.parse(path);
    await launchUrl(_path);
  }
}

class FileDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();

    return true;
  }

  void smsShare() {}
}

class SMSDownload implements IFileDownload {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();

    print('a');

    return true;
  }

  @override
  Future<void> toShare(String path) async {
    await launchUrl("sms:$path" as Uri);
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

class VeliDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    throw UnimplementedError();
  }
}

mixin ShareMixin on IFileDownload {
  void toShowFile() {}
}
