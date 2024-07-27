import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/modules/authentication/verify/controller/verify_controller.dart';
import 'package:flutter_project/shared/components/widgets/custom_button.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_project/shared/resource/assets/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VerifyPage extends GetView<VerifyController> {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            40.verticalSpace,
            Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                  backgroundColor: theme.cardColor,
                  child: IconButton(
                    icon: const Icon(CupertinoIcons.multiply),
                    onPressed: () {
                      controller.cancel();
                    },
                  )),
            ),
            16.verticalSpace,
            CustomImageView(
              imagePath: Images.verifyemail,
              imageSize: Size(.7.sw, .7.sw),
              // fit: BoxFit.fill,
            ),
            20.verticalSpace,
            Text('Verify your Email',
                style: Theme.of(context).textTheme.headlineLarge),
            20.verticalSpace,
            Text(
              'controller.email',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            20.verticalSpace,
            Text(
              'We have just send a verification link on your email. Please check email and click on that link to verify email address.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            20.verticalSpace,
            CustomButton(
                text: 'Continue',
                onPressed: () {
                  controller.next();
                }),
            5.verticalSpace,
            CustomButton(
              text: 'Resend Email',
              onPressed: () {},
              backgroundColor: theme.scaffoldBackgroundColor,
            ),
          ],
        ),
      ),
    );
  }
}
