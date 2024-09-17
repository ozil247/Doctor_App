// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:doctor_app/commponets/appointment_card.dart';
import 'package:doctor_app/commponets/doctors_card.dart';
import 'package:doctor_app/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> MedCat = [
    {"icon": FontAwesomeIcons.userDoctor, "category": 'General'},
    {"icon": FontAwesomeIcons.heartPulse, "category": 'Cardiology'},
    {"icon": FontAwesomeIcons.lungs, "category": 'Respiration'},
    {"icon": FontAwesomeIcons.hand, "category": 'Dermatology'},
    {"icon": FontAwesomeIcons.personPregnant, "category": 'Gynecology'},
    {"icon": FontAwesomeIcons.teeth, "category": 'Dental'},
  ];
  @override
  Widget build(BuildContext context) {
    config().init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Kingsley',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/profile.jpeg'),
                      ),
                    )
                  ],
                ),
                config.spaceSmall,
                const Text(
                  'Category',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                config.spaceSmall,
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List<Widget>.generate(MedCat.length, (index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        margin: const EdgeInsets.only(right: 20),
                        color: config.primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              FaIcon(
                                MedCat[index]['icon'],
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                MedCat[index]['category'],
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                config.spaceSmall,
                const Text(
                  'Appointment Today',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                config.spaceSmall,
                AppointmentCard(),
                config.spaceSmall,
                  const Text(
                  'Top Doctors ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                config.spaceSmall,
                Column(
                  children: List.generate(10, (index) {
                    return const DoctorsCard(route: "doc_details",);
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
