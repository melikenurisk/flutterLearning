import 'package:flutter/material.dart';
import 'package:full_learn/101/list_view_learn.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> with ProductSheetMixin {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      body: Center(
          child: TextButton(
              onPressed: () {
                showCustomSheet(context, const ListViewLearn());
              },
              child: const Text('Show'))),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
              isScrollControlled: true,
              builder: (context) {
                return _CustomSheet(backgroundColor: _backgroundColor);
              });
          //inspect(result);

          if (result is bool) {
            setState(() {
              _backgroundColor = Colors.cyan;
            });
          }
        },
        child: const Icon(Icons.share),
      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({
    super.key,
    required Color backgroundColor,
  });

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {
  Color _backgroundColor = Colors.white;
  final _gripHeight = 30.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: _gripHeight,
          child: Stack(children: [
            Divider(
              color: Colors.black26,
              thickness: 3,
              indent: MediaQuery.of(context).size.width * 0.45,
              endIndent: MediaQuery.of(context).size.width * 0.45,
            ),
            Positioned(
              right: 10,
              top: 0,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Padding(
                  padding: PaddingManager.paddingLowAll,
                  child: Icon(Icons.close),
                ),
              ),
            )
          ]),
        ),
        const Text('kedy'),
        Image.network('https://www.pngmart.com/files/16/Cute-Kitten-PNG-Clipart.png', height: 200),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _backgroundColor = Colors.amber;
              });
              Navigator.of(context).pop<bool>(true);
            },
            child: const Text('OK'))
      ],
    );
  }
}

mixin ProductSheetMixin {
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) async {
    return showModalBottomSheet<T>(
        context: context,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
        //isScrollControlled: true,
        builder: (context) {
          return _CustomMainSheet(child: child);
        });
  }
}

class _CustomMainSheet extends StatelessWidget {
  const _CustomMainSheet({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [const _BaseSheetHeader(), Expanded(child: child)]);
  }
}

class _BaseSheetHeader extends StatelessWidget {
  const _BaseSheetHeader({
    super.key,
  }) : _gripHeight = 30;

  final double _gripHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _gripHeight,
      child: Stack(children: [
        Divider(
          color: Theme.of(context).colorScheme.onBackground,
          thickness: 3,
          indent: MediaQuery.of(context).size.width * 0.45,
          endIndent: MediaQuery.of(context).size.width * 0.45,
        ),
        Positioned(
          right: MediaQuery.of(context).size.width * 0.01,
          top: 0,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Padding(
              padding: PaddingManager.paddingLowAll,
              child: Icon(Icons.close),
            ),
          ),
        )
      ]),
    );
  }
}

class PaddingManager {
  static const paddingLowAll = EdgeInsets.all(8.0);
}
