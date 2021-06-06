import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    title: "snackbar_flutter",
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sb1 = SnackBar(
      content: Text("I am a snackbar"),
      action: SnackBarAction(label: "Undo", onPressed: () {}),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("Snackbar-Flutter"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Show Snackbar"),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(sb1

                  /*  SnackBar(
                content: Text("I am a Snackbar"),
                action: SnackBarAction(
                  label: "Undo",
                  onPressed: () {},
                ),
              )
              */
                  );
            },
          ),
        ));
  }
}
