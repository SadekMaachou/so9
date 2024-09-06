import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

const List<String> scopes = <String>[
  'email',
];

GoogleSignIn _googleSignIn = GoogleSignIn(
  // Optional clientId
  // clientId: 'your-client_id.apps.googleusercontent.com',
  scopes: scopes,
);

class GoogleAuth extends StatefulWidget {
  const GoogleAuth({super.key});

  @override
  State<GoogleAuth> createState() => _GoogleAuthState();
}

class _GoogleAuthState extends State<GoogleAuth> {
  GoogleSignInAccount? _currentUser;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount? account) async {
      setState(() {
        _currentUser = account;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final GoogleSignInAccount? user = _currentUser;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            user == null
                ? ElevatedButton(
                    onPressed: () async {
                      setState(() => isLoading = true);
                      await _googleSignIn.signIn();
                      setState(() => isLoading = false);
                    },
                    child: isLoading
                        ? Transform.scale(
                            scale: 0.5,
                            child: const CircularProgressIndicator.adaptive())
                        : const Text('Google Sign in'),
                  )
                : const SizedBox(),
            user != null
                ? Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        await _googleSignIn.signOut();
                      },
                      child: const Text('Google Sign Out'),
                    ),
                  )
                : const SizedBox(),
            Text(user?.displayName ?? ''),
            Text(user?.email ?? ''),
          ],
        ),
      ),
    );
  }
}
