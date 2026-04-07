class JsonParser {
  static int? toIntOrNull(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    if (value is num) return value.toInt();
    if (value is String) {
      try {
        return int.parse(value);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  static int toIntOrDefault(dynamic value, {int defaultValue = 0}) {
    return toIntOrNull(value) ?? defaultValue;
  }

  static double? toDoubleOrNull(dynamic value) {
    if (value == null) return null;
    if (value is double) return value;
    if (value is int) return value.toDouble();
    if (value is num) return value.toDouble();
    if (value is String) {
      try {
        return double.parse(value);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  static double toDoubleOrDefault(dynamic value, {double defaultValue = 0.0}) {
    return toDoubleOrNull(value) ?? defaultValue;
  }

  static String? toStringOrNull(dynamic value) {
    if (value == null) return null;
    return value.toString();
  }

  static String toStringOrDefault(dynamic value, {String defaultValue = ''}) {
    return toStringOrNull(value) ?? defaultValue;
  }

  static bool? toBoolOrNull(dynamic value) {
    if (value == null) return null;
    if (value is bool) return value;
    if (value is String) {
      return value.toLowerCase() == 'true';
    }
    if (value is num) {
      return value != 0;
    }
    return null;
  }

  static bool toBoolOrDefault(dynamic value, {bool defaultValue = false}) {
    return toBoolOrNull(value) ?? defaultValue;
  }
}
