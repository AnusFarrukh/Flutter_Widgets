import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.yellow,
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 300,
                      child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context);
                            },
                            child: Text("close")),
                      ),
                    );
                  });
            },
            child: Text("Bottom Sheet")),
      ),
    );
  }
}
