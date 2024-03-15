import 'package:flutter/material.dart';

class HeaderForm extends StatelessWidget {
  const HeaderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Text(
          "Thailand Traditional Restaurant",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 25,
        ),

        CircleAvatar(
          backgroundImage: NetworkImage(
            "https://i.pinimg.com/564x/7d/16/72/7d16721c0c246e500453d977f1a7931d.jpg"
          ),
          radius: 70,
        )
      ],
    );
  }
}