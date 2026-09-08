# flutter_input_text

A reusable Flutter text input widget with built-in validation support for common input types.

## Features

* Reusable `SmartTextInput` widget
* Email validation
* Phone number validation
* Password validation
* Required-field validation
* Minimum and maximum length validation
* Password visibility toggle
* Custom validator support
* Custom controller support
* Prefix and suffix icons
* Keyboard type support
* `onChanged` callback
* Maximum length support
* Works with Flutter `Form` and `TextFormField`

## Installation

Add the package to your Flutter project's `pubspec.yaml`:

```yaml
dependencies:
  flutter_input_text:
    path: ../
```

For a published package, replace the local path with the package version from pub.dev.

Then run:

```bash
flutter pub get
```

## Usage

Import the package:

```dart
import 'package:flutter_input_text/flutter_input_text.dart';
```

### Basic Example

```dart
SmartTextInput(
  label: 'Name',
  hintText: 'Enter your name',
  validator: SmartValidators.required,
)
```

### Email Input

```dart
SmartTextInput(
  label: 'Email',
  hintText: 'Enter your email',
  keyboardType: TextInputType.emailAddress,
  validator: SmartValidators.email,
)
```

### Phone Input

```dart
SmartTextInput(
  label: 'Phone',
  hintText: 'Enter 10 digit phone number',
  keyboardType: TextInputType.phone,
  validator: SmartValidators.phone,
)
```

### Password Input

```dart
SmartTextInput(
  label: 'Password',
  hintText: 'Enter your password',
  obscureText: true,
  validator: SmartValidators.password,
)
```

The password field automatically provides a visibility toggle.

## Form Validation

The widget can be used directly inside a Flutter `Form`.

```dart
final formKey = GlobalKey<FormState>();

Form(
  key: formKey,
  child: Column(
    children: [
      SmartTextInput(
        label: 'Email',
        keyboardType: TextInputType.emailAddress,
        validator: SmartValidators.email,
      ),

      const SizedBox(height: 16),

      SmartTextInput(
        label: 'Password',
        obscureText: true,
        validator: SmartValidators.password,
      ),

      const SizedBox(height: 24),

      ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            print('Form is valid');
          }
        },
        child: const Text('Submit'),
      ),
    ],
  ),
)
```

## Built-in Validators

### Required

```dart
validator: SmartValidators.required,
```

Checks whether the input is empty.

### Email

```dart
validator: SmartValidators.email,
```

Validates the input as an email address.

### Phone

```dart
validator: SmartValidators.phone,
```

Validates a 10-digit phone number.

### Password

```dart
validator: SmartValidators.password,
```

Requires a password with at least 8 characters.

### Minimum Length

```dart
validator: SmartValidators.minLength(6),
```

### Maximum Length

```dart
validator: SmartValidators.maxLength(20),
```

## SmartTextInput Parameters

| Parameter      | Type                          | Description                            |
| -------------- | ----------------------------- | -------------------------------------- |
| `controller`   | `TextEditingController?`      | Controls the text field                |
| `label`        | `String?`                     | Label displayed above/inside the field |
| `hintText`     | `String?`                     | Hint text                              |
| `obscureText`  | `bool`                        | Hides text for password fields         |
| `keyboardType` | `TextInputType`               | Keyboard/input type                    |
| `prefixIcon`   | `Widget?`                     | Icon before the input                  |
| `suffixIcon`   | `Widget?`                     | Icon after the input                   |
| `validator`    | `FormFieldValidator<String>?` | Custom or built-in validation          |
| `onChanged`    | `ValueChanged<String>?`       | Called when text changes               |
| `maxLength`    | `int?`                        | Maximum number of characters           |

## Example Project

The package includes an `example` Flutter application demonstrating how to use `SmartTextInput` and the built-in validators.

From the package directory:

```bash
cd example
flutter pub get
flutter run
```

## Project Structure

```text
flutter_input_text/
├── lib/
│   ├── flutter_input_text.dart
│   └── src/
│       ├── smart_text_input_widget.dart
│       └── validators.dart
├── example/
│   ├── lib/
│   │   └── main.dart
│   └── pubspec.yaml
├── test/
├── pubspec.yaml
└── README.md
```



MIT License
 
Copyright (c) 2026 Excelsior Technologies
 
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
 
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
