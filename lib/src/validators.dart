import 'package:flutter/material.dart';

class SmartValidators {
  static String? required(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  static String? email(String? value) {
    if (required(value) != null) return required(value);

    final emailRegex = RegExp(
      r'^[\w\-.]+@([\w-]+\.)+[\w-]{2,4}$',
    );

    if (!emailRegex.hasMatch(value!)) {
      return 'Enter a valid email';
    }

    return null;
  }

  static String? phone(String? value) {
    if (required(value) != null) return required(value);

    final phoneRegex = RegExp(r'^\d{10}$');

    if (!phoneRegex.hasMatch(value!)) {
      return 'Enter a valid phone number';
    }

    return null;
  }

  static String? password(String? value) {
    if (required(value) != null) return required(value);

    if (value!.length < 8) {
      return 'Password must be at least 8 characters';
    }

    return null;
  }

  static FormFieldValidator<String> minLength(int length) {
    return (value) {
      if (required(value) != null) return required(value);

      if (value!.length < length) {
        return 'Minimum $length characters required';
      }

      return null;
    };
  }

  static FormFieldValidator<String> maxLength(int length) {
    return (value) {
      if (value != null && value.length > length) {
        return 'Maximum $length characters allowed';
      }

      return null;
    };
  }
}