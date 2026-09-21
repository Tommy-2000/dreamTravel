extension StringCheck on String? {
  bool get isNullOrEmpty => this == null || this!.trim().isEmpty;
}