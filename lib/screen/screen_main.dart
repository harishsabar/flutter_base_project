import 'package:base_project/screen/component/component_basescreen.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  @override
  Widget build(BuildContext context) {
    return BaseScreenV2(
      title: "Screen Main",
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Container();
  }
}
