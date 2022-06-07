export 'domain/profile_domain.dart';
export 'providers/providers.dart';
export 'screens/screens.dart';
export 'widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hug/profile/widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ProfileWidget();
  }
}