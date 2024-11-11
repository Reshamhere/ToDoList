
# TodoList App

## Overview
Welcome to the TodoList App! This iOS application, built using **SwiftUI** and **Firebase** for backend support, offers a seamless way to manage your daily tasks. The app includes essential features such as user authentication, creating and editing todos, and profile management.

## Features
- **User Authentication**: Secure login and registration pages for user access.
- **Todo Management**:
  - Add new todos
  - Edit existing todos
  - Delete todos
- **Profile Page**:
  - View user name and email
  - Logout option for secure session termination

## Screenshots

- **Launch Screen, Login Page & Registration Page:**
  ![1](https://github.com/user-attachments/assets/457e17aa-314f-459b-b2e6-4cb89473032d)
  
- **Home Page, Add new item and Profile Page:**
  ![2](https://github.com/user-attachments/assets/02ab4547-1ed3-452c-bcf8-6784b6e27c98)


## Installation and Setup
To get started with this project, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-repo-link/todolist-app.git
   ```

2. **Navigate to the project directory**:
   ```bash
   cd todolist-app
   ```

3. **Install Firebase dependencies**:
   Ensure you have Firebase SDK integrated into your project. You can do this via **CocoaPods**:
   ```bash
   pod install
   ```

4. **Open the project**:
   Open the `.xcworkspace` file in Xcode.

5. **Configure Firebase**:
   - Go to [Firebase Console](https://console.firebase.google.com/).
   - Create a new project and register your iOS app.
   - Download the `GoogleService-Info.plist` file and add it to your Xcode project.

6. **Build and Run**:
   Ensure your Xcode build settings are correct, and run the app on a simulator or device.

## Key Learnings
This project was a profound learning experience in various aspects of iOS development and Firebase integration:
- **SwiftUI**: Enhanced understanding of designing declarative UI components.
- **Firebase**: Gained hands-on experience with Firebase Authentication and Firestore for real-time data management.
- **State Management**: Improved skills in managing states efficiently within a SwiftUI environment.
- **User Experience**: Learned how to design a simple, user-friendly interface for task management.

## Credits
This project was inspired by and developed under the guidance of the excellent tutorial series by **iOS Academy** on YouTube. Their comprehensive walkthrough was invaluable in understanding the integration of Firebase with SwiftUI and building robust authentication mechanisms.

## Future Enhancements
Here are some features I plan to add:
- **Push Notifications**: Reminders for due tasks.
- **Dark Mode**: Improved UI for better accessibility.
- **Advanced User Settings**: Customizable options for user preferences.

## Conclusion
I am thrilled to share this project as it has been an enriching learning journey. From integrating Firebase authentication to building a functional todo management system with SwiftUI, this project has solidified my understanding of full-stack iOS app development.

Thank you for checking out the TodoList App!

Feel free to explore, test, and share feedback!
