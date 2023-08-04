

import 'package:flutter/material.dart';
import 'package:practice/place.dart';


void main() {
  runApp(MaterialApp(
  home: HomeScreen(),
    debugShowCheckedModeBanner: false,

    routes: {
    "place":(context) =>Place(),
    },
  ),
  );
}

class TourismApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourism App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Destination> popularDestinations = [
    Destination(
      id: 1,
      title: 'Tajmahal',
      description: 'The city of love and lights!',
      image: 'assets/Images/Tajmahal.jpg',
    ),
    Destination(
      id: 2,
      title: 'Mumbai',
      description: 'The city that never sleeps!',
      image: 'assets/Images/gujarath.jpg',
    ),
    Destination(
      id: 3,
      title: 'kerala',
      description: 'The city that never sleeps!',
      image: 'assets/Images/Kerala.jpg',
    ),
    Destination(
      id: 4,
      title: 'Tamil nadu',
      description: 'The city of love and lights!',
      image: 'assets/Images/tamil.jpg',
    ),
    Destination(
      id: 5,
      title: 'Goa',
      description: 'The city that never sleeps!',
      image: 'assets/Images/goa.jpg',
    ),
    Destination(
      id: 6,
      title: 'Bangalore',
      description: 'Capital of the Indian State of Karnataka .',
      image: 'assets/Images/bangalore.jpg',
    ),

    // Add more destinations as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Destinations'),
      ),
      body: ListView.builder(
        itemCount: popularDestinations.length,
        itemBuilder: (context, index) {
          final destination = popularDestinations[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DestinationDetailsScreen(destination: destination),
                ),
              );
            },
            child: DestinationCard(destination: destination),
          );
        },
      ),
    );
  }
}

class Destination {
  final int id;
  final String title;
  final String description;
  final String image;

  Destination({required this.id, required this.title, required this.description, required this.image});
}

class DestinationCard extends StatelessWidget {
  final Destination destination;

  DestinationCard({required this.destination});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Image.asset(
            destination.image,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destination.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(destination.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DestinationDetailsScreen extends StatelessWidget {
  final Destination destination;

  DestinationDetailsScreen({required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(destination.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              destination.image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              destination.description,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
