import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  void launchURL(String url) async {
    Uri _url = Uri.parse(url);
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    }
  }
}
