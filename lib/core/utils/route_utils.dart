import 'package:get/get.dart';
import '../../features/dashboard/dashboard_screen.dart';
import '../config/main_app.dart';


class RouteApp {
  static String initial = '/';
  // static String mainmenu = '/mainmenu';
  // static String store = '/store';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => DashboardScreen()),
    // GetPage(name: mainmenu, page: () => const MainMenuScreen()),
    // GetPage(name: store, page: () => const StoreScreen()),
   
  ];


}
