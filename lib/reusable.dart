import 'package:flutter/material.dart';
class Resuable extends StatelessWidget {
  final Widget icon;
  final Widget Text;
  Resuable({required this.icon,required this.Text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ icon,SizedBox(height: 5,), Text],
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white
      ),
    );
  }
}
