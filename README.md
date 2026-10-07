# Chat App 💬

A real-time chat application built using **Flutter** and **Firebase**. This project features secure user authentication and a clean, intuitive interface for instant messaging.

## 🚀 Features

* **User Authentication:** Secure Sign In and Registration pages.
* **Real-time Messaging:** Send and receive messages instantly via Firebase database.
* **Clean UI:** A simple, responsive, and user-friendly chat interface.

## 🛠️ Tech Stack

* **Frontend:** Flutter & Dart
* **Backend / Database:** Firebase (Authentication, Cloud Firestore)

## 📸 Screenshots

<h3 align="center">Sign In Page</h3>
<p align="center">
  <img width="30%" height="2633" alt="Sign In Page" src="https://github.com/user-attachments/assets/9b870128-b340-47ef-90e0-b6712957c7a2" />
</p>

<h3 align="center">Register Page</h3>
<p align="center">
  <img width="30%" height="2647" alt="Register Page" src="https://github.com/user-attachments/assets/0d655010-1b8b-4f82-a3b9-5dc032c096e5" />
</p>

<h3 align="center">Chat Page</h3>
<p align="center">
  <img width="30%" height="2644" alt="Chat Page" src="https://github.com/user-attachments/assets/bdbd6b0d-e230-4c18-9476-584c59151baf" />
</p>

## 📂 Project Structure

```text
lib/
├── helper/
│   └── show_snack_bar.dart        # Helper functions for UI feedback (e.g., error messages)
├── models/
│   └── message_model.dart         # Data model for parsing and handling chat messages
├── views/
│   ├── chat_view.dart             # Main chat interface screen displaying the message stream
│   ├── login_view.dart            # User sign-in screen
│   └── register_view.dart         # User registration screen
├── widgets/                       # Reusable UI components (custom buttons, text fields, chat bubbles)
├── constants.dart                 # App-wide constants (colors, text styles, collections)
├── firebase_options.dart          # Auto-generated Firebase initialization options
└── main.dart                      # Application entry point and routing setup
```

## ⚙️ Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed on your machine.
- A Firebase project set up.

### Installation

1. Clone the repository:
   ```bash
   git clone [https://github.com/your-username/your-repo-name.git](https://github.com/KM-Fathy/Chat-App.git)
   ```

2. Navigate to the project directory:
   ```bash
   cd Chat-App
   ```

3. Install the dependencies:
   ```bash
   flutter pub get
   ```

4. Configure Firebase:
   - Make sure your Firebase project is connected.
   - Replace or configure `firebase_options.dart` with your own Firebase project credentials. 

5. Run the application:
   ```bash
   flutter run
   ```
