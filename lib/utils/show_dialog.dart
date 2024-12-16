import 'package:flutter/material.dart';

void showModal(BuildContext context) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      content: const Text('Example Dialog'),
      actions: <TextButton>[
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Close'),
        )
      ],
    ),
  );
}
