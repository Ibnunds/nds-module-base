import 'package:flutter/material.dart';
import 'package:nawa_utils/nawa_utils.dart';
import 'package:nawadata_module_base/utils/constants.dart';

class Module1MainScreen extends StatelessWidget {
  const Module1MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tokenFromHost = NawaStorage.read("TOKEN") ?? "";

    return Scaffold(
      appBar: AppBar(
        title: Text("Main Module 1"),
        leading: NawaUtils.nestedModuleBackButton(id: MODULE_ID),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Loading data from Host: "),
            Text("Access Token: $tokenFromHost"),
          ],
        ),
      ),
    );
  }
}
