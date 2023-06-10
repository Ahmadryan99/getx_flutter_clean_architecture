import '../../controllers/navigation_controller.dart';
import '../../controllers/main_controller.dart';

import 'package:firebase_core/firebase_core.dart';
// import '../../../firebase_options.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DependecyInjection {
  static Future<void> init() async {
// firebase init
    await Firebase.initializeApp(
        // options: DefaultFirebaseOptions.currentPlatform,
        );

    await GetStorage.init();

    Get.put<NavigationController>(NavigationController());
    Get.put<MainController>(MainController());
  }
}
