extension MyStringExtension on String {
  String? get isValid => isEmpty ? 'user name is required' : null;
}
