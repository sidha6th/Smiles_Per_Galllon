import 'package:smiles_per_gallon/extra/exports.dart';

ThemeData themeData = MyAppTheme.whiteThemeData;

class MyAppTheme {
// *==============================================================*//
  static final ThemeData whiteThemeData = ThemeData(
    iconTheme: const IconThemeData(
      color: grey,
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(color: Colors.black),
    ),
    primaryIconTheme: const IconThemeData(
      color: black,
      size: 20,
    ),
    scaffoldBackgroundColor: white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          lightBlue,
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: transp,
      foregroundColor: transp,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: transp,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
  );
// *==============================================================*//
  static final ThemeData darkThemeData = ThemeData.dark().copyWith(
    iconTheme: const IconThemeData(
      color: white,
    ),
    primaryIconTheme: const IconThemeData(
      color: white,
      size: 20,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: transp,
      foregroundColor: transp,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: transp,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
  );
// *==============================================================*//
}
