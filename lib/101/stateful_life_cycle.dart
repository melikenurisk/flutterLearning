import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('c');
  }

  @override
  void didUpdateWidget(covariant StatefulLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _oddCheck();
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
    _message = "";
    print('alo');
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;

    _oddCheck();
    print('a');
  }

  void _oddCheck() {
    if (_isOdd) {
      _message += "Çift";
    } else {
      _message += "Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_message)),
        body: _isOdd
            ? FloatingActionButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(
                onPressed: () {
                  setState(() {
                    _message = 'a';
                  });
                },
                child: Text(_message)));
  }
}
