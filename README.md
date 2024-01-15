# News App Using API

## Overview

This Flutter project is a simple News App that fetches data from a public API to display the latest news. It's designed to demonstrate the integration of API calls into a Flutter application.

## Features

- Display a list of news articles.
- View detailed information for each news article.
- Support for pulling the latest news data from a remote API.

## Technologies Used

- **Flutter**: A UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **Dart**: The programming language used by Flutter.
- **API**: The app uses a public news API to fetch real-time news data.

## Getting Started

### Prerequisites

- Make sure you have Flutter installed. If not, follow the [official installation guide](https://flutter.dev/docs/get-started/install).

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/MuhammadSaqlain143/news_app_using_api.git
    ```

2. Navigate to the project directory:

    ```bash
    cd news_app_using_api
    ```

3. Install dependencies:

    ```bash
    flutter pub get
    ```

### Running the App

Run the app on an emulator or physical device:

```bash
flutter run
```

## Configuration

1. Open the `lib/config/api_config.dart` file.
2. Replace the placeholder API key with your actual API key.

```dart
class ApiConfig {
  static const String apiKey = 'YOUR_API_KEY';
}
```

## API Information

The app uses the [News API](https://newsapi.org/) to fetch news data. You will need to sign up for a free API key to use this service.

## Contributing

Feel free to contribute to the project by opening issues or submitting pull requests.

## Hire Me

If you're interested in hiring me or collaborating on projects, you can reach me at [https://muhammadsaqlain.vercel.app/](https://muhammadsaqlain.vercel.app/).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to the [News API](https://newsapi.org/) for providing a free and easy-to-use API for fetching news data.

---
