export 'domain/community_domain.dart';
export 'providers/providers.dart';
export 'screens/screens.dart';
export 'widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hug/community/widgets/community_widget.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return const CommunityWidget();
  }
}
