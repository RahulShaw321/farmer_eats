import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/uesr_auth.dart';

// State: Login Status
final loginProvider = StateNotifierProvider<LoginNotifier, AsyncValue<void>>(
  (ref) => LoginNotifier(),
);

class LoginNotifier extends StateNotifier<AsyncValue<void>> {
  LoginNotifier() : super(const AsyncValue.data(null));

  // Login function
  Future<void> login(UserAuth userAuth) async {
    state = const AsyncValue.loading(); // Set loading state
    final url = Uri.parse('https://sowlab.com/assignment/user/login');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(userAuth.toJson()),
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);

        if (responseBody['success'] == true) {
          // Login succeeded
          state = const AsyncValue.data(null);
          print('Login successful');
        } else {
          // Handle email-related or validation error
          final errorMessage = responseBody['message'] ?? 'Invalid email or password';
          state = AsyncValue.error(errorMessage,StackTrace.current);
        }
      } else if (response.statusCode == 401) {
        // Password is incorrect
        state = AsyncValue.error('Incorrect password',StackTrace.current);
      } else {
        // Handle other HTTP errors
        state = AsyncValue.error('Unexpected error: ${response.statusCode}',StackTrace.current);
      }
    } catch (e) {
      // Handle network errors
      state = AsyncValue.error(e.toString(),StackTrace.current);
    }
  }
}
