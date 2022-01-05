import 'package:flutter/material.dart';

class Plataforms extends StatelessWidget {
  final Function()? onTap;

  const Plataforms({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _buttonsPlattforms(() => onTap, "assets/images/google.png", 45),
        _buttonsPlattforms(() => onTap, "assets/images/iphone1.jpg", 20),
        _buttonsPlattforms(() => onTap, "assets/images/facebook.png", 45),
      ],
    );
  }
}

_buttonsPlattforms(Function() onTap, String image, double scale) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
      child: Image.asset(
        image,
        scale: scale,
      ),
    ),
  );
}
