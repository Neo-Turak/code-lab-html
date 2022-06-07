export 'domain/discuss_domain.dart';
export 'providers/providers.dart';
export 'screens/screens.dart';
export 'widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hug/discuss/widgets/widgets.dart';

class DiscussPage extends StatefulWidget {
  const DiscussPage({Key? key}) : super(key: key);

  @override
  State<DiscussPage> createState() => _DiscussPageState();
}

class _DiscussPageState extends State<DiscussPage> {
  @override
  Widget build(BuildContext context) {
    return DiscussWidget();
  }
}