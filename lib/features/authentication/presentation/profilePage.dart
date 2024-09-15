import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../data/auth_providers.dart';

class ProfilePage extends ConsumerWidget {
  final GoogleSignInAccount user;

  const ProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(user.photoUrl ?? ''),
              ),
              const SizedBox(height: 16),
              Text(
                'Name: ${user.displayName}',
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'Email: ${user.email}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      ref.read(authStateProvider.notifier).signOut();
                      Navigator.pushReplacementNamed(context, '/sign-in');
                    },
                    child: const Text('Logout'),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
