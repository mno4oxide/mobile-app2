import 'package:flutter/material.dart';

class SafariAdventure {
  final String name;
  final String image;
  final String duration;
  final String location;
  final String description;

  SafariAdventure({
    required this.name,
    required this.image,
    required this.duration,
    required this.location,
    required this.description,
  });
}

class SafariPage {
  static final List<SafariAdventure> adventures = [
    SafariAdventure(
      name: "Great Migration Safari (Serengeti)",
      image: "assets/images/serengeti_migration.jpg",
      duration: "5-7 Days",
      location: "Serengeti National Park",
      description: "Witness millions of wildebeest and zebras crossing the plains in one of nature's greatest spectacles.",
    ),
    SafariAdventure(
      name: "Ngorongoro Crater Exploration",
      image: "assets/images/ngorongoro_crater.jpg",
      duration: "1-2 Days",
      location: "Ngorongoro Conservation Area",
      description: "Descend into the world's largest inactive volcanic crater, home to dense wildlife including the Big Five.",
    ),
    SafariAdventure(
      name: "Tarangire Elephant Safari",
      image: "assets/images/tarangire_elephants.jpg",
      duration: "2-3 Days",
      location: "Tarangire National Park",
      description: "See large herds of elephants and ancient baobab trees in this underrated park.",
    ),
    SafariAdventure(
      name: "Lake Manyara Tree-Climbing Lions",
      image: "assets/images/lake_manyara_lions.jpg",
      duration: "1 Day",
      location: "Lake Manyara National Park",
      description: "Spot rare tree-climbing lions and flocks of flamingos by the alkaline lake.",
    ),
    SafariAdventure(
      name: "Selous Boat Safari",
      image: "assets/images/selous_boat.jpg",
      duration: "3-4 Days",
      location: "Nyerere National Park (Selous)",
      description: "Experience hippos, crocs, and wild dogs on a unique riverboat adventure.",
    ),
    SafariAdventure(
      name: "Ruaha Predator Safari",
      image: "assets/images/ruaha_predators.jpg",
      duration: "4-5 Days",
      location: "Ruaha National Park",
      description: "Explore Tanzania's wildest park with high concentrations of lions and leopards.",
    ),
    SafariAdventure(
      name: "Hot Air Balloon Over Serengeti",
      image: "assets/images/serengeti_balloon.jpg",
      duration: "1 Morning",
      location: "Serengeti National Park",
      description: "Float above the savanna at sunrise for a breathtaking aerial view of wildlife.",
    ),
    SafariAdventure(
      name: "Mahale Mountains Chimpanzee Trek",
      image: "assets/images/mahale_chimps.jpg",
      duration: "3-4 Days",
      location: "Mahale Mountains National Park",
      description: "Track chimpanzees in the rainforest by Lake Tanganyika.",
    ),
    SafariAdventure(
      name: "Katavi Wilderness Safari",
      image: "assets/images/katavi_wilderness.jpg",
      duration: "4-5 Days",
      location: "Katavi National Park",
      description: "Remote and untouched wilderness with massive buffalo herds and crocodile-filled rivers.",
    ),
    SafariAdventure(
      name: "Zanzibar Spice & Marine Adventure",
      image: "assets/images/zanzibar_beach.jpg",
      duration: "3-5 Days",
      location: "Zanzibar Island",
      description: "Combine spice tours with snorkeling, diving, and relaxing on pristine beaches.",
    ),
  ];
}

void main() {
  runApp(const MySafari());
}

class MySafari extends StatelessWidget {
  const MySafari({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tanzania Safari Adventures',
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AdventureHomePage(),
    );
  }
}

class AdventureHomePage extends StatelessWidget {
  const AdventureHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Most of Popular Tanzania Adventurs Safaris"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: SafariPage.adventures.length,
        itemBuilder: (context, index) {
          final adventure = SafariPage.adventures[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Image.asset(
                      adventure.image,
                      width: double.infinity,
                      height: 360,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.error, size: 50),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          adventure.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(Icons.location_pin, size: 22),
                            const SizedBox(width: 6),
                            Text(
                                  adventure.location,
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 18, // Set your desired size (default is usually 14)
                                    fontWeight: FontWeight.w500, // Optional: makes text slightly bolder
                                  ),
                                ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(Icons.schedule, size: 22),
                            const SizedBox(width: 4),
                           Text(
                                adventure.duration,
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 18, // Add this line to increase text size
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          adventure.description,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}