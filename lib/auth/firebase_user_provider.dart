import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class IPMitpmFirebaseUser {
  IPMitpmFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

IPMitpmFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<IPMitpmFirebaseUser> iPMitpmFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<IPMitpmFirebaseUser>(
        (user) => currentUser = IPMitpmFirebaseUser(user));
