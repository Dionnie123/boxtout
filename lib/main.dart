import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:boxtout/app/app.bottomsheets.dart';
import 'package:boxtout/app/app.dialogs.dart';
import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/app/app.router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 800, tablet: 550, watch: 200),
  );
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final circularBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    );

    return MaterialApp(
      theme: ThemeData(
          textButtonTheme: const TextButtonThemeData(
              style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(kcPrimaryColor))),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: kcPrimaryColor).copyWith(
            brightness: Brightness.dark,
          ),
          //useMaterial3: true,
          brightness: Brightness.dark,
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
          )),
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
