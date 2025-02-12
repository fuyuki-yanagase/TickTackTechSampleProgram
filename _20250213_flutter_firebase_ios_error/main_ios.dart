
// import "package:universal_platform/universal_platform.dart";

// Future<void> main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  
//   FirebaseMessaging fireMsg = FirebaseMessaging.instance;
  
//   // ここを追加
//   if(UniversalPlatform.isIOS){ 
//     while (await fireMsg.getAPNSToken() == null) {
//       await Future.delayed(const Duration(milliseconds: 100));
//     }
//   }

//   String fireToken = await fireMsg.getToken();

//   runApp(MainApp());
// }
