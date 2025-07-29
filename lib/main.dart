import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: const Simpleproject(),
    );
  }
}

class Simpleproject extends StatelessWidget {
  const Simpleproject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("Facebook"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, size: 25),
        ),
        actions: [ // بداية قائمة الـ actions
          IconButton(
            onPressed: () {}, // تم تصحيح onPressed ليكون دالة
            icon: const Icon(Icons.message, size: 32), // تم تصحيح icon: icons.message وتحديد size هنا
          ), // فاصلة بين الأزرار
          IconButton( // تم نقل هذا الزر ليكون داخل قائمة الـ actions
            onPressed: () {},
            icon: const Icon(Icons.search, size: 25),
          ),
        ], // نهاية قائمة الـ actions
      ),
      body: Center(child: Text("Hello, Ali"  , style: TextStyle(fontSize: 40),   )),
    );
  }
}