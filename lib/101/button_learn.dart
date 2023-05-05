import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            // ignore: sort_child_properties_last
            child: Text('Save', style: Theme.of(context).textTheme.titleMedium),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.green;
                  }
                  return Colors.white;
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Save'),
          ),
          const IconButton(
            onPressed: null, //tıklanmaması gerektiğinde
            icon: Icon(Icons.abc_rounded),
          ),
          FloatingActionButton(
            onPressed: () {
              //servise istek at
              //sayfanın rengini düzenle
            },
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.pink,
            ),
            onPressed: () {},
            child: const SizedBox(width: 200, child: Text('Save')),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.abc),
              label: const Text('data')),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(
            height: 150,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, right: 40, left: 40),
              child: Text('Place Bid',
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
          ),
        ],
      ),
    );
  }
}
