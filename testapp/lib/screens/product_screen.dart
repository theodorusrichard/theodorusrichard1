import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  // Daftar game beserta harga dan gambar
  final List<Map<String, String>> games = [
    {
      "name": "Valorant",
      "price": "Rp50,000",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUcXYTGELT3f3KxsedyeB8CiKAJ3lx_ANcnw&s" // Ganti dengan URL gambar yang sesuai
    },
    {
      "name": "Overwatch",
      "price": "Rp75,000",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBf8KaM2d81fHc7d7yv8AwvAlBG0M4NZGVUA&s" // Ganti dengan URL gambar yang sesuai
    },
    {
      "name": "Apex Legend",
      "price": "Rp100,000",
      "image": "data:image/jpeg;base64,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" // Ganti dengan URL gambar yang sesuai
    },
    {
      "name": "Counter Strike 2",
      "price": "Rp150,000",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpL_PrkN-aWos50JHgBXCL7PfhBAi41NioSA&s" // Ganti dengan URL gambar yang sesuai
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Store"),
      ),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: Image.network(
                games[index]["image"]!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(games[index]["name"]!),
              subtitle: Text(games[index]["price"]!),
              trailing: IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {
                  // Logika pembelian atau tambahkan ke keranjang
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${games[index]["name"]} added to cart!'),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProductScreen(),
  ));
}
