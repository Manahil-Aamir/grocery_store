import 'package:flutter_project/constant/get_builder_ids.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  int currentIndex = 0;

  void index(int num) {
    print(num);
    currentIndex = num;
    update([GetBuilderIds.basePage]);
  }
}
