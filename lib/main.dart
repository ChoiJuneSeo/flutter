import 'package:a/screen/GoRoute.dart';
import 'package:a/screen/new_page.dart';
import 'package:a/screen/new_page_go.dart';
import 'package:a/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'Nav.dart';

void main() {
  runApp(
    MaterialApp.router(
      theme: customTheme,
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(path: '/', name: 'home', builder: (context, _) => const HomeWidgetGo()),
          GoRoute(path: '/new', name: 'new', builder: (context, _) => const NewPageGo01()),
          GoRoute(path: '/new/2', name: 'new2', builder: (context, _) => const NewPageGo02()),
        ],
      ),
    ),
  );
}



// void main() {
//   runApp(
//     MaterialApp(
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//         appBarTheme: AppBarTheme(
//           backgroundColor: Colors.green.shade300, // AppBar 배경색 설정
//           foregroundColor: Colors.white, // 글자 색상
//         ),
//       ),
//
//       home:  const HomeWidgetNav(),
//
//     ),
//   );
// }
