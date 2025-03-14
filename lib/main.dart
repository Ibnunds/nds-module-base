import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nawa_utils/nawa_utils.dart';
import 'package:nawadata_module_base/pages/module1_main.dart';

void main() async {
  await NawaStorage.initStorage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Module Base',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => MyHomePage()),
        GetPage(name: "/main", page: () => Module1MainScreen()),
      ],
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Module Base")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Get.offNamed("/main");
              },
              child: Text("Go to module"),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
