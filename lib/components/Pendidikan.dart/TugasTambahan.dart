import 'package:flutter/material.dart';

class TugasTambahan extends StatefulWidget {
  const TugasTambahan({super.key});

  @override
  State<TugasTambahan> createState() => _TugasTambahanState();
}

class _TugasTambahanState extends State<TugasTambahan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas Tambahan'),
      ),
    );
  }
}
