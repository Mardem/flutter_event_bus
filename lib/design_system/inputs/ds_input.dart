import 'package:flutter/material.dart';

class DSInput extends StatelessWidget {
  const DSInput({
    Key? key,
    required this.title,
    required this.controller,
    this.obscure = false,
  }) : super(key: key);

  final String title;
  final TextEditingController controller;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller,
            obscureText: obscure,
            decoration: const InputDecoration(
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true,
            ),
          )
        ],
      ),
    );
  }
}
