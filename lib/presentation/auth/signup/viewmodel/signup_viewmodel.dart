// import 'dart:convert';
// import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
// import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/network/api_endpoints.dart';
// import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/data/models/signup_model.dart';

// class SignUpScreenProvider extends ChangeNotifier {
//   bool _isLoading = false;
//   String? _errorMessage;
//   String? _successMessage;

//   bool get isLoading => _isLoading;
//   String? get errorMessage => _errorMessage;
//   String? get successMessage => _successMessage;

//   String? _handleErrorMessage(dynamic message) {
//     if (message == null) return null;
//     if (message is List) {
//       return message.join(", ");
//     }
//     return message.toString();
//   }

//   Future<bool> signUp({
//     required String name,
//     required String email,
//     required String password,
//   }) async {
//     try {
//       _isLoading = true;
//       _successMessage = null;
//       _errorMessage = null;
//       notifyListeners();

//       SingUpModel signUpData = SingUpModel(
//         email: email,
//         name: name,
//         password: password,
//         username: email,
//         latitude: 23.8103,
//         longitude: 90.4125,
//       );

//       final url = Uri.parse(ApiEndpoints.signUp);
//       final response = await http.post(
//         url,
//         headers: {
//           "Content-Type": "application/json",
//           "Accept": "application/json",
//         },
//         body: jsonEncode(signUpData.toJson()),
//       );

//       final data = jsonDecode(response.body);

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         _successMessage =
//             _handleErrorMessage(data['message']) ?? "Registration Successful!";
//         debugPrint("Success Response: ${response.body}");
//         return true;
//       } else {
//         _errorMessage =
//             _handleErrorMessage(data['message']) ??
//             "Error code: ${response.statusCode}";
//         debugPrint("Failure Response: ${response.body}");
//         return false;
//       }
//     } catch (e) {
//       _errorMessage = "Connection Error: ${e.toString()}";
//       debugPrint("SignUp Error: $e");
//       return false;
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }
// }
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/network/api_endpoints.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/data/models/signup_model.dart';

class SignUpScreenProvider extends ChangeNotifier {
  bool _isLoading = false;
  String? _errorMessage;
  String? _successMessage;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  String? get successMessage => _successMessage;

  String? _handleMessage(dynamic message) {
    if (message == null) return null;
    if (message is List) return message.join(", ");
    return message.toString();
  }

  Future<bool> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    _isLoading = true;
    _errorMessage = null;
    _successMessage = null;
    notifyListeners();

    try {
      final signUpData = SingUpModel(
        name: name,
        email: email,
        username: email,
        password: password,
        latitude: 23.8103,
        longitude: 90.4125,
      );

      final response = await http.post(
        Uri.parse(ApiEndpoints.signUp),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        },
        body: jsonEncode(signUpData.toJson()),
      );

      final data = jsonDecode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        _successMessage =
            _handleMessage(data['message']) ?? "Registration Successful";
        return true;
      } else {
        _errorMessage =
            _handleMessage(data['message']) ??
            "Error ${response.statusCode}";
        return false;
      }
    } catch (e) {
      _errorMessage = "Connection error. Please try again.";
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
