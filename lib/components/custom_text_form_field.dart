import 'package:flutter/material.dart';

class buildSearchAppBar extends StatelessWidget {
  final String text;
  const buildSearchAppBar(this.text);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.grey,
        title: Container(
          child: Column(
            children: [
              Text(text),
              SizedBox(height: 5.0),
              TextFormField(
                validator: (value) =>
                    value!.isEmpty ? "Please enter some text" : null,
                obscureText: text == "Password" ? true : false,
                decoration: InputDecoration(
                    hintText: "Enter $text",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ],
          ),
        ),
    );
  }

}
