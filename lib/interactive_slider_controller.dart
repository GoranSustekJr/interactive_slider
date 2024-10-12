import 'package:flutter/foundation.dart';

class InteractiveSliderController extends ValueNotifier<double> {
  InteractiveSliderController(super.initialValue);

  /// Set the slider value, but only allow it to change when opacity is less than 1.
  void setValueWithOpacity(double newValue, double opacity) {
    if (opacity < 1) {
      value = newValue.clamp(0.0, 1.0); // The value must be between 0.0 and 1.0
    }
  }
}
