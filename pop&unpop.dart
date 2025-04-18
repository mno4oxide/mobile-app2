/*import 'package:flutter/material.dart';

class MyPopular extends StatefulWidget {
  const MyPopular({super.key});

  @override
  State<MyPopular> createState() => _MyPopularState();
}

class _MyPopularState extends State<MyPopular> {
  String? selectedPopularAttraction;
  String? selectedUnpopularAttraction;
  bool isPopularDisabled = false;
  bool isUnpopularDisabled = false;

  final List<String> popularAttractions = [
    'dodoma',
  ];

  final List<String> unpopularAttractions = [
    'tabora'
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular & Unpopular Areas'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Popular Attraction Section
            const Text(
              'Popular Tourism Attraction',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: selectedPopularAttraction,
              items: popularAttractions
                  .map((attraction) => DropdownMenuItem(
                        value: attraction,
                        child: Text(attraction),
                      ))
                  .toList(),
              onChanged: isPopularDisabled
                  ? null
                  : (value) {
                      setState(() {
                        selectedPopularAttraction = value;
                        isUnpopularDisabled = value != null;
                      });
                    },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Select Popular Attraction',
              ),
            ),
            const SizedBox(height: 25),
            // Unpopular Attraction Section
            const Text(
              'Unpopular Tourism Attraction',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: selectedUnpopularAttraction,
              items: unpopularAttractions
                  .map((attraction) => DropdownMenuItem(
                        value: attraction,
                        child: Text(attraction),
                      ))
                  .toList(),
              onChanged: isUnpopularDisabled
                  ? null
                  : (value) {
                      setState(() {
                        selectedUnpopularAttraction = value;
                        isPopularDisabled = value != null;
                      });
                    },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Select Unpopular Attraction',
              ),
            ),
            const SizedBox(height: 33),
            // Reset Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedPopularAttraction = null;
                  selectedUnpopularAttraction = null;
                  isPopularDisabled = false;
                  isUnpopularDisabled = false;
                });
              },
              child: const Text('Reset Selections'),
            ),
          ],
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

class ZoneDetailsPage extends StatelessWidget {
  final Map<String, dynamic> zoneData;

  const ZoneDetailsPage({Key? key, required this.zoneData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(zoneData['name']),
          bottom: TabBar(
            tabs: [
              const Tab(icon: Icon(Icons.grid_view), text: 'Overview'),
              const Tab(icon: Icon(Icons.trending_up), text: 'Popular'),
              const Tab(icon: Icon(Icons.trending_down), text: 'Unpopular'),
            ],
            indicatorColor: Colors.black,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey.withOpacity(0.6),
          ),
        ),
        body: TabBarView(
          children: [
            // Overview Tab
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      zoneData['image'],
                      width: double.infinity,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    zoneData['description'],
                    style: const TextStyle(fontSize: 20, height: 1.8),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Why Visit This Zone?',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '• Unique cultural experiences\n'
                    //'• Diverse landscapes and ecosystems\n'
                    '• Combination of popular attractions areas and Unpopular attraction areas\n'
                    '• Authentic local interactions',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            
            // Popular Places Tab
            ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: zoneData['popular'].length,
              itemBuilder: (context, index) {
                final place = zoneData['popular'][index];
                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                        child: Image.asset(
                          place['image'],
                          width: double.infinity,
                          height: 360,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              place['name'],
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              place['description'],
                              style: const TextStyle(fontSize: 20),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                               // const Icon(Icons.star, color: Colors.amber, size: 20),
                                //const Icon(Icons.star, color: Colors.amber, size: 20),
                                //const Icon(Icons.star, color: Colors.amber, size: 20),
                                //const Icon(Icons.star, color: Colors.amber, size: 20),
                                //Icon(Icons.star, color: Colors.amber.withOpacity(0.6), size: 20),
                                const Spacer(),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('MORE INFO'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            
            // Unpopular Places Tab
            ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: zoneData['unpopular'].length,
              itemBuilder: (context, index) {
                final place = zoneData['unpopular'][index];
                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                        child: Image.asset(
                          place['image'],
                          width: double.infinity,
                          height: 360,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              place['name'],
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              place['description'],
                              style: const TextStyle(fontSize: 20),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              /*children: [
                                const Icon(Icons.thumb_up, color: Colors.green, size: 20),
                                const SizedBox(width: 4),
                                const Text('Hidden Gem', style: TextStyle(color: Colors.green)),
                                const Spacer(),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('DISCOVER MORE'),
                                ),
                              ],*/
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}