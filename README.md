# Flutter Performans Optimizasyonu ve Jank Azaltma

Bu proje, Mobil Programlama dersi kapsamında Flutter uygulamalarında **jank (takılma)** problemini göstermek ve basit optimizasyon teknikleri ile performans farkını ortaya koymak amacıyla hazırlanmıştır.

## Projenin Amacı

- Kasıtlı olarak yavaşlatılmış bir liste ekranı oluşturmak
- Aynı listenin optimize edilmiş bir sürümünü hazırlamak
- İki sürüm arasındaki kaydırma (scroll) deneyimini karşılaştırmak
- ListView.builder, RepaintBoundary ve const widget kullanımının performansa etkisini incelemek

## Kullanılan Teknolojiler

- Flutter
- Dart
- Material Design bileşenleri

## Ekranlar

### **Ana Sayfa (HomePage):**
- "Yavaş Liste (Jankli)"
- "Hızlı Liste (Optimize)"  
butonlarını içerir.

### **SlowListPage:**
- 500 elemanlık liste
- Her eleman için ağır CPU işlemi
- Normal `ListView` kullanılır
- Amaç: jank oluşturmak

### **FastListPage:**
- Aynı liste verisi
- `ListView.builder` kullanılır
- Her satır `RepaintBoundary` ile ayrılmıştır
- Daha akıcı scroll deneyimi sağlar

## Kurulum ve Çalıştırma

Projeyi çalıştırmak için:

1. Flutter SDK'nın kurulu olduğundan emin olun.
2. Proje klasörüne gidin:

```bash
cd flutter_application_1 
```

3. Gerekli paketleri indirin:

```bash
flutter pub get
```

4. Uygulamayı çalıştırın:

```bash
flutter run
```

5. Masaüstü (Windows) için çalıştırma:

```bash
flutter run -d windows
```

> Not: Bu proje, Flutter’da performans optimizasyonu ve jank kavramını
> uygulamalı olarak göstermek amacıyla hazırlanmış bir demo çalışmadır.


-**Sevdenur Aktürk**

