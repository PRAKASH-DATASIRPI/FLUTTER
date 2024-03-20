import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ses_flutter_project/widgets/dashboard_logo.dart';

class DashboardPage extends StatelessWidget {
  final List<String> images = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg',
    'assets/5.jpg',
    'assets/6.jpg',
    'assets/9.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aquarium Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 200,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: DashboardLogo(),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Welcome, Future Engineer!',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Navigating to the Dashboard Page
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                // Navigating to the Profile Page
                Navigator.popAndPushNamed(context, '/dashboard/profile');
              },
            ),
            ListTile(
              title: const Text('Events'),
              onTap: () {
                // Navigate to the courses page
                Navigator.popAndPushNamed(context, '/dashboard/courses');
              },
            ),
            ListTile(
              title: const Text('Tickets'),
              onTap: () {
                // Navigate to the grades page
                Navigator.popAndPushNamed(context, '/dashboard/grades');
              },
            ),
            ListTile(
              title: const Text('Timing Slot'),
              onTap: () {
                // Navigate to the schedule page
                Navigator.popAndPushNamed(context, '/dashboard/schedule');
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                // Perform logout logic here
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Dashboard.jpg'), // Background image path
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'Welcome to Your Aquarium Dashboard',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  '"An aquarium ( pl. : aquariums or aquaria) is a vivarium of any size having at least one transparent side in which aquatic plants or animals are kept and displayed.',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily:
                        'Roboto', // Replace with your desired professional font
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10.0),
                Text(
                  '"Fishkeepers use aquaria to keep fish, invertebrates, amphibians, aquatic reptiles, such as turtles, and aquatic plants.',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily:
                        'Roboto', // Replace with your desired professional font
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10.0),
                Text(
                  '"Placing one in a childs bedroom can help them fall asleep at night.',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily:
                        'Roboto', // Replace with your desired professional font
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10.0),
                Text(
                  '"The way to succeed is to double your failure rate." - Thomas J. Watson',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily:
                        'Roboto', // Replace with your desired professional font
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
                CarouselSlider(
                  items: images.map((image) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 400,
                    viewportFraction: 0.9,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                  ),
                ),
                const SizedBox(height: 20.0),
                Card(
                  elevation: 3.0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Upcoming Events',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        ListTile(
                          title: const Text('Bubble Bash'),
                          subtitle: const Text('April 15, 2024'),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {
                            // Navigate to event details page
                          },
                        ),
                        ListTile(
                          title: const Text('Shark In The Dark Overnights'),
                          subtitle: const Text('May 20, 2024'),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {
                            // Navigate to event details page
                          },
                        ),
                        ListTile(
                          title: const Text('F.I.S.H. Night'),
                          subtitle: const Text('June 25, 2024'),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {
                            // Navigate to event details page
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
