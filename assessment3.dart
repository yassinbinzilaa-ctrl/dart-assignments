import 'dart:math' as math_lib;

/// Calculates the Euclidean distance between two 2D points.
///
/// ### Description:
/// This function computes the straight-line distance between two points
/// in a 2D coordinate system using the Euclidean distance formula.
///
/// ### Parameters:
/// - [x1]: X-coordinate of the first point.
/// - [y1]: Y-coordinate of the first point.
/// - [x2]: X-coordinate of the second point.
/// - [y2]: Y-coordinate of the second point.
///
/// ### Returns:
/// A [double] representing the distance between the two points.
///
/// ### Formula:
/// distance = √((x2 - x1)^2 + (y2 - y1)^2)
double calculateEuclideanDistance({
  required double x1,
  required double y1,
  required double x2,
  required double y2,
}) {
  return math_lib.sqrt(
    math_lib.pow(x2 - x1, 2) + math_lib.pow(y2 - y1, 2),
  );
}

/// Old method for calculating distance (deprecated).
@Deprecated("Use calculateEuclideanDistance instead for better clarity and structure.")
double calculateDistanceOld(double x1, double y1, double x2, double y2) {
  return math_lib.sqrt(
    math_lib.pow(x2 - x1, 2) + math_lib.pow(y2 - y1, 2),
  );
}

void testDeprecatedFunction() {
  // استدعاء الدالة القديمة (سيظهر تحذير)
  double distance = calculateDistanceOld(0, 0, 3, 4);
  print("Deprecated distance: $distance");
}

void main() {
  double distance = calculateEuclideanDistance(
    x1: 0,
    y1: 0,
    x2: 3,
    y2: 4,
  );

  print("Euclidean distance: $distance");

  // استدعاء الدالة القديمة لإظهار التحذير
  testDeprecatedFunction();
}