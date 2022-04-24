import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: const BorderRadius.all(
          Radius.circular(128),
        ),
      ),
      child: Row(
        children: [
          const Icon(Icons.search),
          Container(
            width: 300,
            padding: const EdgeInsets.only(left: 10),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Search',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
