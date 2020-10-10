import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChild(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Website \nDevelopers",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 41.0,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "There are three responses to a piece of design – yes, no, and WOW! Wow is the one we aim for.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 40.0,
                  ),
                  child: Text(
                    "Our packages",
                    style: TextStyle(color: Colors.red),
                  ),
                ))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.network(
          "https://raw.githubusercontent.com/raptogit/not-for-public-use/master/2.png",
          width: width,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChild(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChild(constraints.biggest.width),
          );
        }
      },
    );
  }
}
