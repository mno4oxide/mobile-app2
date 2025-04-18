/*import 'package:flutter/material.dart';

import 'package:tourism_app/tourismdashboardapp.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 246, 247),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header with logo and title
            Column(
              children: [
                const Text(
                  'domestic TOURISM',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            // Welcome text
            const Text(
              'Welcome to DTP',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            // Subtitle
            const Text(
              'DOMESTIC TOURISM PLATFORM IN TANZANIA',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.grey),
            ),

            const SizedBox(height: 45),

            const SizedBox(height: 425),

            // GET STARTED button at the bottom
            Positioned(
              left: 20,
              right: 20,
              bottom: 120,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to main app
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TourismDashboardPage(),
                  ),
                );
                
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text(
                  'GET STARTED',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
           ],
         ),
      ),
    );   
       
  }
 }*/


import 'package:flutter/material.dart';
import 'package:tourism_app/tourismdashboardapp.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 246, 247),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/giraffe.jpg',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          
          // Main content column
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // This spacer pushes the centered content to the middle
                const Spacer(),
                
                // Centered content
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Header with logo and title
                    const Text(
                      'domestic TOURISM',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Welcome text
                    const Text(
                      'Welcome to DTP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Subtitle
                    const Text(
                      'DOMESTIC TOURISM PLATFORM IN TANZANIA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25, 
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                
                // This spacer creates space between centered content and button
                const Spacer(),
                
                // GET STARTED button at the bottom - NOW LARGER
                SizedBox(
                  width: double.infinity, // Makes button take full width
                  height: 60, // Increased height
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TourismDashboardPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // Rounded corners
                      ),
                    ),
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(
                        fontSize: 20, // Increased font size
                        fontWeight: FontWeight.bold, // Bold text
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),   
    );       
  }
}