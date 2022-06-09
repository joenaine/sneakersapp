import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String image;
  const MovieCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(70)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.2),
              blurRadius: 20,
              offset: const Offset(0, 20),
            ),
          ]),
    );
  }
}
