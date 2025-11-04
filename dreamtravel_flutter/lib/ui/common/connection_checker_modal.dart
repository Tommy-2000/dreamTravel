import 'package:flutter/material.dart';

class ConnectionCheckerModal extends StatelessWidget {
  const ConnectionCheckerModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      child: Center(
        child: Column(
          children: [
            const Text("Connection unavailable, please try again later"),
            ElevatedButton(
              onPressed: () => {Navigator.pop(context)},
              child: const Text("Close"),
            ),
          ],
        ),
      ),
    );
  }
}
