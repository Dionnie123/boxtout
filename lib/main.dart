import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:boxtout/app/app.bottomsheets.dart';
import 'package:boxtout/app/app.dialogs.dart';
import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/app/app.router.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:url_strategy/url_strategy.dart';

import 'color_schemes.g.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 1366, tablet: 768, watch: 200),
  );
  await setupLocator(stackedRouter: stackedRouter);
  setupDialogUi();
  setupBottomSheetUi();
  setPathUrlStrategy();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final supabase = Supabase.instance.client;
    FlutterNativeSplash.remove();
    return ScreenUtilInit(
        designSize: const Size(360, 662),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            scrollBehavior: AppScrollBehavior(),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme)
                .copyWith(
                    cardTheme:
                        const CardTheme(margin: EdgeInsetsDirectional.zero)),
            darkTheme: ThemeData(
                    useMaterial3: true, colorScheme: darkColorScheme)
                .copyWith(
                    cardTheme:
                        const CardTheme(margin: EdgeInsetsDirectional.zero)),
            routerDelegate: stackedRouter.delegate(initialRoutes: [
              supabase.auth.currentUser != null
                  ? const HomeViewRoute()
                  : const AuthViewRoute()
            ]),
            routeInformationParser: stackedRouter.defaultRouteParser(),

            /*    builder: (context, child) {
            if (!kIsWeb) FlutterNativeSplash.remove();
            return Scaffold(
              body: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(child: child ?? const SizedBox()),
                      Container(
                        width: double.infinity,
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Made with 💖 by Mark Dionnie Bulingit ${DateFormat.y().format(DateTime.now())}",
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                const TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      )
                    ],
                  ),
          
                ],
              ),
            );
          }, */
          );
        });
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
