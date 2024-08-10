import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> insertData(
    BuildContext context, String email, String password, String secret) async {
  const String address =
      '192.168.110.141'; // Replace with your XAMPP server IP address
  const String path =
      'clinic/UserController/insert_data'; // Ensure this path is correct

  try {
    final response = await http.post(
      Uri.parse('http://$address/$path'),
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      },
      body: {
        'email': email,
        'password': password,
        'secret': secret,
      },
    );

    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      if (data['status'] == 'success') {
        print('Data inserted successfully');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Data inserted successfully')),
        );
      } else {
        print('Error: ${data['message']}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${data['message']}')),
        );
      }
    } else {
      print('Failed to insert data. Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to insert data')),
      );
    }
  } catch (e) {
    print('Error: $e');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('An error occurred')),
    );
  }
}
