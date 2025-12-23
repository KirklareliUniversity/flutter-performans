import 'package:flutter/material.dart';

// Bu sayfa kasıtlı olarak yavaş çalışacak şekilde tasarlandı (jank üretmek için)
class SlowListPage extends StatelessWidget {
  const SlowListPage({super.key});

  // Kasıtlı olarak çok ağır çalışan CPU fonksiyonu (UI thread'i bloklar)
  int heavyWork(int x) {
    int sum = 0;
    for (int i = 0; i < 20000000; i++) {
      sum += x;
    }
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    // 500 elemanlık örnek liste
    final items = List.generate(500, (i) => i);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Yavaş Liste (Jankli)"),
      ),
      // ListView.builder yerine normal ListView kullanılıyor.
      // Tüm elemanlar baştan oluşturuluyor, performans çok kötü.
      body: ListView(
        children: items.map((index) {
          final result = heavyWork(index); // Her öğede ağır işlem
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              title: Text("Eleman $index"),
              subtitle: Text("Hesap sonucu: $result"),
            ),
          );
        }).toList(),
      ),
    );
  }
}
