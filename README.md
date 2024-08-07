# MealTime App

## Introduction

MealTime is a user-friendly mobile application designed to simplify meal planning and cooking. Users can explore popular recipes, follow cooking tutorials, read food blogs, and use our unique "Meal AI" feature to create recipes from the ingredients they have. Built with Flutter, Firebase, and OpenAI API, MealTime offers a seamless, personalized, and intelligent cooking experience.

## Features

- **Blogs**: Read engaging articles about cooking, nutrition, and culinary trends, with regular updates.
- **Meal AI**: Input your available ingredients and get custom recipes generated by AI, reducing food waste and enhancing creativity in the kitchen.
- **User Authentication**: Secure login and registration to personalize your experience, save favorite recipes, and track your cooking progress.

## Technical Stack

- **Frontend**: Flutter for developing a cross-platform mobile application.
- **Backend**: Firebase for authentication, real-time database, and cloud storage.
- **AI Integration**: OpenAI API for powering the Meal AI feature.

## Getting Started

### Prerequisites

- Flutter SDK
- Firebase account
- OpenAI API key

### Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/your-username/mealtime-app.git
   cd mealtime-app
   ```

2. **Install Dependencies:**

   ```bash
   flutter pub get
   ```

3. **Set Up Firebase:**

   - Go to the [Firebase Console](https://console.firebase.google.com/).
   - Create a new project.
   - Add your Android and iOS apps to the project.
   - Follow the instructions to download the `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS).
   - Place these files in the appropriate directories in your Flutter project.

4. **Configure OpenAI API:**

   - Obtain your API key from the [OpenAI website](https://beta.openai.com/signup/).
   - Store the API key securely and update your app's configuration to include this key.

5. **Run the App:**

   ```bash
   flutter run
   ```

## Usage

- **Browse Recipes**: Navigate through various categories and search for recipes based on your preferences.
- **Watch Tutorials**: Follow along with video tutorials to learn new cooking techniques and recipes.
- **Read Blogs**: Stay updated with the latest articles on cooking, nutrition, and food trends.
- **Use Meal AI**: Enter the ingredients you have, and let the AI generate a recipe for you.

---


