import 'package:flutter/material.dart';

class MyRegion extends StatelessWidget {
  const MyRegion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tanzania Regions & Zones',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const TanzaniaRegionsPage(),
    );
  }
}

class TanzaniaRegionsPage extends StatefulWidget {
  const TanzaniaRegionsPage({super.key});

  @override
  TanzaniaRegionsPageState createState() => TanzaniaRegionsPageState();
}

class TanzaniaRegionsPageState extends State<TanzaniaRegionsPage> {
  final List<Map<String, String>> regions = [
    // Mainland Regions
    {'name': 'Arusha', 'image': 'assets/images/arusha uhuru toach.webp'},
    {'name': 'Dar es Salaam', 'image': 'assets/images/dar_es_salaam.jpg'},
    {'name': 'Dodoma', 'image': 'assets/images/dodoma tower.jpg'},
    {'name': 'Geita', 'image': 'assets/images/geita tower.jpg'},
    {'name': 'Iringa', 'image': 'assets/images/iringa tower.jpg'},
    {'name': 'Kagera', 'image': 'assets/images/kagera.jpg'},
    {'name': 'Katavi', 'image': 'assets/images/katavi tower.jpg'},
    {'name': 'Kigoma', 'image': 'assets/images/kigoma ujiji.jpg'},
    {'name': 'Kilimanjaro', 'image': 'assets/images/mlima kilimanjaro.jpg'},
    {'name': 'Lindi', 'image': 'assets/images/lindi.jpg'},
    {'name': 'Manyara', 'image': 'assets/images/manyara round.jpg'},
    {'name': 'Mara', 'image': 'assets/images/mara.jpg'},
    {'name': 'Mbeya', 'image': 'assets/images/mbeya tower.jpg'},
    {'name': 'Morogoro', 'image': 'assets/images/morogoro msamvu.jpg'},
    {'name': 'Mtwara', 'image': 'assets/images/mtwara.jpg'},
    {'name': 'Mwanza', 'image': 'assets/images/sato mwanza.jpg'},
    {'name': 'Njombe', 'image': 'assets/images/njombe.jpg'},
    {'name': 'Pemba North', 'image': 'assets/images/pemba_north.jpg'},
    {'name': 'Pemba South', 'image': 'assets/images/pemba_south.jpg'},
    {'name': 'Pwani', 'image': 'assets/images/pwani.jpg'},
    {'name': 'Rukwa', 'image': 'assets/images/rukwa.jpg'},
    {'name': 'songea', 'image': 'assets/images/songea.jpg'},
    {'name': 'Shinyanga', 'image': 'assets/images/shinyanga.jpg'},
    {'name': 'Simiyu', 'image': 'assets/images/simiyu.webp'},
    {'name': 'Singida', 'image': 'assets/images/singida.jpg'},
    {'name': 'Songwe', 'image': 'assets/images/songwe.jpg'},
    {'name': 'Tabora', 'image': 'assets/images/tabora.jpg'},
    {'name': 'Tanga', 'image': 'assets/images/tanga.jpg'},
    {'name': 'Bukoba', 'image': 'assets/images/bukoba ndizi.jpg'},
    
    // Zanzibar Regions
    {'name': 'Unguja North', 'image': 'assets/images/unguja_north.jpg'},
    {'name': 'Unguja South', 'image': 'assets/images/unguja_south.jpg'},
    {'name': 'Urban West', 'image': 'assets/images/urban_west.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TANZANIA REGIONS'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'All Regions of Tanzania',
              style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Including Mainland and Island',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: regions.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Column(
                      children: [
                        Image.asset(
                          regions[index]['image']!,
                          width: 450,
                          height: 340,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 150,
                              color: Colors.grey[200],
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.image_not_supported, size: 40),
                                    Text(
                                      'Image not available',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            regions[index]['name']!,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}