import 'package:base_project/screen/component/component_basescreen.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  @override
  Widget build(BuildContext context) {
    return BaseScreenV2(
      title: "login",
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Container();
  }
}
