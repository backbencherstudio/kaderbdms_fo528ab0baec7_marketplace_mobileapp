import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/theme_manager.dart';
import 'core/route/route_import_part.dart';
import 'core/route/route_name.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 840),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'BaakZon',
          theme: getApplicationTheme(),
          themeMode: ThemeMode.system,
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: RouteName.splashRoute,
        );
      },
    );
  }
}
