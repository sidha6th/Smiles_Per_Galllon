import 'package:smiles_per_gallon/extra/exports.dart';

ThemeData themeData = MyAppTheme.whiteThemeData;

class MyAppTheme {
// *==============================================================*//
  static final ThemeData whiteThemeData = ThemeData(
    iconTheme: const IconThemeData(
      color: grey,
    ),
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
