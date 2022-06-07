export 'domain/main_domain.dart';
export 'providers/providers.dart';
export 'screens/screens.dart';
export 'widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hug/main/widgets/main_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const MainWidget();
  }
}
