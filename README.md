# Themes App

A Flutter application that demonstrates dynamic theme switching with persistent storage using the BLoC pattern and SharedPreferences.

## Features

- **Dynamic Theme Switching**: Switch between Light, Dark, and System themes
- **Persistent Storage**: Theme preferences are saved and restored using SharedPreferences
- **Modern Architecture**: Built with Flutter BLoC for state management
- **Responsive Design**: Adapts to different screen sizes and orientations
- **Cross-Platform**: Supports Android, iOS, Web, Windows, macOS, and Linux

## Screenshots

_Add screenshots of your app here_

## Architecture

This project follows a clean architecture pattern with the following structure:

```
lib/
├── app/
│   └── cubit/           # BLoC state management
│       ├── app_cubit.dart
│       └── app_state.dart
├── cache/               # Data persistence layer
│   ├── cache_helper.dart
│   └── cache_helper_key.dart
├── screens/             # UI screens
│   └── home_screen.dart
└── main.dart           # App entry point
```

### Key Components

- **AppCubit**: Manages theme state and persistence
- **CacheHelper**: Handles SharedPreferences operations with singleton pattern
- **HomeScreen**: Main UI for theme selection

## Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / VS Code with Flutter extensions
- Git

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/themes.git
   cd themes
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Building for Production

**Android APK:**

```bash
flutter build apk --release
```

**iOS:**

```bash
flutter build ios --release
```

**Web:**

```bash
flutter build web --release
```

## Dependencies

The project uses the following key dependencies:

- **flutter_bloc**: State management using BLoC pattern
- **shared_preferences**: Local data persistence
- **flutter**: Core Flutter framework

See `pubspec.yaml` for the complete list of dependencies.

## Usage

### Theme Switching

The app automatically loads the last selected theme on startup. Users can switch between:

- **Light Theme**: White background with amber app bar
- **Dark Theme**: Black background with dark grey app bar
- **System Theme**: Follows the device's system theme setting

### State Management

The app uses BLoC pattern for state management:

- **AppCubit**: Handles theme selection and persistence
- **AppState**: Represents different app states
- **ThemeChangedState**: Emitted when theme changes

### Data Persistence

Theme preferences are automatically saved to device storage using SharedPreferences:

- Theme selection persists across app restarts
- No internet connection required
- Data is stored locally on the device

## Project Structure

```
themes/
├── android/          # Android-specific files
├── ios/             # iOS-specific files
├── lib/             # Main Dart code
├── web/             # Web-specific files
├── windows/         # Windows-specific files
├── macos/           # macOS-specific files
├── linux/           # Linux-specific files
├── test/            # Unit and widget tests
├── pubspec.yaml     # Dependencies and project configuration
└── README.md        # This file
```

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Flutter team for the amazing framework
- BLoC pattern contributors
- SharedPreferences package maintainers

## Support

If you encounter any issues or have questions:

1. Check the [Issues](https://github.com/yourusername/themes/issues) page
2. Create a new issue with detailed description
3. Contact the maintainers

---

**Happy Coding! 🚀**
