import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_text_form_field.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildSearchAppBar("Keyword"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }

  // AppBar _buildSearchAppBar() {
  //   return buildSearchAppBar("Keyword");
  // }
}
