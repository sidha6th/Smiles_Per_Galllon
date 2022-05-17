import 'package:smiles_per_gallon/extra/exports.dart';
// ========== MediaQuery services extention ========== //
extension MediaQuerySize on BuildContext {
  Size getSize() => MediaQuery.of(this).size;
}
// ========== MediaQuery services extention ========== //