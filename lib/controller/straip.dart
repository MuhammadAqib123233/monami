import 'package:http/http.dart' as http;

final apiUrl = 'https://your-backend-server.com/create-stripe-customer';

Future<void> createStripeCustomer(String userId) async {
  try {
    final response = await http.post(Uri.parse(apiUrl), body: {'userId': userId});
    if (response.statusCode == 200) {
      // Customer created successfully
      print('Stripe customer created for user $userId');
    } else {
      // Error creating customer
      print('Failed to create Stripe customer for user $userId');
    }
  } catch (e) {
    // Exception occurred
    print('Exception: $e');
  }
}