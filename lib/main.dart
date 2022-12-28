import 'package:anonsignin/authenticate/auth.dart';
import 'package:anonsignin/screens/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';

// void main() => runApp( MyApp());

// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return StreamProvider<Users>.value(
//       value: AuthService().user,
//       child: MaterialApp,
//     );
//   }
// }

void main() async {
  {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(
      StreamProvider.value(
        value: AuthService().user,
        initialData: null,
        child: const MaterialApp(
          home: Wrapper(),
        ),
      ),
    );
  }
}
