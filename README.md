# 🍣 Food Ordering App

A modern and elegant food ordering application built with Flutter. This app provides a seamless experience for browsing menu items, managing cart, and placing orders.

## 📱 Features

- **Authentication System** - Secure login page for user authentication
- **Interactive Menu** - Browse through available food items with images and ratings
- **Shopping Cart** - Add items to cart with quantity selection
- **Product Management** - Add new products to the menu
- **Settings Page** - Customize app preferences
- **Intro Page** - Welcome screen for new users
- **State Management** - Efficient state management using Provider pattern
- **Responsive UI** - Beautiful and responsive user interface

## 🏗️ Project Structure

```
lib/
├── main.dart                    # Application entry point
├── components/                  # Reusable UI components
│   ├── button.dart
│   └── food_title.dart
├── models/                      # Data models
│   ├── food.dart               # Food item model
│   └── shop.dart               # Shop state management
├── pages/                       # Application screens
│   ├── intro_page.dart         # Welcome screen
│   ├── login_page.dart         # Authentication
│   ├── menu_page.dart          # Food menu listing
│   ├── food_details_page.dart  # Product details
│   ├── cart_page.dart          # Shopping cart
│   ├── new_product_page.dart   # Add new products
│   └── settings_page.dart      # App settings
├── theme/                       # App theming
│   └── colors.dart
└── image/                       # Asset images
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (^3.9.2)
- Dart SDK
- Android Studio / VS Code
- An emulator or physical device

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd flutter_application_1
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 📦 Dependencies

- **flutter** - UI framework
- **provider** (^6.1.2) - State management
- **google_fonts** (^6.1.0) - Custom typography
- **cupertino_icons** (^1.0.8) - iOS style icons

## 🎨 Key Components

### Food Model
Represents a food item with properties:
- Name
- Price
- Image path
- Rating

### Shop Model
Manages the application state:
- Food menu list
- Shopping cart operations
- Add/remove cart items
- State notifications

## 📄 Available Routes

- `/login` - Login page
- `/intropage` - Introduction screen
- `/menupage` - Main menu
- `/cartpage` - Shopping cart
- `/settings` - Settings
- `/newproduct` - Add new product

## 🛠️ Development

### Running Tests
```bash
flutter test
```

### Building for Production

**Android:**
```bash
flutter build apk --release
```

**iOS:**
```bash
flutter build ios --release
```

**Web:**
```bash
flutter build web
```

## 📚 Learning Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Provider Package](https://pub.dev/packages/provider)
- [Google Fonts Package](https://pub.dev/packages/google_fonts)
- [Flutter Cookbook](https://docs.flutter.dev/cookbook)

## 👨‍💻 Development Notes

This project uses:
- **Provider** for state management
- **Material Design** principles
- **Custom theme** configuration
- **Reusable components** architecture
- **Clean code** structure

## 🤝 Contributing

Contributions are welcome! Feel free to submit issues and pull requests.

## 📝 License

This project is available for educational purposes.

---

**Note:** This is a university project (Vize Projesi) developed for learning purposes.
