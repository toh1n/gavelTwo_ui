import 'package:flutter/material.dart';

class GaveledScreen extends StatefulWidget {
  const GaveledScreen({super.key});

  @override
  State<GaveledScreen> createState() => _GaveledScreenState();
}

class _GaveledScreenState extends State<GaveledScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
