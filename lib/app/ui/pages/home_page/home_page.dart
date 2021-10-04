import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:kararverio/app/ui/theme/text_theme.dart';
import 'package:kararverio/app/ui/utils/constants/app_colors.dart';

import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  final _controller = Get.find<HomeController>();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
      child: GestureDetector(
        onTap: () {
          _controller.selected.add(
            Fortune.randomInt(0, _controller.data[0].length),
          );
        },
        child: Column(
          children: [
            Text(
              _controller.data[1],
              softWrap: true,
              maxLines: 3,
              textAlign: TextAlign.center,
              textScaleFactor: 0.5,
              style: ThemeTextStyle.headerText,
            ),
            //   _controller.selected.reactive; lib/app/ui/pages/home_page/home_page.dart /home/abdullah/Genel/flutter_example/kararverio/lib/app/ui/pages/home_page/home_page.dart
            Expanded(
              child: FortuneWheel(
                physics: CircularPanPhysics(
                  duration: const Duration(seconds: 1),
                  curve: Curves.decelerate,
                ),
                animateFirst: false,
                selected: _controller.selected.stream,
                items: [
                  for (var it in _controller.data[0])
                    FortuneItem(
                      child: Text(
                        it.toString(),
                        style: ThemeTextStyle.listItemText,
                      ),
                      style: FortuneItemStyle(
                        color: AppColors.randomGenerator(),
                        borderColor: Colors.white,
                        textAlign: TextAlign.center,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
