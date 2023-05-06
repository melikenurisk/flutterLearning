import 'package:flutter/material.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});

  final String _title = "Hi!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        //actionsIconTheme: const IconThemeData(color: Colors.red, size: 50),
        //automaticallyImplyLeading: false, //otomatik back buton gelmesin
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_sharp),
          ),
          const Center(child: CircularProgressIndicator()),
          Text(_title),
        ],
      ),
      body: Column(children: const []),
    );
  }
}
