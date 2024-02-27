/// Represents a user in the application.
class User {
  final String imagePath; // The path to the user's profile image.
  final String name; // The name of the user.
  final String email; // The email address of the user.
  final String about; // A brief description about the user.
  final bool isDarkMode; // Indicates if the user prefers dark mode.

  const User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.about,
    required this.isDarkMode,
  });
}
