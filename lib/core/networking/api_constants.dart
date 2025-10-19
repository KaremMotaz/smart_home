class ApiConstants {
  static const apiBaseUrl = "https://196.221.205.100:8000/";
  static const register = "users";
  static const login = "users/tokens/issue";
  static const refreshToken = "users/tokens/refresh";
  static const getUserData = "users/profile";
  static const updateUser = "users/{user_id}";
  static const updateUserProfilePicture = "users/{user_id}/picture";
  static const updateUserEmail = "users/{user_id}/email";
  static const updateUserUsername = "users/{user_id}/username";
  static const changeSecret = "users/secret";
  static const deleteUser = "users/{user_id}";
  static const addDomain = "domains";
  static const getAllDomains = "domains";
}
