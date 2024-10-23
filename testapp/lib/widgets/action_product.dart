import 'package:flutter/material.dart';

class ActionProduct extends StatelessWidget {
  const ActionProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/baju");
              },
              icon: const Icon(
                Icons.history,
                semanticLabel: "Baju",
              ),
              color: Colors.blue,
            ),
          ),
          GestureDetector(
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/celana");
              },
              icon: const Icon(
                Icons.add_shopping_cart,
                semanticLabel: "Celana",
              ),
              color: Colors.blue,
            ),
          ),
          GestureDetector(
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/sepatu");
              },
              icon: const Icon(
                Icons.grid_view,
                semanticLabel: "Sepatu",
              ),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}