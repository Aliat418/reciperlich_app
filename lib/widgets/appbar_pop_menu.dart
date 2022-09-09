import 'package:flutter/material.dart';

class SimpleAppBarPopupMenuButton extends StatelessWidget {
  const SimpleAppBarPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              // PopupMenuItem 1
              PopupMenuItem(
                value: 1,
                child: Row(
                  children: const [
                    Icon(Icons.add),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Get The App')
                  ],
                ),
              ),
              // PopupMenuItem 2
              PopupMenuItem(
                value: 2,
                // row with two children
                child: Row(
                  children: const [
                    Icon(Icons.chrome_reader_mode),
                    SizedBox(
                      width: 10,
                    ),
                    Text('About')
                  ],
                ),
              ),
            ],
            offset: const Offset(0, 100),
            color: Colors.grey,
            elevation: 2,
            onSelected: (value) {
              if (value == 1) {
                Navigator.of(context).pop();
              }
            },
          ),
        ],
      ),
    );
  }
}
