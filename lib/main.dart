import 'package:flutter/material.dart';
import 'slow_list_page.dart';
import 'fast_list_page.dart';

// Uygulamanın giriş noktası
void main() {
  runApp(const MyApp());
}

// Ana uygulama widget'ı
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jank Demo',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

// Ana sayfa: iki farklı liste ekranına yönlendirir
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Performans & Jank Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Yavaş (jank'li) liste ekranı
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SlowListPage()),
                );
              },
              child: const Text("Yavaş Liste (Jankli)"),
            ),
            const SizedBox(height: 20),
            // Optimize edilmiş liste ekranı
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const FastListPage()),
                );
              },
              child: const Text("Hızlı Liste (Optimize)"),
            ),
          ],
        ),
      ),
    );
  }
}
