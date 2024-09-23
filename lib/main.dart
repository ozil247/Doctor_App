import 'package:doctor_app/screen/auth_page.dart';
import 'package:doctor_app/screen/booking_page.dart';
import 'package:doctor_app/screen/doctor_details.dart';
import 'package:doctor_app/screen/success_booked.dart';
import 'package:doctor_app/utils/config.dart';
import 'package:doctor_app/main_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
              focusColor: config.primaryColor,
              border: config.OutlineBorder,
              focusedBorder: config.focusBorder,
              errorBorder: config.errorBorder,
              enabledBorder: config.OutlineBorder,
              floatingLabelStyle: TextStyle(color: config.primaryColor),
              prefixIconColor: Colors.black38),
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: config.primaryColor,
            selectedItemColor: Colors.white,
            showSelectedLabels: false,
            unselectedItemColor: Colors.grey.shade700,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        'main': (context) => const MainLayout(),
        'doc_details': (context) => const DoctorDetails(),
        'booking_page': (context) => BookingPage(),
         'success_booking': (context) => const AppointmentBooked()
      },
    );
  }
}
