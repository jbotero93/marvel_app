import 'package:flutter/material.dart';

class MarvelLoading extends StatelessWidget {
  const MarvelLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
