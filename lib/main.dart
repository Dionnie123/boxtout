import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:boxtout/app/app.bottomsheets.dart';
import 'package:boxtout/app/app.dialogs.dart';
import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/app/app.router.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:url_strategy/url_strategy.dart';

import 'ui/common/color_schemes.g.dart';

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
    return MaterialApp.router(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        fontFamily: GoogleFonts.nunito().fontFamily,
        useMaterial3: true,
        brightness: Brightness.light,
        cardTheme: const CardTheme(
          margin: EdgeInsetsDirectional.zero,
        ),
      ).copyWith(
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        fontFamily: GoogleFonts.nunito().fontFamily,
        useMaterial3: true,
        brightness: Brightness.dark,
        cardTheme: const CardTheme(
          margin: EdgeInsetsDirectional.zero,
        ),
      ).copyWith(
        colorScheme: darkColorScheme,
      ),
      routerDelegate: stackedRouter.delegate(initialRoutes: [
        supabase.auth.currentUser != null
            ? const HomeViewRoute()
            : const AuthViewRoute()
      ]),
      routeInformationParser: stackedRouter.defaultRouteParser(),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
