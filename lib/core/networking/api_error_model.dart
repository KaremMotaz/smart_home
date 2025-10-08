class ApiErrorModel {
  final String? error;
  final String message;

  ApiErrorModel({required this.message, this.error});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return ApiErrorModel(
      message: json['message'],
      error: json['error'],
    );
  }
}
