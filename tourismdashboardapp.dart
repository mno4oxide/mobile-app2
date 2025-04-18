// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tourism_app/safariadventure.dart';
import 'tanzaniazonepagestate.dart';
import 'tanzaniaregions.dart';
//import 'safariadventure.dart';

class TourismDashboardApp extends StatelessWidget {
  const TourismDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Domestic Tourism In Tanzania',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const TourismDashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TourismDashboardPage extends StatelessWidget {
  const TourismDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Domestic Tourism Dashboard'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with welcome message
              const Text(
                'Most Beautifull Destination',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Discover amazing places in Tanzania',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              const SizedBox(height: 20),

              // Combined image section (waterfall and giraffe)
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                ),
                child: Stack(
                  children: [
                    // Waterfall image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image(
                        image: AssetImage('assets/images/kilimanjaro.jpg'),
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Giraffe image overlaid
                    Positioned(
                      bottom: 10,
                      right: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image(
                            image: AssetImage('assets/images/simba.jpg'),
                            width: 180,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    // Text overlay
                    const Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        'Mountain KILIMANJARO             LION',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 10,
                              color: Colors.black,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Quick stats section
              const Text(
                'Quick Stats',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildStatCard(
                    'Destinations',
                    '200+',
                    Icons.location_on,
                    Colors.blue,
                  ),
                  _buildStatCard(
                    'Wildlife Parks',
                    '22',
                    Icons.park,
                    Colors.green,
                  ),
                  _buildStatCard(
                    'Game Reserve',
                    '28',
                    Icons.animation_outlined,
                    Colors.green,
                  ),
                  _buildStatCard('Waterfalls', '15+', Icons.water, Colors.teal),
                  //  _buildStatCard('zones', '7', Icons.search_rounded, Colors.teal),
                ],
              ),
              const SizedBox(height: 20),

              // Popular destinations section
              const Text(
                'Popular Destinations',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildDestinationCard(
                      'Serengeti National Park',
                      'Tanzania\'s famous park',
                      'assets/images/simba.jpg',
                    ),
                    _buildDestinationCard(
                      'Mountain Kilimanjaro',
                      'Africa\'s highest peak',
                      'assets/images/kilimanjaro.jpg',
                    ),
                    _buildDestinationCard(
                      'Ruaha Water Fall',
                      'Found in West of IRINGA',
                      'assets/images/Ruaha.jpg',
                    ),
                    _buildDestinationCard(
                      'Ngorongoro crater',
                      'World\'s largest caldera',
                      'assets/images/ngorongoro.webp',
                    ),
                    _buildDestinationCard(
                      'Forodhani Gardens',
                      'Zanzibar\'s famous waterfront',
                      'assets/images/forodhani.jpg',
                    ),
                    _buildDestinationCard(
                      'Mikumi National Park',
                      'Tanzania\'s famous park',
                      'assets/images/twiga1.jpg',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              //Tanzania Zone
              const Text(
                'All Zone in TANZANIA',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (c) => const MyZone()),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    192,
                    195,
                    248,
                    245,
                  ), // Safari/adventure color
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.search, size: 25, color: Colors.blue),
                    SizedBox(width: 10),

                    Text(
                      'Tanzania Zones(7)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.chevron_right, size: 25),
                  ],
                ),
              ),
              // Upcoming events
              const Text(
                'Upcoming Events',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const SizedBox(height: 10),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (c) => const MyRegion()),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    192,
                    195,
                    248,
                    245,
                  ), // Safari/adventure color
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.image, size: 25, color: Colors.blue),
                    SizedBox(width: 10),

                    Text(
                      'Image of Tanzania Region Indicators',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.chevron_right, size: 25),
                  ],
                ),
              ),

              TextButton(
                onPressed: () {
                  // Navigator.push(
                  // context,
                  //  MaterialPageRoute(builder: (c) => const MyRegion()),
                  // );
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    192,
                    195,
                    248,
                    245,
                  ), // Safari/adventure color
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.forum_rounded, size: 25, color: Colors.blue),
                    SizedBox(width: 10),

                    Text(
                      'Open Forum',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.chevron_right, size: 25),
                  ],
                ),
              ),

              //_buildEventItem('Open Forum', Icons.forum_rounded),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (c) => const MySafari()),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    192,
                    195,
                    248,
                    245,
                  ), // Safari/adventure color
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.landscape, size: 25, color: Colors.blue),
                    SizedBox(width: 10),

                    Text(
                      'Safari Adventure Every Years',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.chevron_right, size: 25),
                  ],
                ),
              ),

              //_buildEventItem('Safari Adventure Every Week', Icons.landscape),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          //BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildStatCard(
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Expanded(
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Icon(icon, size: 30, color: color),
              const SizedBox(height: 10),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                title,
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDestinationCard(
    String name,
    String description,
    String imagePath,
  ) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image:
              imagePath.startsWith('http')
                  ? NetworkImage(imagePath)
                  : AssetImage(imagePath) as ImageProvider,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            // ignore: deprecated_member_use
            Colors.black.withOpacity(0.1),
            BlendMode.darken,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              description,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
