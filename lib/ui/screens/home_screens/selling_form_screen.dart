import 'package:flutter/material.dart';

class SellingFormScreen extends StatefulWidget {
  const SellingFormScreen({super.key});

  @override
  State<SellingFormScreen> createState() => _SellingFormScreenState();
}

class _SellingFormScreenState extends State<SellingFormScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Selling Form Screen"),
      ),
    );
  }
}
