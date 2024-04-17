import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';

class UserDetails extends StatefulWidget {
  UserDetails({Key? key}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  bool isChoice = false;

  void swap() {
    setState(() {
      isChoice = !isChoice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.inverseSurface,
                  border: Border.all(color: Colors.blueAccent, width: 3)),
              child: AvaTar(
                size: 34,
              ),
            ),
            Text('name'),
            Text('email'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => swap(),
                  icon: isChoice
                      ? Icon(Icons.favorite_rounded,
                          color: Color(0xff985a56), size: 36)
                      : Icon(Icons.favorite_outline_outlined,
                          color: Color(0xff985a56), size: 30),
                ),
                IconButton(
                  onPressed: () => swap(),
                  icon: isChoice
                      ? Icon(Icons.people_outline_rounded,
                          color: Color(0xff985a56), size: 36)
                      : Icon(Icons.people_outline_outlined,
                          color: Color(0xff985a56), size: 30),
                ),
                IconButton(
                  onPressed: () => swap(),
                  icon: isChoice
                      ? Icon(Icons.done, color: Color(0xff985a56), size: 36)
                      : Icon(Icons.done, color: Color(0xff985a56), size: 30),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
