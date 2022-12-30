import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _styleText = const TextStyle(fontSize: 25);
  int _num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Cantidad de clicks', style: _styleText),
            Text(_num.toString(), style: _styleText),
          ],
        ),
      ),
      floatingActionButton: _iconsBottom(),
    );
  }

  Widget _iconsBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        //const SizedBox(width: 0.1),
        FloatingActionButton(
          onPressed: _restCounter,
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: _resetCounter,
          child: const Icon(Icons.restart_alt),
        ),
        FloatingActionButton(
          onPressed: _addCounter,
          child: const Icon(Icons.add),
        )
      ],
    );
  }

  void _addCounter() {
    setState(() {
      _num++;
    });
  }

  void _restCounter() {
    setState(() {
      _num--;
    });
  }

  void _resetCounter() {
    setState(() {
      _num = 0;
    });
  }
}
