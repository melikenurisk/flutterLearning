import 'dart:developer';

import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        //showAboutDialog(context: context, applicationName: 'VB', children: [const Text('data')]);
        final response = await showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return const _ImageZoomDialog();
              //UpdateDialog(context: context);
              //Dialog(child: Text('data'))
            });
        inspect(response);
      }),
    );
  }
}

class _UpdateDialog extends StatelessWidget {
  const _UpdateDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Version Update!'),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: const Text('Update')),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('close'))
      ],
    );
  }
}

class Keys {
  static const versionUpdate = 'Version Update';
}

class UpdateDialog extends AlertDialog {
  UpdateDialog({Key? key, required BuildContext context})
      : super(
          key: key,
          title: const Text(Keys.versionUpdate),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: const Text('Update')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('close'))
          ],
        );
}

class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({super.key});
  final String _imageUrl = 'https://picsum.photos/200';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: InteractiveViewer(
        child: Image.network(
          _imageUrl,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
      ),
    );
  }
}
