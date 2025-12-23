import 'package:flutter/material.dart';

// Bu sayfa, optimize edilmiş hızlı liste sürümüdür.
class FastListPage extends StatelessWidget {
  const FastListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(500, (i) => i);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hızlı Liste (Optimize)"),
      ),
      // ListView.builder, yalnızca ekranda görünen elemanları oluşturur.
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return RepaintBoundary(
            // RepaintBoundary, her satırın ayrı ayrı yeniden çizilmesini sağlar.
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: ListTile(
                title: Text("Eleman $index"),
                subtitle: const Text("Optimize edilmiş, jank yok"),
                trailing: const Icon(Icons.check_circle, color: Colors.green),
              ),
            ),
          );
        },
      ),
    );
  }
}
