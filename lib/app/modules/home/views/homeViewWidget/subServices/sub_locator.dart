import 'package:get_it/get_it.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/homeViewWidget/subServices/sub_navigation_services.dart';

GetIt locator=GetIt.instance;

void setupSubLocator(){
  locator.registerLazySingleton(() => SubNavigationServices());
}