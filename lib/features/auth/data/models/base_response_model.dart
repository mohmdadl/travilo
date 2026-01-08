class BaseResponseModel {
  bool isSucsess;
  String? message;

  BaseResponseModel({required this.isSucsess, required this.message});

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) {
    return BaseResponseModel(
      isSucsess: json['success'],
      message: json['message'],
    );
  }
}
