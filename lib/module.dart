import 'package:flutter/material.dart';
import 'package:nawa_utils/nawa_utils.dart';
import 'package:nawadata_module_base/pages/module1_main.dart';
import 'package:nawadata_module_base/utils/constants.dart';

class MainModule1 extends StatelessWidget {
  const MainModule1({super.key});

  @override
  Widget build(BuildContext context) {
    return NawaUtils.buildModuleApp(
      id: MODULE_ID,
      routes: {'/main': () => Module1MainScreen()},
      initialScreen: () => Module1MainScreen(),
    );
  }
}
