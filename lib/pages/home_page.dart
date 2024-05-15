import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app_ui/util/category_card.dart';
import 'package:medical_app_ui/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // name
                  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const SizedBox(height: 16,),
                      Text(
                        'Hello,',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),

                     const SizedBox(height: 8,),

                      Text(
                          'Arifuzzaman Shakil',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  // profile pic
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                      child: Icon(Icons.person)
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25,),

            // card -> how do you feel?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    // animation or cute pic
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 100,
                      width:100,
                    ),

                    SizedBox(width: 40,),

                    // how do you feel + get started button
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'How do you feel?',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),

                          const SizedBox(height: 4,),

                          Text(
                              'Fill out your medical card right now',
                            style: TextStyle(fontSize: 14),
                          ),

                          const SizedBox(height: 4,),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple[200],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                    'Get Started',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25,),

            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you?',
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25,),

            // horizontal listview -> categories: dentist, surgeon etc...
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    categoryName: 'Dentist',
                    iconImagePath: 'lib/icons/tooth.png',
                  ),
                  CategoryCard(
                    categoryName: 'Surgeon',
                    iconImagePath: 'lib/icons/surgeon.png',
                  ),
                  CategoryCard(
                    categoryName: 'Pharmasist',
                    iconImagePath: 'lib/icons/medicine.png',
                  ),

                ],
              ),
            ),

            const SizedBox(height: 25,),

            // doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor list',
                    style: TextStyle(
                        fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                      'See all',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25,),

           Expanded(
               child: Container(
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children: [
                     DoctorCard(
                       doctorImagePath: 'lib/images/doctor1.png',
                       rating: ' 4.9',
                       doctorName: 'Dr. Arlene McCay',
                       doctorProfession: 'Therapist, 7 y.e.',
                     ),
                     DoctorCard(
                       doctorImagePath: 'lib/images/doctor2.png',
                       rating: ' 5.0',
                       doctorName: 'Dr. Nilkontho',
                       doctorProfession: 'Surgeon, 9 y.e.',
                     ),
                     DoctorCard(
                       doctorImagePath: 'lib/images/doctor3.png',
                       rating: ' 4.3',
                       doctorName: 'Dr. Polash',
                       doctorProfession: 'Pshycologist, 12 y.e.',
                     ),
                   ],
                 ),
               ),
           ),

          ],
        ),
      ),
    );
  }
}
