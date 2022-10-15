import 'package:flutter/material.dart';

class BlockedView extends StatelessWidget {
  const BlockedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BlockedView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Blocked is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
