import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SessionController extends GetxController {
  static SessionController instance = Get.find();
  var obscure = true.obs;
  var errormessage = false.obs;
  var box = GetStorage();

  void enableObscure() {
    obscure == true ? obscure.value = false : obscure.value = true;
  }

  void enableError() {
    errormessage == true
        ? errormessage.value = false
        : errormessage.value = true;
  }
}
