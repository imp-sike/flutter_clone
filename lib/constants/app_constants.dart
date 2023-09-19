class AppConstants {
  // Private constructor
  AppConstants._();

  // The single instance of MySingleton
  static final AppConstants _instance = AppConstants._();

  // Factory constructor to provide access to the singleton instance
  factory AppConstants() {
    return _instance;
  }
  double scrollPosition = 0;
  double accumulatedScrollDelta = 0.0;
}
