import 'package:box_ui/box_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:boxtout/app/app.bottomsheets.dart';
import 'package:boxtout/app/app.dialogs.dart';
import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/app/app.router.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:responsive_builder/responsive_builder.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 1369, tablet: 768, watch: 200),
  );
  await setupLocator(stackedRouter: stackedRouter);
  setupDialogUi();
  setupBottomSheetUi();
  setUrlStrategy(PathUrlStrategy());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final circularBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    );

    return MaterialApp.router(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(200, 50)))),
        buttonTheme: const ButtonThemeData(),
        textButtonTheme: const TextButtonThemeData(
            style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(kcPrimaryColor))),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: kcPrimaryColor).copyWith(
            // brightness: Brightness.dark,
            ),
        useMaterial3: true,
        // brightness: Brightness.dark,
        fontFamily: GoogleFonts.nunito().fontFamily,
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          filled: true,
          //fillColor: kcVeryLightGreyColor,
          border: circularBorder.copyWith(
            borderSide: const BorderSide(color: kcLightGreyColor),
          ),
          errorBorder: circularBorder.copyWith(
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedBorder: circularBorder.copyWith(
            borderSide: const BorderSide(color: kcPrimaryColor),
          ),
          enabledBorder: circularBorder.copyWith(
            borderSide: const BorderSide(color: kcLightGreyColor),
          ),
        ),
      ),
      routerDelegate: stackedRouter.delegate(),
      routeInformationParser: stackedRouter.defaultRouteParser(),
      builder: (context, child) {
        return Scaffold(
          body: Column(
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
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
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
