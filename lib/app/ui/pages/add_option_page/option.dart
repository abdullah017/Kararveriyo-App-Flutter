import 'package:kararverio/app/controllers/option_controller.dart';
import 'package:kararverio/app/ui/global_widgets/padding_twelvepixels.dart';
import 'package:kararverio/app/ui/global_widgets/sizedbox_twentypixel.dart';
import 'package:kararverio/app/ui/theme/text_theme.dart';
import 'package:kararverio/app/ui/utils/constants/app_string.dart';
import 'package:kararverio/app/ui/utils/helpers/size_helper.dart';

import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddOptionPage extends GetView<AddOptionController> {
  final _controller = Get.find<AddOptionController>();

  AddOptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: const EdgeInsets.all(24),
              child: Obx(
                () => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeaderText(),
                    const SizedBoxTwentyPixels(),
                    _buildTitleTextField(),
                    const SizedBoxTwentyPixels(),
                    _buildAddOptionTextField(),
                    const SizedBoxTwentyPixels(),
                    _buildUnderBodyText(),
                    const SizedBoxTwentyPixels(),
                    SizedBox(
                      height: displayHeight(context) * 0.4,
                      width: displayWidth(context),
                      child: _buildListViewBuilder(),
                    ),
                    _buildInfoText(),
                    const SizedBoxTwentyPixels(),
                    _buildElevatedButton(context),
                  ],
                ),
              ),
            );
          }
          return SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: const EdgeInsets.all(24),
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeaderText(),
                  const SizedBoxTwentyPixels(),
                  _buildTitleTextField(),
                  const SizedBoxTwentyPixels(),
                  _buildAddOptionTextField(),
                  const SizedBoxTwentyPixels(),
                  _buildUnderBodyText(),
                  const SizedBoxTwentyPixels(),
                  SizedBox(
                    height: displayHeight(context) * 0.4,
                    width: displayWidth(context),
                    child: _buildListViewBuilder(),
                  ),
                  _buildInfoText(),
                  const SizedBoxTwentyPixels(),
                  _buildElevatedButton(context),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Center _buildUnderBodyText() {
    return Center(
      child: Text(
        AppStrings.addOptionPageText.addedOption,
        style: ThemeTextStyle.underBodyText,
      ),
    );
  }

  Center _buildElevatedButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(
            Size.fromWidth(
              displayWidth(context),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            const Color(
              0xff7F2EA5,
            ),
          ),
        ),
        onPressed: () {
          _controller.nextPage();
        },
        child: const Text('TAMAMLA'),
      ),
    );
  }

  Center _buildInfoText() {
    return Center(
      child: Text(AppStrings.addOptionPageText.info,
          style: ThemeTextStyle.footerText),
    );
  }

  PaddingTwelvePixels _buildAddOptionTextField() {
    return PaddingTwelvePixels(
      child: TextField(
        controller: _controller.optionTextFieldController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: AppStrings.addOptionPageText.optionName,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              _controller.addOption();
            },
            icon: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  PaddingTwelvePixels _buildTitleTextField() {
    return PaddingTwelvePixels(
      child: TextField(
        controller: _controller.titleTextFieldController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: AppStrings.addOptionPageText.title,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }

  Center _buildHeaderText() {
    return Center(
      child: Text(
        AppStrings.addOptionPageText.header,
        style: ThemeTextStyle.headerText,
      ),
    );
  }

  ListView _buildListViewBuilder() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: _controller.optionList!.length,
        itemBuilder: (context, index) {
          final item = _controller.optionList![index];
          return Dismissible(
            key: Key(item),
            onDismissed: (direction) {
              _controller.deleteOption(index);
            },
            child: Card(
              color: const Color(0XFFE88BF4),
              elevation: 5,
              shape: const StadiumBorder(),
              child: ListTile(
                title: Text(
                  item,
                  textAlign: TextAlign.center,
                  style: ThemeTextStyle.listItemText,
                ),
              ),
            ),
          );
        });
  }
}
