import 'package:flutter/material.dart';
import 'package:flutter_project/modules/authentication/accountcreated/controller/created_controller.dart';
import 'package:flutter_project/shared/components/widgets/custom_button.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_project/shared/resource/assets/vectors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CreatedPage extends GetView<CreatedController> {
  const CreatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            70.verticalSpace,
            Align(
                alignment: Alignment.topCenter,
                child: CustomImageView(imagePath: Vectors.accountcreated)),
            20.verticalSpace,
            Text('Account Successfully Created',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontSize: 20)),
            20.verticalSpace,
            Text('Account Creation Success Description',
                style: Theme.of(context).textTheme.bodyMedium),
            30.verticalSpace,
            CustomButton(
                text: 'Continue',
                onPressed: () {
                  controller.next();
                })
          ],
        ),
      ),
    );
  }
}
