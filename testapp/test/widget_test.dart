import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testapp/main.dart';  // Import main.dart Anda
// Import halaman Anda
// Import halaman produk

void main() {
  testWidgets('Test BottomNavigationBar navigation', (WidgetTester tester) async {
    // Build aplikasi
    await tester.pumpWidget(MyApp());

    // Pastikan halaman pertama adalah HomeScreen
    expect(find.text('Andi'), findsOneWidget);
    expect(find.text('Budi'), findsOneWidget);
    expect(find.text('Gilang'), findsOneWidget);

    // Temukan tombol navigasi ke 'Product' dan klik
    await tester.tap(find.byIcon(Icons.shopping_cart));
    await tester.pump(); // Rebuild widget dengan state baru

    // Pastikan halaman Product muncul setelah tombol diklik
    expect(find.text('Game A'), findsOneWidget);
    expect(find.text('Rp50,000'), findsOneWidget);
    expect(find.byIcon(Icons.add_shopping_cart), findsNWidgets(4)); // Harus ada 4 tombol belanja
  });

  testWidgets('Test Add to Cart SnackBar', (WidgetTester tester) async {
    // Build aplikasi dan pindah ke ProductScreen
    await tester.pumpWidget(MyApp());
    await tester.tap(find.byIcon(Icons.shopping_cart));
    await tester.pump(); 

    // Tap tombol keranjang pada produk pertama (Game A)
    await tester.tap(find.widgetWithIcon(IconButton, Icons.add_shopping_cart).first);
    await tester.pump(); // Tampilkan SnackBar

    // Verifikasi bahwa SnackBar muncul
    expect(find.text('Game A added to cart!'), findsOneWidget);
  });
}
