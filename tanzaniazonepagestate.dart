/*import 'package:flutter/material.dart';


class  TanzaniaZonePageState extends StatelessWidget {
  const TanzaniaZonePageState({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tanzania zones',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TouristPlacesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TouristPlacesScreen extends StatelessWidget {
  final List<String> places = [
    'Central Zone ',
    'Coastal Zone',
    'Lake zone',
    'Northern Zone',
    'Southern Highlands Zone',
    'Southern Zone',
    'Western Zone',
    'Zanzibar'
  ];

 

  //const TouristPlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Tanzania Zones',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 16),
              ...places.map((place) => Column(
                children: [
                  Divider(height: 1, color: Colors.grey[300]),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      place,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              )),
              Divider(height: 1, color: Colors.grey[300]),
            ],
          ),
        ),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'pop&unpop.dart';
import 'tourismdashboardapp.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tanzania Zones',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const TanzaniaZonePage(),
    );
  }
}

class TanzaniaZonePage extends StatefulWidget {
  const TanzaniaZonePage({super.key});

  @override
  TanzaniaZonePageState createState() => TanzaniaZonePageState();
}

class TanzaniaZonePageState extends State<TanzaniaZonePage> {
  final List<Map<String, String>> zones = [
    {'name': 'Central Zone', 'image': 'assets/images/central zone.jpg'},
    {'name': 'Coastal Zone', 'image': 'assets/images/coastal zone.jpg'},
    {'name': 'Western Zone', 'image': 'assets/images/western zone.jpg'},
    {
      'name': 'Southern Highland Zone',
      'image': 'assets/images/southern high land.jpg',
    },
    {'name': 'Lake Zone', 'image': 'assets/images/lake zone.jpg'},
    {'name': 'Zanzibar', 'image': 'assets/images/zanzibar.jpg'},
    {'name': 'Northern Zone', 'image': 'assets/images/kilimanjaro.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TANZANIA ZONES'),
        centerTitle: true,
        //leading: IconButton(
          //icon: const Icon(Icons.arrow_back),
         // onPressed: () => Navigator.pop(context), // Normal back button
       // ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => TourismDashboardApp(),
                ),
              );
            },
            tooltip: 'Go to Dashboard',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'All Zones Found In Tanzania',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: zones.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.asset(
                        zones[index]['image']!,
                        width: 450,
                        height: 340,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 25),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyPopular(),
                            ),
                          );
                        },
                        child: Text(
                          zones[index]['name']!,
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/


import 'package:flutter/material.dart';
import 'pop&unpop.dart';
import 'tourismdashboardapp.dart';

void main() {
  runApp(const MyZone());
}

class MyZone extends StatelessWidget {
  const MyZone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tanzania Zones',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const TanzaniaZonePage(),
    );
  }
}

class TanzaniaZonePage extends StatefulWidget {
  const TanzaniaZonePage({super.key});

  @override
  TanzaniaZonePageState createState() => TanzaniaZonePageState();
}

class TanzaniaZonePageState extends State<TanzaniaZonePage> {
  final List<Map<String, dynamic>> zones = [
    {
      'name': 'Central Zone',
      'image': 'assets/images/central zone.jpg',
      'description': 'The Central Zone encompasses three regions: Dodoma, Singida, and Tabora. As the political capital of Tanzania, Dodoma serves as the administrative hub of the country. In this zone, travelers can explore historical sites, vibrant markets, and the diverse culture of the local communities.',
      'popular': [
        {
          'name': 'Dodoma City',
          'image': 'assets/images/bunge.jpg',
          'description': 'officially Dodoma City Jiji Kuu la Dodoma in Swahili is the capital city of Tanzania. With a population of 765179 it is also the administrative capital of both Dodoma Municipal Council and the entire Dodoma Region.\n\n On July 2024 it was official that Dodoma has surpassed Arusha to become the third largest city in Tanzania on both infrastructure and population measures. In 1974 the Tanzanian government announced that Tanzanias national capital would be moved from Dar es Salaam to Dodoma for social and economic reasons and to centralise the capital within the country. It became the official capital in 1996. Geography, Located in the centre of the country, the town is 453 kilometres (281 mi) west of the former capital at Dar es Salaam and 441 kilometres (274 mi) south of Arusha, the headquarters of the East African Community. It is 259 kilometres (161 miles) north of Iringa through Mtera. It is also 260 kilometres (160 miles) west of Morogoro. It covers an area of 2,669 square kilometres (1,031 sq mi) of which 625 square kilometres (241 sq mi) is urbanized.'
        },
        {
          'name': 'Mtera Dam',
          'image': 'assets/images/mtera.jpg',
          'description': 'Mtera Dam is a hydroelectric dam in Tanzania. The dam is located midway between Iringa and Dodoma on the border between the Iringa Region and the Dodoma Region. The travel time from Dodoma is about two hours on a tarmac road. Mtera Dam is a large hydroelectric dam in Tanzania. It measures 660 square kilometres (250 sq mi) at full capacity. The lake is 56 kilometres (35 mi) long, and 15 kilometres (9.3 mi) wide, and is feed by the Great Ruaha River and the Kisigo River. It was built from 1975 to 1979 for the purpose of regulating water level at the downstream at the Ruaha installed Kidatu Hydro-electric Dam. It has a capacity of 80 megawatts (110,000 hp).'
        },
        {
          'name': 'Kondoa Cut Out cave Drawings',
          'image': 'assets/images/kondoa.jpg',
          'description': 'Nestled in the heart of Tanzania, the Kondoa Irangi Rock Paintings stand as a testament to the rich history and cultural heritage of the African continent.\n\n This stunning collection of ancient art, dating back thousands of years, offers a unique glimpse into the lives of the earliest inhabitants of the region. If youre planning your next adventure, a tour of the Kondoa Irangi Rock Paintings should undoubtedly be on your list. The Kondoa Irangi Rock Paintings are located in central Tanzania, about a 3-hour drive from the town of Dodoma. This UNESCO World Heritage site is contains one of the world’s optimum collections of prehistoric rock art with an estimated 1600 distinct cave paintings in almost two hundred different sites.\n\n The Irangi Hills north of Kondoa is the most accessible site than all. Kolo Rock Ancient Paintings, located in the area between Singida and the Irangi Hills in the village called Kondoa Irangi Dodoma region. The most recent cave paintings are estimated to be a century or two ago while the oldest are between 19,000 and 30,000 years old.'
        },
         {
          'name': 'Dodoma University',
          'image': 'assets/images/UDOM.jpg',
          'description': 'The University of Dodoma was formally established in March 2007 following the signing of the Charter by the President of the United Republic of Tanzania Jakaya Mrisho Kikwete. The first academic programmes commenced in September 2007. Currently UDOM is the fastest growing university within the country it is bigger than any other university within the country and it is praised for producing competent and qualified candidates capable of competing in job markets. The University of Dodoma (UDOM) is a public university located in Dodoma the country\'s capital in central Tanzania. Building is taking place on a 6,000-hectare site in the Chimwaga area about 8 kilometres 5.0 mi east of downtown Dodoma.'
        },
        {
                'name': 'Kijiji Cha Waswahili (Swahili Village)',
                'image': 'assets/images/singida vilage.jpg',
                'description':  'Kijiji Cha Waswahili, also known as the Swahili Village, is a must-visit attraction in Singida, Tanzania. '
                                'This unique cultural site offers visitors a glimpse into the rich heritage and traditions of the Swahili people.\n\n '
                                'Located in the heart of Singida town, Kijiji Cha Waswahili showcases a collection of traditional Swahili houses and buildings.\n\n '
                                'These structures have been meticulously crafted and maintained to preserve their authenticity and architectural significance. \n\n'
                                'Each house represents a different aspect of Swahili culture, from the traditional style of construction to the intricate interior decorations.\n\n '
                                'Visitors can explore the different houses and learn about various elements of Swahili life, including their traditional clothing, cuisine, music, and dance.\n\n '
                                'The knowledgeable guides provide insights into the history and customs of the Swahili people, making this experience educational as well as entertaining. \n\n'
                                'In addition to the houses, Kijiji Cha Waswahili features a small museum that displays artifacts and exhibits related to Swahili culture. \n\n'
                                'The museum offers a deeper understanding of the customs, artistry, and daily life of the Swahili people.'
        },
      {
          'name': 'Sunflower Cultivation',
          'image': 'assets/images/sun flower.jpg',
          'description': 'In Tanzania 6% of the land under production is used for the cultivation of sunflower. In areas like Mbeya (Southern Highlands) and Dodoma and Singida (Central Corridor), the area under sunflower varies from 1 - 10 acres per household.'
        },

      ],
      'unpopular': [
        {
          'name': 'Kiboriani Mountains',
          'image': 'assets/images/kiboriani.jpg',
          'description': 'Kiboriani Mountains (Kiboriani Mountains) is a hills (class T - Hypsographic) in Dodoma Region (Tanzania (general)), Tanzania (Africa) with the region font code of Africa/Middle East. It is located at an elevation of 1,815 meters above sea level.'
        },
        {
          'name': 'Ikungi',
          'image': 'assets/images/ikungi.jpg',
          'description': 'Ikungi is a town and an administrative ward in the Ikungi District of the Singida Region of Tanzania. It is the district\'s administrative seat. According to the 2002 census the ward had a total population of 18662. Ikungi is situated 8 km east of Sughuu.'
        },
         {
          'name': 'Kitangiri',
          'image': 'assets/images/kitangiri.jpg',
          'description': 'Lake Kitangiri in the Iramba District is the primary site for fishing activity in the area. Additionally, Tulya Ward in Singida DC and Mpambala ard in Mkalama DC) wards provide access to fishing resources. There are a total of 170 fishing licenses, and 274 registered fishing vessels are used by 386 fishermen to do their business. 94 fishing boats that are not registered are also present. About 193.2 tonnes of fish (mostly Singida tilapia) were caught in 2015.'
        },
      ]
    },
    {
      'name': 'Coastal Zone',
      'image': 'assets/images/coastal zone1.jpg',
      'description': 'Located along the mainland coast, the Coastal Zone encompasses five administrative regions: Tanga, Coast(Bagamoyo,chalinze,kilwa,mafia), Dar es Salaam, Lindi, and Mtwara. These regions boast picturesque beaches, historical sites, and vibrant cultural experiences.',
      'popular': [
        {
                  'name': 'National Museum and House of Culture',
                  'image': 'assets/images/national.jpg',
                  'description': 'Located in the heart of Dar es Salaam, the National Museum and House of Culture is a must-visit attraction for travelers seeking to dive into the rich history and culture of Tanzania. With its diverse array of exhibitions, this museum offers a captivating insight into the countrys past, present, and future The National Museum and House of Culture houses an impressive collection of artifacts that showcase Tanzania\'s artistic, historical, and cultural heritage. Visitors can explore a range of exhibits, including archaeological discoveries, traditional crafts, and contemporary art pieces. The museum also boasts an extensive collection of fossils, providing a glimpse into the regions prehistoric origins.',
          },

        {
          'name': 'Mikumi National Park',
          'image': 'assets/images/mikumi.jpg',
          'description': 'Mikumi National Park is one of the most popular tourist attractions in Morogoro, Tanzania. Located in the southern part of the country, it covers an area of around 3,230 square kilometers, making it the fourth largest park in Tanzania.\n\n'
                          'This national park is known for its rich biodiversity and stunning landscapes. It is home to a wide variety of wildlife, including elephants, giraffes, zebras, lions, and many more. Visitors can take part in game drives and safaris to witness these incredible animals in their natural habitat.\n\n'
                          'One of the major highlights of Mikumi National Park is the Mkata floodplain, which provides a great opportunity for wildlife spotting. The flat grasslands act as a magnet for animals, particularly during the dry season when they gather in large numbers to find water and food.\n\n'
                          'Visitors can also explore the parks various ecosystems, from vast savannahs to dense woodlands, making it a haven for birdwatchers. With over 400 bird species recorded, Mikumi is a paradise for bird lovers. The best time for birdwatching is during the wet season when migratory birds are present.'
        },  


         {
          'name': 'Uluguru Mountains',
          'image': 'assets/images/ulugulu.jpg',
          'description': 'The Uluguru Mountains in Morogoro, Tanzania, are a top attraction for nature lovers and adventure seekers. With their lush vegetation, diverse wildlife, and breathtaking landscapes, they offer a unique and memorable experience. Here is some essential information about the Uluguru Mountains.\n\n'
                          'Location: The Uluguru Mountains are situated in the southern part of Tanzania, near the city of Morogoro. They are part of the Eastern Arc Mountains, a range known for its high biodiversity.\n\n'
                          'Hiking and Trekking: The mountains are a paradise for hikers and trekkers, offering a range of trails catering to different levels of expertise. The most popular routes include Bunduki, Lupanga Peak, and Kinole Waterfall. These journeys provide opportunities to witness stunning views, encounter rare flora and fauna, and immerse oneself in the beauty of the natural surroundings.'
                          'Biodiversity: The Uluguru Mountains are home to an incredible array of plant and animal species, including many endemic ones. Botanical enthusiasts will be fascinated by the vast diversity of trees, flowers, and medicinal plants found here. Birdwatchers will also be delighted, as the mountains are home to numerous bird species.\n\n'
                          'Climate: The climate in the Uluguru Mountains is generally cool and pleasant due to their higher altitude. It is advisable to carry warm clothing, especially if planning a hike or trek, as temperatures can drop significantly.'
        },       


        {
                  'name': 'Askari Monument',
                  'image': 'assets/images/askari-monument.jpg',
                  'description': 'The Askari Monument is a significant landmark and popular tourist attraction located in Dar es Salaam, Tanzania. Erected in 1927, the monument pays homage to the Askari soldiers who served in the British Carrier Corps during World War I. This iconic bronze statue depicts an Askari soldier in a poised and valiant pose, symbolizing the bravery and loyalty of the soldiers Situated in the city center the Askari Monument attracts both locals and tourists alike\n\n'
                                 'Its strategic location makes it easily accessible, and it serves as a meeting point for many visitors exploring the city. The monument stands tall in a well-maintained square, offering a pleasant place to relax and capture memorable photographs.',
        },

        {
                'name': 'Bongoyo Island',
                'image': 'assets/images/bongoyo.jpg',
                'description': 'Bongoyo Island is a popular tourist destination located just off the coast of Dar es Salaam, Tanzania. This beautiful island offers an escape from the hustle and bustle of the city, with its pristine beaches and crystal-clear waters.\n\n'
                               'One of the main attractions of Bongoyo Island is its stunning coral reef, which makes it a paradise for snorkeling and diving enthusiasts. Marvel at the vibrant marine life and colorful coral formations as you explore the underwater world. Snorkeling gear can be rented on the island, making it easy and convenient for visitors to enjoy this activity.'
        },

      {
                  'name': 'Kaole Ruins',
                  'image': 'assets/images/kaole.jpg',
                  'description': 'Kaole Ruins is one of the top attractions in Bagamoyo, Tanzania. Situated about 70 kilometers north of Dar es Salaam, it is a historical site that offers a unique glimpse into the regions rich past.\n\n'
                                  'The ruins are believed to have been an ancient Swahili coastal trading town dating back to the 13th century. Visitors can explore the remains of mosques, tombs, and houses, giving them a chance to appreciate the architectural achievements of that era. The most prominent feature of the Kaole Ruins is the Great Mosque, said to be the oldest mosque in Tanzania.\n\n' 
                                  'Its intricate carvings and impressive stonework showcase the skill and artistry of the craftsmen who built it. There are also several graves scattered around the area, some of which are believed to belong to influential figures of the time.'
       },

       {
            'name': 'Amboni Caves',
            'image': 'assets/images/amboni.jpg',
            'description': 'Amboni Caves, located near Tanga in Tanzania, are an impressive natural wonder and are considered to be one of the top attractions in the region. These captivating underground caves are believed to be the most extensive limestone caves in East Africa, offering visitors a unique and thrilling experience.\n\n'
                           'The Amboni Caves feature a network of dark and mysterious passages, stunning rock formations, and several underground chambers. The caves are renowned for their historical significance as well, with evidence of early human habitation dating back thousands of years. Exploring the caves provides a fascinating glimpse into the regions rich cultural and geological history.',
       },

      {
              'name': 'Usambara Mountains',
              'image': 'assets/images/usambara.jpg',
              'description': 'The Usambara Mountains in Tanga, Tanzania, are a stunning natural attraction known for their lush green slopes, breathtaking views, and unique biodiversity. With their diverse flora and fauna, these mountains are a paradise for nature lovers and hiking enthusiasts.\n\n'
                              'One of the main highlights of the Usambara Mountains is the opportunity to explore the numerous picturesque villages scattered around the area.\n\n' 
                              'These villages, such as Lushoto and Mambo, offer visitors a glimpse into the rich local culture and traditions of the region. The friendly locals welcome tourists with open arms, making it an immersive and authentic experience.\n\n'
                              'For those seeking adventure, the Usambara Mountains offer excellent hiking trails with varying difficulty levels. From leisurely walks through tea plantations to challenging treks up steep slopes, there is something for everyone. The Mazumbai Forest Reserve is a particularly popular hiking destination, where visitors can witness a diverse range of indigenous plants, including the iconic African violets.\n\n'
                              'Nature enthusiasts will also appreciate the Usambara Mountains for their impressive birdlife. The area is home to numerous bird species, some of which are endemic to the region. Birdwatching tours are available, providing opportunities to spot colorful species like the Usambara weaver and the African green broadbill.'
      },

      {
              'name': 'Saadani National Park',
              'image': 'assets/images/kwetu.jpg',
              'description': 'Saadani National Park is a hidden gem located in the Tanga region of Tanzania. This unique and diverse national park offers visitors a range of unforgettable experiences, making it one of the top attractions in Tanga.\n\n'
                              'First and foremost, Saadani National Park is renowned for being the only national park in Tanzania that borders the Indian Ocean. This distinctive location allows tourists to witness a breathtaking combination of wildlife, stunning landscapes, and beautiful beaches.\n\n' 
                              'Imagine spotting an elephant or a buffalo while sitting on the white sandy shores of the pristine beaches! The park is home to a diverse range of wildlife, including elephants, lions, giraffes, zebras, and buffaloes.\n\n' 
                              'Visitors can embark on exhilarating game drives or guided walking safaris led by experienced park rangers, giving them the opportunity to observe these magnificent creatures up close. Bird enthusiasts will also enjoy spotting over 370 bird species in the park, including the rare and endangered species such as the Fischers Turaco.\n\n'
                              'Aside from wildlife encounters, Saadani National Park offers cultural experiences too. The local Wazigua people reside near the park, and visitors can immerse themselves in their traditional way of life and learn about their rich history and customs.'
      },
    {
              'name': 'Selous Game Reserve ',
              'image': 'assets/images/selous.jpg',
              'description': 'Located in the Lindi region of Tanzania, the Selous Game Reserve is one of the largest and most renowned protected areas in Africa. Covering an impressive area of over 50,000 square kilometers, this UNESCO World Heritage Site is a haven for wildlife enthusiasts and nature lovers.\n\n'
                              'The Selous Game Reserve is named after the famous British explorer and hunter, Frederick Selous, and is home to a diverse range of animal species, including elephants, hippos, crocodiles, lions, leopards, and a vast array of bird species. This expansive reserve offers unparalleled opportunities for game drives, walking safaris, boat safaris, and fly camping experiences, allowing visitors to witness the incredible wildlife in their natural habitat.\n\n'
                              'One of the main highlights of Selous Game Reserve is the Rufiji River, which runs through the reserve, serving as a lifeline for many animals. Boat safaris along the river provide a unique perspective and allow visitors to spot animals such as hippos, crocodiles, and a variety of bird species. The stunning landscapes, with its vast grasslands, acacia woodlands, and riverine forests, add to the charm and beauty of the reserve.\n\n'
                              'With its remote location and limited tourist activity, the Selous Game Reserve offers a truly wild and authentic African safari experience. The absence of large crowds allows for a more intimate and exclusive encounter with nature, making it a top attraction for those seeking a tranquil and immersive wildlife adventure.'
     },

    {
            'name': 'Kilwa Masoko  ',
            'image': 'assets/images/kilwa.jpg',
            'description': 'Located in the Lindi region of Tanzania, Kilwa Masoko is a must-visit destination for travelers seeking a unique and cultural experience. With its rich history and stunning natural beauty, Kilwa Masoko offers a wide range of attractions for visitors to explore.\n\n'
                            'One of the top attractions in Kilwa Masoko is the World Heritage site of Kilwa Kisiwani and Songo Mnara. These ancient ruins date back to the 9th century and offer a glimpse into the regions fascinating past. Visitors can explore the remains of palaces, mosques, and tombs, marveling at the intricate architecture and learning about the once prosperous trading empire that thrived here.\n\n'
                            'For nature lovers, the nearby Kilwa beach is a must-visit spot. With its crystal-clear waters and pristine white sand, this beach provides the perfect setting for a relaxing day under the sun. Snorkeling and diving enthusiasts will also be thrilled by the diverse marine life that can be found in the surrounding waters.\n\n'
                             'Another popular attraction in Kilwa Masoko is the Makutani lighthouse. Offering panoramic views of the Indian Ocean, this historic lighthouse is a great spot for photography enthusiasts and provides an opportunity to learn about the regions maritime history.\n\n'
                             'Additionally, the local market in Kilwa Masoko is a vibrant hub of activity where visitors can immerse themselves in the local culture. Here, one can find a wide array of fresh fruits, vegetables, spices, and local handicrafts.\n\n'
                             'In terms of accommodation, Kilwa Masoko offers a range of options including guesthouses and beach resorts. These establishments provide comfortable amenities and a warm Tanzanian hospitality.'
                             'Overall, Kilwa Masoko is a hidden gem in Tanzania offering a combination of historical landmarks, natural beauty, and cultural experiences. Whether you are interested in history, nature, or simply want to relax on the beach, Kilwa Masoko has something to offer every traveler.'
    },

      {
        'name': 'Mikindani',
        'image': 'assets/images/mikindani.jpg',
        'description': 'Mikindani Bay, located in Mtwara, Tanzania, is one of the top attractions in the region. This picturesque bay offers visitors a unique blend of natural beauty, cultural heritage, and historical significance. From stunning sunsets to serene beaches, Mikindani Bay never fails to leave travelers in awe.\n\n'
                       'One of the major highlights of Mikindani Bay is its historical significance. This area served as an important port during the 19th century and played a vital role in the slave trade. Today, visitors can explore the remnants of this dark era, including the historic buildings and fortresses that dot the bay. The Mikindani Slave Market, for instance, is a must-visit site that offers a glimpse into the regions past.\n\n'
                       'Apart from its history, Mikindani Bay boasts breathtaking natural beauty. The bay is surrounded by lush mangrove forests, giving it a tranquil and picturesque ambiance. Travelers can take a boat trip through the bay, admire the stunning vistas, and even spot some unique bird species that inhabit the area.\n\n'
                       'The bay is also an excellent spot for water activities. The crystal-clear waters of Mikindani Bay offer ample opportunities to explore the vibrant marine life through activities such as snorkeling and diving. The coral reefs found in this region are home to an array of colorful fish and other sea creatures, providing an unforgettable underwater experience.'
      },

      {
        'name': 'Ruvuma River',
        'image': 'assets/images/ruvuma.jpg',
        'description': 'The Ruvuma River is one of the top attractions in Mtwara, Tanzania. Located in the southern part of the country, this magnificent river forms the border between Tanzania and Mozambique. The Ruvuma River offers a picturesque and serene setting, making it a popular destination for nature lovers and adventurers. Its crystal-clear waters meander through lush landscapes, creating a perfect spot for various activities.\n\n'
                       ' One of the main attractions along the Ruvuma River is the opportunity for boat safaris and river cruises. Exploring the river on a traditional dhow or motorized boat allows visitors to witness the regions stunning flora and fauna up close. Keep an eye out for crocodiles, hippos, and a wide variety of bird species that inhabit the area.\n\n'
                       'Fishing enthusiasts will also find abundant opportunities along the Ruvuma River. The river is home to a diverse array of fish species, including the prized tiger fish and catfish. Local fishing communities offer guided tours and fishing trips for those looking to experience the thrill of angling in these waters.\n\n'
                       'Visitors can immerse themselves in the local way of life, learning about traditional fishing techniques, agriculture practices, and experiencing the warm hospitality of the locals.'
                        'Exploring the Ruvuma River in Mtwara is an adventure that should not be missed. Soak in the stunning landscapes, engage with local communities, and discover the diverse wildlife of this magnificent river.'
      },


      ],
      'unpopular': [
        {
          'name': 'Mwenge Carvers Market',
          'image': 'assets/images/mwenge.jpg',
          'description':'Mwenge Carvers Market is a must-visit attraction in Dar es Salaam, Tanzania.'
            'Located in the Mwenge suburb, this vibrant market is known for its exquisite'
            'wood carvings and handicrafts making it a paradise for art lovers and'
            'souvenir collectors.\n\n'
            'The market showcases the rich Tanzanian culture through its skilled artisans '
            'who meticulously create intricate carvings, masks, sculptures, and furniture. '
            'Visitors can witness the artists at work, carving beautiful designs out of '
            'ebony, mahogany, and other locally sourced woods.',
        },

         {
                  'name': 'Tingatinga Arts Cooperative Society',
                  'image': 'assets/images/tingatinga.jpg',
                  'description': 'Tingatinga Arts Cooperative Society is one of the top attractions in Dar es Salaam, Tanzania. Founded in the 1960s by the late Edward Saidi Tingatinga, this cooperative society has become renowned for its vibrant and unique artwork.\n\n'
                                  'Located in the heart of Dar es Salaam, Tingatinga Arts Cooperative Society is a must-visit destination for art enthusiasts and tourists looking to immerse themselves in the local culture. The cooperative features a vast collection of Tingatinga paintings, showcasing the traditional Tanzanian art form characterized by bold and colorful designs.\n\n'
                                  'Visitors to Tingatinga Arts Cooperative Society have the opportunity to browse and purchase a wide range of artworks, including paintings on canvas, wood, and even metal. Each piece tells a story and captures the essence of Tanzanian life, wildlife, scenery, and rich cultural heritage. From wildlife depictions to tribal scenes, the artwork at Tingatinga Arts Cooperative Society provides an insight into the countrys aesthetic traditions.',
        },

        {
                  'name': 'Choma Water Fall',
                  'image': 'assets/images/choma.jpg',
                  'description': 'Nestled in the heart of Mikumi National Park, Choma Waterfalls is an enchanting natural attraction that captivates visitors with its spectacular beauty and tranquil atmosphere. Surrounded by lush greenery and the sounds of wildlife, this waterfall is a perfect retreat for nature lovers and adventure seekers alike.\n\n'
                                  'The cascading waters create a picturesque scene, inviting travelers to immerse themselves in the serene environment. Tourists can enjoy swimming in the refreshing pools formed at the base of the falls, providing a perfect respite from the heat of the African sun. Besides swimming, the area around the waterfall is ideal for leisurely hikes and exploration, allowing visitors to encounter the diverse flora and fauna that call this park home.\n\n'
                                  'The journey to Choma Waterfalls is an adventure in itself, as visitors traverse through the scenic landscapes of Mikumi National Park. This park is renowned for its rich wildlife, including elephants, lions, and a variety of bird species. Therefore, a visit to the waterfalls can easily be combined with a safari experience, making it a must-see destination for tourists traveling through Tanzania. ',
        },


         {
                  'name': 'Udzungwa Mountains National Park',
                  'image': 'assets/images/udzungwa.jpg',
                  'description': 'Udzungwa Mountains National Park, located in the heart of the Eastern Arc Mountains in Morogoro, Tanzania, is a must-visit destination for adventurous nature lovers. This pristine national park, covering an area of approximately 1,990 square kilometers, is home to a diverse range of flora and fauna, making it a haven for wildlife enthusiasts and hikers alike.\n\n'
                                  'One of the major attractions of Udzungwa Mountains National Park is its stunning collection of waterfalls. The park is famous for the breathtaking 170-meter Sanje Falls, which cascades into a large natural pool, providing visitors with the perfect spot for a refreshing swim. The park also boasts several other picturesque waterfalls, such as Mwanihana and Prince Bernhard, each offering a unique and unforgettable sight.\n\n'
                                  'For those who enjoy hiking and exploring the great outdoors, Udzungwa Mountains National Park offers an extensive network of well-marked trails. The most popular hike is the Sanje Falls Trail, which takes you through lush rainforests, across stunning viewpoints, and ultimately to the magnificent Sanje Falls. As you trek through the park, keep an eye out for the thriving monkey population, including the endemic Udzungwa red colobus and the rare Sanje crested mangabey.',
        },

         {
                'name': 'Bagamoyo Old Town',
                'image': 'assets/images/old town.jpg',
                'description': 'Located on the coast of Tanzania, Bagamoyo Old Town is a mustvisit destination for travelers seeking a rich historical and cultural experience.\n\n' 
                                'Once a major port and trading center, this coastal town has transformed into an intriguing tourist destination, attracting visitors from around the world.\n\n'
                                'Bagamoyo Old Town is famous for its well preserved Swahili architecture, showcasing a harmonious blend of African, Arab, and European influences. Walking through the narrow streets, you will be captivated by the old buildings with intricately carved wooden doors and balconies, reminiscent of the town prosperous past.\n\n'
                                'The town charm lies in its authenticity and lack of commercialization, offering an immersive experience in local culture.\n\n'
                                'One of the top attractions in Bagamoyo is the Bagamoyo Museum. Housed in an old German colonial administrative building, the museum provides insight into the towns history as an important trading post and slave market during the 19th century. Exhibits display artifacts, photographs, and documents that shed light on Bagamoyo role in the East African slave trade and its influence on Tanzanian history.',
        },

        {
                'name': 'Pangani River and Delta ',
                'image': 'assets/images/pangani.jpg',
                'description': 'Pangani River and Delta, located in the picturesque region of Tanga in Tanzania, are undoubtedly some of the top attractions in the area. This magnificent natural wonder offers visitors a variety of exciting and memorable experiences.\n\n'
                                'The Pangani River itself holds significant historical and cultural importance, serving as a key trade route during the 18th and 19th centuries. Today, it continues to be a vital waterway for local fishermen and provides opportunities for relaxing boat rides and river cruises. The calm and serene ambiance of the river makes it perfect for those seeking tranquility and a chance to connect with nature.\n\n'
                                'The Pangani Delta, where the river meets the Indian Ocean, is a breathtaking sight to behold. The convergence of the river and the ocean creates a unique ecosystem that supports a diverse range of plant and animal species. Exploring the delta by boat or on foot is a must do activity for nature enthusiasts and bird lovers. The area is home to many species of migratory birds, providing excellent birdwatching opportunities.\n\n'
                                'Adventurous travelers can indulge in thrilling water sports such as kayaking and snorkeling, allowing them to discover the vibrant underwater world of the delta. The crystalclear waters teem with colorful fish and beautiful coral formations, making it a haven for marine life lovers.\n\n'
                                'For history buffs, a visit to the ancient town of Pangani is highly recommended. This historical settlement boasts well-preserved architecture and ruins from its Arab and European colonial past. Take a stroll through the narrow streets, visit the old churches, and explore the historic buildings to get a glimpse into the regions rich heritage.'
        },

        {
                'name': 'Toten Island',
                'image': 'assets/images/toten.jpg',
                'description': 'Toten Island, located in Tanga, Tanzania, is a hidden gem for travelers seeking a peaceful and unspoiled getaway. This untouched paradise offers a range of attractions that make it a must-visit destination for nature enthusiasts and adventure seekers alike.\n\n'
                               'The island is known for its pristine beaches, crystal-clear waters, and breathtaking coral reefs, making it an ideal spot for snorkeling and diving. Explore the vibrant marine life and swim alongside exotic fish and turtles in the turquoise waters of the Indian Ocean.\n\n'
                               'For those who prefer land-based activities, Toten Island is surrounded by lush tropical forests that are perfect for hiking and exploring. Discover the islands rich flora and fauna, spot rare bird species, and immerse yourself in the natural beauty that this island has to offer.\n\n'
                               'Toten Island is also rich in cultural heritage, with ancient ruins and historical sites scattered throughout the island. Visit the ruins of an old mosque and learn about the islands intriguing past.\n\n'
                               'Accommodation options on Toten Island are limited but exclusive, ensuring a tranquil and secluded stay. Enjoy the privacy that this untouched paradise provides and indulge in the serenity of nature.\n\n'
                               'To reach Toten Island, visitors can take a short boat ride from Tanga, which adds an element of adventure to the journey. The island is relatively remote, allowing tourists to escape the crowds and truly disconnect from the hustle and bustle of everyday life.\n\n'
                               'For an unforgettable experience in Tanga, Tanzania, make sure to include Toten Island in your itinerary. Explore the stunning beaches, vibrant underwater world, dense forests, and cultural heritage that make this island one of the top attractions in the region. Discover the hidden beauty of Toten Island and create memories that will last a lifetime.'
        },

        {
          'name': 'Tongoni Ruins',
          'image': 'assets/images/tongoni.jpg',
          'description': 'Located on the northern coast of Tanzania, the Tongoni Ruins are a fascinating historical site that should be included in your itinerary when visiting Tanga. This archaeological site offers a glimpse into the past and is considered one of the top attractions in the region.\n\n'
                         'The Tongoni Ruins date back to the 15th century and were once a thriving Swahili trading town. The ruins consist of a mosque, tombs, and residential houses. It is believed that Tongoni was an important center for trade between the Swahili coast and the interior regions of East Africa.\n\n'
                         'One of the main highlights of the Tongoni Ruins is the well preserved mosque. Built with coral stones and lime mortar, the mosque architecture reflects the Islamic influence in the region. Visitors can explore the mosque and witness the intricate details of the pillars and archways that have withstood the test of time.\n\n'
                         'In addition to the mosque, you will find several tombs within the ruins. These tombs were constructed to honor important individuals from the Swahili community. Each tomb has unique carvings and decorations, allowing visitors to gain insights into the cultural and religious practices of the past.'
        },

        {
          
          'name': 'Raskazone Beach',
          'image': 'assets/images/Raskazone Beach.jpg',
          'description': 'Raskazone Beach, located in Tanga, Tanzania, is one of the top attractions in the area. This beautiful beach is known for its pristine white sand, crystal clear turquoise waters, and breathtaking views. Visitors to Raskazone Beach can enjoy a wide range of activities. The calm and shallow waters make it perfect for swimming and snorkeling\n\n. The beach is also a popular spot for sunbathing, picnicking, and beach volleyball. For nature enthusiasts, Raskazone Beach offers the opportunity to explore the vibrant coral reefs just off the shore. Snorkelers can witness an array of colorful marine life, including tropical fish, starfish, and even sea turtles. Raskazone Beach is also a great place to watch the sunrise or sunset. The mesmerizing views make it a favorite spot for photographers and nature lovers alike. There are facilities available at Raskazone Beach, including beach chairs, umbrellas, and showers. In addition, several food and drink vendors can be found nearby, offering delicious local cuisine and refreshing beverages.\n\n'
                         'To reach Raskazone Beach, travelers can take a short drive from the heart of Tanga. The beach is easily accessible, and parking is available for those arriving by car.\n\n'
                         'Overall, Raskazone Beach is a must-visit destination for anyone traveling to Tanga, Tanzania. Its natural beauty, recreational activities, and serene atmosphere make it a top attraction that should not be missed.'
        },

        {
            'name': 'Mlingotini Spice Farm',
            'image': 'assets/images/Mlingotini Spice Farm.jpg',
            'description': 'Located in the peaceful town of Tanga in Tanzania, the Mlingotini Spice Farm is a must-visit attraction for those seeking a unique and immersive experience. This beautiful farm offers an opportunity to explore the rich history and flavors of the region famous spices.\n\n'
                             'Covering an extensive area, the Mlingotini Spice Farm is home to a variety of aromatic plants and exotic spices. Visitors can take a guided tour of the farm, where knowledgeable guides will introduce them to the various plants and explain the traditional cultivation techniques used. From vanilla and cardamom to cinnamon and cloves, this farm boasts a wide range of spices that contribute to the area renowned flavors.\n\n'
                             'During the tour, visitors are also invited to participate in the spice processing and preparation activities, where they can learn firsthand the intricate process of harvesting and drying the spices. This hands-on experience is a unique opportunity to gain insight into the local culture and its reliance on these flavorful crops.\n\n'
                             'Apart from the spice-related activities, the Mlingotini Spice Farm also offers a chance to explore the picturesque surroundings. The farm is nestled amidst lush greenery, enhancing the tranquil and idyllic atmosphere. With its well-maintained gardens and serene atmosphere, the farm provides an excellent opportunity for visitors to relax, unwind, and connect with nature.\n\n'
                             'Overall, a visit to the Mlingotini Spice Farm in Tanga is a must for any traveler who wants to delve deeper into the cultural heritage and natural beauty of Tanzania. Whether you are a spice enthusiast, nature lover, or simply looking for an educational and immersive experience, this farm is sure to leave a lasting impression. Do not miss the chance to explore one of Tanga top attractions and indulge in the fragrant world of spices.'
        },

         {
            'name': 'Kilwa Kisiwani',
            'image': 'assets/images/kisiwani.jpg',
            'description': 'Kilwa Kisiwani is a small island located off the coast of Lindi in Tanzania. With its rich history and captivating beauty, it is considered one of the top attractions in the region. Here is all the essential information you need to know about Kilwa Kisiwani.\n\n'
                         'A. Historical Significance: Kilwa Kisiwani was once a thriving trading hub and an influential city-state during the medieval times. It flourished between the 9th and 14th centuries, attracting traders from various parts of the world, including Persia, Arabia, and China. The island is home to several well-preserved ruins and ancient structures that showcase the architectural brilliance of the past.\n\n'
                         'B. UNESCO World Heritage Site: Recognizing its outstanding historical value, Kilwa Kisiwani was designated as a UNESCO World Heritage Site in 1981. The ruins include a Great Mosque, a Portuguese fortress, the Husuni Kubwa palace, and numerous tombs and houses. Exploring these ancient remnants allows visitors to delve into the islands intriguing past.\n\n'
                         'C. Architectural Marvels: The Great Mosque, also known as the Kilwa Kisiwani Mosque, is considered one of the most significant Islamic architectural structures in East Africa. Built entirely of coral stones, it blends Swahili and Islamic architectural styles. It is an awe-inspiring monument that brings to life the islands vibrant cultural heritage.\n\n'
                         'D. Beautiful Beaches: Apart from its historical significance, Kilwa Kisiwani also boasts stunning beaches with pristine turquoise waters and white sandy shores. Travelers can relax, unwind, and enjoy the tranquility of these idyllic beaches while taking in the breathtaking views of the Indian Ocean.\n\n'
                         'Visiting Kilwa Kisiwani gives travelers a glimpse into the rich historical and cultural heritage of the region. Its intriguing ruins, magnificent architecture, and captivating beaches make it a top attraction in Lindi, Tanzania. Make sure to include Kilwa Kisiwani in your travel itinerary for an unforgettable experience.'
         },

        {
          'name': 'Ruangwa Game Reserve',
          'image': 'assets/images/ruangwa.jpg',
          'description': 'Nestled in the pristine region of Lindi, Tanzania, the Ruangwa Game Reserve is a must-visit destination for nature enthusiasts and wildlife lovers alike. This spectacular reserve covers an expansive area of approximately 10,000 square kilometers and offers a unique and immersive experience for visitors.\n\n'
                        'Characterized by its diverse ecosystems, including open savannah grasslands, acacia woodlands, and lush riverine forests, Ruangwa Game Reserve is home to an impressive array of wildlife species. Visitors have the opportunity to spot some of Africa iconic animals, such as elephants, lions, leopards, giraffes, hippos, and a wide variety of bird species. The reserve is also renowned for its population of endangered African wild dogs, making it a hotspot for conservation efforts.\n\n'
                        'Embarking on a safari adventure within the Ruangwa Game Reserve is an experience like no other. Accompanied by knowledgeable and experienced guides, visitors can explore the vast wilderness and observe the fascinating behavior of these animals in their natural habitat. Whether you choose a thrilling game drive or a tranquil walking safari, each excursion promises an unforgettable encounter with the mesmerizing wildlife of Tanzania.\n\n'
                        'Apart from the enriching wildlife experiences, Ruangwa Game Reserve also offers breathtaking landscapes and unique topographical features. The Great Ruaha River, which borders the reserve, is a picturesque waterway where visitors can witness the exceptional interaction between land and water. The river is teeming with crocodiles, hippos, and a rich diversity of birdlife, providing ample opportunities for birdwatching and immersive boat safaris\n\n.'
                        'To maximize your experience in Ruangwa Game Reserve, it is advisable to plan your visit during the dry season, which typically runs from May to October. During this time, wildlife congregates around water sources, making it easier to spot them. It is also essential to carry appropriate clothing, insect repellent, and a camera to capture the extraordinary sights and moments.'
        },    

        {
              'name': 'Pugu Hills Nature Reserve',
              'image': 'assets/images/pugu.jpg',
              'description': 'Pugu Hills Nature Reserve is a fantastic tourist destination located in Chalinze, Tanzania. This nature reserve is known for its breathtaking scenery, diverse wildlife, and rich historical significance. The main attraction of Pugu Hills is its stunning landscape, characterized by rolling hills, lush greenery, and unique rock formations. Visitors can explore the reserve through various hiking trails, offering panoramic views of the surrounding area. The untouched beauty of Pugu Hills makes it a perfect spot for nature lovers and photographers alike.\n\n'
                             'One of the main highlights of Pugu Hills Nature Reserve is its abundant wildlife. The reserve is home to a variety of animal species, including giraffes, zebras, antelopes, and various bird species. Nature enthusiasts can experience the thrill of spotting these animals in their natural habitat during guided safaris or self-guided tours.'
                             'Aside from its natural beauty, Pugu Hills also holds historical significance. The area was once a major source of limestone, which was used for the construction of several colonial buildings in Dar es Salaam. Today, visitors can explore the remnants of the old limestone quarries and learn about the areas intriguing past.'
                             'When visiting Pugu Hills Nature Reserve, it is essential to come prepared. Make sure to wear comfortable clothing and sturdy shoes, as the terrain can be uneven in some areas. It is also advisable to bring sunscreen, insect repellent, and plenty of water, as the reserve can get hot and humid.'
                             'Overall, Pugu Hills Nature Reserve offers a unique and memorable experience for tourists in Chalinze, Tanzania. With its stunning landscapes, diverse wildlife, and historical significance, it is a must-visit destination for nature lovers and adventure seekers.'
        },

        {
          'name': 'Newala Ancient Rock Paintings',
          'image': 'assets/images/newala.jpg',
          'description': 'The Newala Ancient Rock Paintings are one of the top attractions in Mtwara, Tanzania. These fascinating ancient artworks are located in the Newala district of Mtwara region, making them easily accessible for tourists visiting the area.\n\n'
                          'The rock paintings are estimated to be over 2,000 years old and provide a glimpse into the rich history and culture of the region. Created by the indigenous Makonde people, these ancient artworks depict various scenes from their daily lives, including hunting, dancing, and communal gatherings.\n\n'
                          'Visitors to the Newala Ancient Rock Paintings can explore and admire these remarkable creations, which have managed to withstand the test of time. The natural surroundings and peaceful atmosphere of the area further enhance the experience of discovering this significant cultural heritage site.\n\n'
                          'Guided tours are available for those who wish to learn more about the history and symbolism behind the paintings. Knowledgeable guides will provide valuable insights into the meaning and significance of the artwork, offering a deeper understanding of the Makonde culture\n\n.'
                          'It is important to note that the Newala Ancient Rock Paintings are of great cultural and historical value, and visitors should treat them with utmost respect. It is advised not to touch or deface the paintings in any way, as this can cause irreparable damage and jeopardize their preservation for future generations.\n\n'
                          'When planning a visit to the Newala Ancient Rock Paintings, it is recommended to bring appropriate footwear and clothing, as the site may involve some walking and hiking. Additionally, it is advisable to carry water and sunscreen, as the area can get hot and sunny.'
                          'Overall, a visit to the Newala Ancient Rock Paintings offers a unique opportunity to explore the ancient heritage and marvel at the artistic skills of the Makonde people. Do not miss the chance to include this historical gem in your itinerary when visiting Mtwara, Tanzania.'
        },2
     
    ]
   },
    {
      'name': 'Lake Zone',
      'image': 'assets/images/lakezone.jpg',
      'description': 'Centered around massive Lake Victoria, this peaceful region offers a refreshing alternative to Tanzanias busier safari destinations. The lakes vast waters covering parts of Mwanza, Mara, Geita and Kagera regions, support vibrant fishing communities and unique wildlife.',
      'popular': [
        {
          'name': 'Bismarck Rock',
          'image': 'assets/images/Bismarck Rock.jpg',
          'description': 'Bismarck Rock is one of the top attractions in Mwanza, Tanzania. This iconic rock formation is located in the stunning Lake Victoria, offering visitors breathtaking views and a glimpse into the rich history and culture of the region. Named after the German Chancellor, Otto von Bismarck, Bismarck Rock is known for its distinct shape, which resembles a human head emerging from the water. It has become a significant landmark in Mwanza and is often photographed by tourists.\n\n'
                        'To reach Bismarck Rock, visitors can take a short boat ride from Mwanzas shore, allowing them to admire the beauty of Lake Victoria along the way. The idyllic scenery and shimmering waters provide a serene backdrop for capturing memorable photographs.\n\n'
                        'Besides its natural beauty, Bismarck Rock holds historical significance. It is believed that the rock was once used as a lookout point during tribal conflicts in the area. Local folklore also suggests that the rock has spiritual powers and is a sacred spot for the people of Mwanza.\n\n'
                        'Visiting Bismarck Rock is a truly enchanting experience. Whether you want to enjoy the spectacular views, take photographs, or learn more about the history and culture of Mwanza, this attraction is a must-visit. Make sure to include Bismarck Rock in your itinerary when exploring Tanzanias hidden gems and natural wonders.'
        },

        {
          'name': 'Lake Victoria',
          'image': 'assets/images/lakevictoria.jpg',
          'description': 'Lake Victoria in Mwanza, Tanzania, is the largest lake in Africa and one of the most visited attractions in the region. It offers a wide range of activities and scenic beauty that attract tourists from all over the world. Here are some key points you need to know about Lake Victoria in Mwanza\n\n'
                        'Location: Lake Victoria is located in the city of Mwanza in northern Tanzania. It is bordered by Uganda to the north and Kenya to the northeast, making it easily accessible from neighboring countries.\n\n'
                        'Size and significance: As the largest lake in Africa and the second-largest freshwater lake in the world, Lake Victoria holds great ecological and economic importance. It covers an area of approximately 68,800 square kilometers and is known for its diverse wildlife and thriving fishing industry.\n\n'
                        'Island exploration: Lake Victoria has numerous picturesque islands that are worth exploring. One of the most popular islands is Rubondo Island National Park, known for its diverse wildlife, including chimpanzees, elephants, and giraffes.\n\n'
                        'Sunset cruises: One of the highlights of visiting Lake Victoria is the chance to witness breathtaking sunsets over the lake. Sunset cruises are a popular choice for tourists, allowing them to relax, capture stunning photographs, and soak in the tranquility of the surroundings.\n\n'
                        ' Cultural experiences: The lakeside city of Mwanza offers the opportunity to immerse yourself in Tanzanian culture. Visit local markets to experience the vibrant atmosphere, taste traditional dishes, and interact with friendly residents to learn about their way of life.\n\n'
                        'Overall, Lake Victoria in Mwanza, Tanzania, is a must-visit destination for nature lovers, wildlife enthusiasts, and those looking to unwind in a scenic and serene environment. Its rich biodiversity and cultural experiences make it an ideal place to explore and create lasting memories.'
        },

        {
          'name': 'Nyamalimbe Forest',
          'image': 'assets/images/nyamlimbe.jpg',
          'description': 'Nyamalimbe Forest, located in Geita, Tanzania, is a must-visit destination for nature enthusiasts and adventure seekers. This pristine forest offers visitors a unique opportunity to experience the regions diverse flora and fauna in their natural habitat\n\n.'
                          'One of the main attractions in Nyamalimbe Forest is its rich biodiversity. The forest is home to a wide variety of plant species, including giant mahogany trees, wild coffee plants, and medicinal herbs. As you explore the forest, you will be surrounded by vibrant greenery and mesmerizing natural beauty.\n\n'
                          'Nature lovers will also have the chance to spot an array of wildlife in Nyamalimbe Forest. The forest is a sanctuary for numerous bird species, making it a paradise for birdwatchers. If you are lucky, you might catch a glimpse of the colorful malachite kingfisher or the rare Ross turaco.'
                          'For those seeking adventure, Nyamalimbe Forest offers exciting hiking trails that take you through rugged terrain and picturesque landscapes.'
        },            


        {
          'name': 'Saanane National Park',
          'image': 'assets/images/saanane.jpg',
          'description': 'Located on the southeastern shores of Lake Victoria in Mwanza, Tanzania, Saanane National Park offers a unique and thrilling experience for nature lovers and wildlife enthusiasts. This park, which was declared a game reserve in 1960 and later upgraded to a national park in 2013, is the smallest national park in Tanzania, covering approximately 2.18 square kilometers.\n\n'
                          'Saanane National Park is renowned for its diverse and abundant wildlife. Visitors will have the chance to spot a wide variety of animals, including giraffes, zebras, impalas, dik-diks, hyenas, and a variety of bird species. The park also hosts a unique population of olive baboons, making it an excellent location for primate lovers.\n\n'
                          'One of the main attractions of Saanane National Park is the opportunity to go on an adventurous game drive. The park offers guided tours with experienced rangers who will take you on an exciting journey through the parks lush landscapes, giving you a chance to observe the wildlife up close. The game drives usually last for about 2-4 hours, and it is recommended to book in advance to secure your spot.'
        },
      ],
      'unpopular': [
        {
          'name': 'Ugala Rock ',
          'image': 'assets/images/ugala.jpg',
          'description': 'Located in Geita, Tanzania, Ugala Rock is one of the top attractions in this vibrant city. This geological wonder stands tall, offering visitors a breathtaking panorama of the surrounding landscape.\n\n'
                        'Ugala Rock is a massive granite rock formation, reaching a height of approximately 150 meters. This unique landmark is enriched with historical and cultural significance, attracting tourists from all over the world. It is believed to have formed millions of years ago through volcanic activity.\n\n'
                        'For adventure enthusiasts, Ugala Rock offers a great opportunity for rock climbing and hiking. Its rugged surface and varying levels of difficulty make it suitable for both beginners and experienced climbers. As you ascend, you will be rewarded with stunning views of the city, lush greenery, and nearby Lake Victoria.'
        },

        {
          'name': 'Butundwe Hot Springs',
          'image': 'assets/images/hot.jpg',
          'description': 'Butundwe Hot Springs is one of the top attractions in Geita, Tanzania. This natural wonder offers a unique and rejuvenating experience for tourists visiting the region. Located just a short distance from Geita town, the Butundwe Hot Springs is a popular destination for both locals and travelers seeking relaxation and therapeutic benefits.\n\n'
                          'The hot springs are naturally heated by geothermal activity beneath the earths surface. The water is rich in minerals, which are believed to have healing properties. Many visitors come to Butundwe Hot Springs to soak in the warm mineral-rich water, as it is believed to help alleviate various ailments such as arthritis and skin conditions.\n\n'
                          'The surroundings of the hot springs are lush and picturesque, with dense vegetation and tall trees adding to the tranquil ambiance. Nature lovers and birdwatchers will appreciate the diverse wildlife and bird species found in the area.'
        },

        {
          'name': 'Capri Point ',
          'image': 'assets/images/Kapri.jpg',
          'description': 'Capri Point in Mwanza, Tanzania is a popular tourist destination known for its stunning views, serene atmosphere, and various recreational activities. Located on the shores of Lake Victoria, Capri Point offers visitors a unique experience filled with natural beauty and cultural significance\n\n.'
                          'One of the main attractions at Capri Point is its breathtaking views of Lake Victoria. From here, tourists can witness the vastness of Africas largest lake, surrounded by the picturesque landscape of Mwanza. The spot provides an ideal setting to capture mesmerizing sunsets and sunrise photographs.\n\n'
                          'Tourists visiting Capri Point can also indulge in various water activities. The lake offers opportunities for boat rides, fishing, and swimming. Visitors can rent boats to explore the crystal-clear waters, witness the local fishermen in action, and even try their hand at catching different fish species.\n\n'
                          'Additionally, Capri Point is home to numerous picnic spots and recreational areas. Families and friends can enjoy a relaxing day by the lake, surrounded by lush greenery and natural beauty. The picnic areas provide ample space for outdoor games, barbecues, and simply unwinding amidst nature.'
        },
      ]
    },




     {
      'name': 'Northern Zone',
      'image': 'assets/images/NorthTZ.jpg',
      'description': 'Tanzania’s Northern Zone is the country’s premier safari and adventure destination, featuring iconic attractions like the Serengeti (Great Migration), Ngorongoro Crater, Mount Kilimanjaro, and Tarangire National Park. The zone includes the regions of Arusha (gateway to safaris), Kilimanjaro (trekking hub), Manyara (Lake Manyara & Tarangire), and Simiyu (western Serengeti). Key experiences include wildlife safaris, Maasai culture, Hadzabe tribal visits, and mountain climbing, with the best time to visit being June–October for dry-season wildlife viewing.',
      'popular': [
        {
          'name': 'Mount Kilimanjaro',
          'image': 'assets/images/kilimanjaro.jpg',
          'description': 'Welcome to Kilimanjaro, Tanzania, home to one of the most iconic landmarks in Africa - Mount Kilimanjaro. This majestic mountain is a top attraction for travelers from around the world, attracting adventure seekers, nature enthusiasts, and even seasoned mountaineers. Here is a brief overview of the main tourist information about Mount Kilimanjaro.\n\n'
                         'Climbing Mount Kilimanjaro: With its snow-capped peak standing at 5,895 meters (19,341 feet) above sea level, Mount Kilimanjaro offers a challenging yet rewarding climbing experience. There are several routes available, each varying in difficulty and duration. It is recommended to book your climb with an experienced tour operator and undergo proper acclimatization to increase your chances of reaching the summit successfully.\n\n'
                         'Mount Kilimanjaro National Park: Declared a UNESCO World Heritage Site, Mount Kilimanjaro National Park encompasses the entire mountain and its surrounding rainforest. The park is home to a rich variety of flora and fauna, making it a paradise for nature lovers. Keep an eye out for unique species like colobus monkeys, elephants, and over 140 bird species.'
        },

        {
          'name': 'Mount Meru ',
          'image': 'assets/images/meru.jpg',
          'description': 'Mount Meru is a magnificent and often overlooked gem located in Arusha, Tanzania. Standing tall at an elevation of 4,566 meters, it is the fifth highest peak in Africa and a popular choice for adventurous travelers seeking a thrilling and rewarding trekking experience.\n\n'
                          'The first thing that sets Mount Meru apart is its breathtaking beauty. The lush forests, diverse wildlife, and stunning panoramic views of the surrounding landscape make it a true natural paradise. The mountain is also home to a variety of flora and fauna, including elephants, giraffes, and antelopes, offering incredible opportunities for wildlife spotting.\n\n'
                          'One of the highlights of climbing Mount Meru is the chance to witness the famous Momela Lakes. These vibrant pools of water are a sight to behold and provide a perfect backdrop for memorable photographs. As you ascend the mountain, you will encounter various vegetation zones, ranging from dense rainforests to alpine meadows, each with its unique charm.'
        },
        {
        'name': 'Ngorongoro Crater',
          'image': 'assets/images/ngorongoro.jpg',
          'description': 'Nestled in the heart of Arusha, Tanzania, the Ngorongoro Crater ranks among the top attractions in the area. This stunning natural wonder is a must-visit for nature enthusiasts and wildlife lovers alike.\n\n'
                          'Formed millions of years ago from a massive volcanic eruption, the Ngorongoro Crater is the largest intact caldera in the world. This vast crater measures approximately 20 kilometers in diameter and is home to an incredible array of plant and animal species.\n\n'
                          'The most notable feature of the Ngorongoro Crater is its diverse wildlife population. As you explore the area, you can witness the "Big Five" - elephants, lions, leopards, buffalo, and rhinos - in their natural habitat. Other iconic animals found here include zebras, cheetahs, hyenas, hippos, and giraffes. Additionally, over 500 species of birds have been recorded, making it a paradise for birdwatchers.'
      },

        {
          'name': 'Serengeti National Park',
          'image': 'assets/images/serengeti.jpg',
          'description': 'Serengeti National Park is one of the top attractions in Arusha, Tanzania. Known as one of Africas most iconic and diverse wildlife sanctuaries, this national park covers an area of approximately 14,763 square kilometers. Its unique landscapes, abundant wildlife, and awe-inspiring annual migration make it a must-visit destination for nature enthusiasts and wildlife lovers.\n\n'
                          'The park is famous for its vast grasslands, scattered acacia trees, rocky outcrops, and seasonal rivers. It offers visitors a chance to witness an incredible range of wildlife, including the iconic Big Five (lion, leopard, elephant, buffalo, and rhinoceros), zebras, giraffes, cheetahs, hyenas, and many more fascinating species. It is also home to over 500 species of birds, making it a paradise for birdwatchers.\n\n'
                          'The Great Wildebeest Migration is one of the biggest highlights of Serengeti National Park. Every year, around 1.5 million wildebeests, along with hundreds of thousands of zebras and gazelles, migrate in search of fresh grazing and water. This breathtaking spectacle attracts visitors from all over the world who come to witness the incredible river crossings and predator-prey interactions.'
        },            

      ],
      'unpopular': [
        {
          'name': 'Mkomazi National Park',
          'image': 'assets/images/mkomazi.jpg',
          'description': 'Mkomazi National Park, located in the Kilimanjaro region of Tanzania, is a hidden gem for nature enthusiasts and safari lovers. This picturesque park covers an area of over 3,200 square kilometers and is known for its diverse wildlife, stunning landscapes, and rich biodiversity.\n\n'
                        'One of the main attractions of Mkomazi National Park is its incredible array of wildlife. Visitors have the opportunity to spot rare and endangered species such as the African wild dog, black rhino, and cheetah. The park is also home to elephants, lions, giraffes, zebras, and a variety of antelope species, making it a haven for animal lovers and photographers alike.\n\n'
                        'The scenery in Mkomazi National Park is equally breathtaking. The park is situated between the Pare and Usambara Mountains, offering stunning views of rolling hills, vast open plains, and majestic rivers. Whether it is exploring the Athi River, hiking through the savannah, or marveling at the panoramic vistas, visitors are sure to be captivated by the parks natural beauty.'
        },

         {
          'name': 'Lemosho Route',
          'image': 'assets/images/lemosho.jpg',
          'description': 'The Lemosho Route is one of the most popular and scenic routes for climbing Mount Kilimanjaro in Tanzania. This route offers breathtaking views and diverse landscapes, attracting adventure enthusiasts from around the world.\n\n'
                        'Located in the western part of the mountain, the Lemosho Route is known for its natural beauty and lower footfall compared to other routes, making it an ideal choice for those seeking a less crowded climb. The route starts in dense rainforest, gradually ascending through moorland and alpine desert, until reaching the snow-capped summit of Uhuru Peak.\n\n'
                        'The Lemosho Route typically takes around 8-9 days to complete, allowing for better acclimatization and increasing the chance of a successful summit attempt. This longer duration also allows climbers to enjoy the mesmerizing scenery along the way, including the Shira Plateau, the Lava Tower, and the Barranco Wall.'
        },

        {
          'name': 'Maasai Market ',
          'image': 'assets/images/masai.jpg',
          'description': 'The Maasai Market in Arusha, Tanzania is one of the top attractions in the city. This vibrant open-air market offers a unique and authentic shopping experience for tourists.\n\n'
                        'Located in the heart of Arusha, the Maasai Market is a bustling hub for locals and visitors alike. Here, you can find a wide range of traditional Maasai crafts, jewelry, clothing, and artwork. The market is renowned for its colorful beadwork, intricate carvings, and handmade textiles.\n\n'
                        'Apart from shopping, the Maasai Market also offers an opportunity to interact with the local Maasai people. They are known for their warm hospitality and are often willing to share stories and insights about their customs and traditions.'
        },
      ]
    },





     {
      'name': 'Southern Highlands Zone',
      'image': 'assets/images/southern highland.jpg',
      'description': 'Tucked between the coast and Lake Nyasa, Tanzanias Southern Highlands offer cool mountain air, lush tea plantations, and stunning waterfalls. This peaceful region includes Iringa, Njombe, Mbeya, and Ruvuma perfect for travelers wanting to escape the heat and crowds.',
      
      'popular': [
        {
          'name': 'Mbozi Meteorite Field ',
          'image': 'assets/images/mbozi.jpg',
          'description': 'The Mbozi Meteorite Field, located in Mbeya, Tanzania, is one of the most fascinating and unique tourist attractions in the region. This meteorite field, also known as the "Mbozi Holes," is believed to have been created when a meteor shower struck the earths surface millions of years ago.\n\n'
                          'What makes the Mbozi Meteorite Field special is the large number of meteor holes that can be found in the area. These holes, ranging in size from small to large, are scattered across a vast stretch of land and have become a major point of interest for geologists, scientists, and tourists alike.'
        },
        {
          'name': 'Ruaha National Park ',
          'image': 'assets/images/ruahaaa.jpg',
          'description': 'Ruaha National Park, located in Iringa, Tanzania, is a top attraction for nature lovers and wildlife enthusiasts. Covering an area of 20,226 square kilometers, it is the largest national park in Tanzania and offers a truly untamed and remote African wilderness experience.\n\n'
                        'Home to a diverse ecosystem, Ruaha National Park is a wildlife wonderland. It boasts one of the highest concentrations of elephants in East Africa, making it an ideal destination for elephant sightings. Visitors can also spot other incredible wildlife such as lions, leopards, cheetahs, giraffes, zebras, wildebeests, and an impressive variety of bird species.\n\n'
                        'The park is traversed by the Great Ruaha River, which acts as a lifeline for many of the animals. Visitors can take a boat safari or simply watch wildlife gather at the riverbanks, creating a thrilling spectacle of predator-prey interactions.'
        },
      ],
      'unpopular': [
        {
          'name': 'Lake Ngozi Crater Lake',
          'image': 'assets/images/ngozi.jpg',
          'description': 'Lake Ngozi, also known as Lake Nyasa Crater Lake, is one of the main attractions in Mbeya, Tanzania. This captivating destination is located within the beautiful Ngozi Forest Reserve, about 22 kilometers south of Mbeya town. Here are some key details and tourist information about Lake Ngozi Crater Lake.\n\n'
                          'Location and Geography: Nestled at the summit of the dormant Mbeya Peak volcano, Lake Ngozi is one of the few crater lakes in Tanzania. The lake is surrounded by lush green forests, cascading waterfalls, and breathtaking landscapes, offering visitors a serene and picturesque setting.\n\n'
                          'Natural Beauty: Lake Ngozi is renowned for its striking turquoise-blue waters and the spectacular sight of the surrounding crater walls covered with dense vegetation. The lake is home to a variety of diverse flora and fauna, making it a haven for nature lovers and birdwatchers.\n\n'
                          ' Hiking and Trekking: The journey to Lake Ngozi involves an adventurous uphill hike through the thick forest, providing breathtaking panoramic views along the way. The trail is relatively challenging but rewarding, offering an opportunity to immerse yourself in Mbeyas natural wonders.'
        },
        {
          'name': 'Kihansi Falls',
          'image': 'assets/images/kihansi.jpg',
          'description': 'Kihansi Falls is one of the top attractions in Iringa, Tanzania. This breathtaking waterfall is located in the Kihansi Gorge and offers visitors a unique and awe-inspiring experience.\n\n'
                          'The falls are renowned for their beauty and the sheer power of the water cascading down the rocks. With a height of around 800 feet, Kihansi Falls is truly a sight to behold. The mist from the waterfall creates a refreshing and cool environment, making it a perfect retreat from the hot Tanzanian sun.\n\n'
                          'What makes Kihansi Falls even more special is the fact that it is home to a diverse range of plant and animal species. The spray from the water creates a microclimate that supports the growth of various endemic plants, including orchids and ferns. Birdwatchers will also find a haven here, as the falls attract numerous species of birds, some of which are considered rare.\n\n'
                            'To reach Kihansi Falls, visitors can take a short hike through the Kihansi Gorge, which offers stunning views of the surrounding landscape.'
       
        },
      ]
    },




     {
      'name': 'Western Zone',
      'image': 'assets/images/westernZone.jpg',
      'description': 'Tanzania’s Western Zone offers a wild, off-the-beaten-path experience, featuring remote national parks, pristine lakes, and rich cultural history. The zone includes the regions of Kigoma, Katavi.\n\n',
                      //'Kigoma Region is home to Gombe Stream and Mahale Mountains National Parks, renowned for chimpanzee trekking, as well as Lake Tanganyika, perfect for snorkeling and relaxation. Katavi Region boasts Katavi National Park, a secluded wilderness with vast buffalo herds and hippo-filled pools.'
      'popular': [
        {
          'name': 'Gombe Stream National Park ',
          'image': 'assets/images/gombe.jpg',
          'description': 'Gombe Stream National Park, located in Kigoma, Tanzania, is a must-visit destination for nature enthusiasts and wildlife lovers. This national park is renowned for its remarkable biodiversity and its significance as the site where Jane Goodall conducted her pioneering research on chimpanzees.\n\n'
                          'The park covers an area of approximately 52 square kilometers and boasts a diverse ecosystem of tropical rainforest, grasslands, and shoreline along Lake Tanganyika. Its lush and pristine environment provides a home to a variety of wildlife species, with the park being most famous for its chimpanzee population.\n\n'
                          'Visitors to Gombe Stream National Park have the rare opportunity to closely observe and interact with habituated chimpanzee communities. These fascinating primates are known for their intelligence and social behavior, and visitors can join guided trekking tours to observe them in their natural habitat.'
        },

          {
          'name': 'Mahale Mountains National Park',
          'image': 'assets/images/mahale.jpg',
          'description': 'Located in the Kigoma region of Tanzania, Mahale Mountains National Park is one of the countrys top attractions for nature lovers and adventure seekers. This remote and untouched park offers a unique experience for visitors, with its stunning landscapes, diverse wildlife, and extraordinary opportunities for chimpanzee tracking.\n\n'
                          'One of the main highlights of Mahale Mountains National Park is its population of wild chimpanzees. The park is known for its exceptional primate viewing, offering visitors a rare chance to observe these creatures in their natural habitat. Guided chimpanzee tracking tours allow you to witness the chimps captivating behavior up close, offering an unforgettable and educational experience.\n\n'
                          'Aside from the chimpanzees, Mahale Mountains National Park also boasts an impressive range of wildlife and bird species. Game drives and nature walks provide opportunities to spot various animals, including elephants, giraffes, buffalos, and a wide array of monkeys. The park is also a haven for bird enthusiasts, with over 355 species recorded, making it a bird-watching paradise.'
                            'Beyond its diverse wildlife, Mahale Mountains National Park offers mesmerizing landscapes and breathtaking views. '
        },

        {
          'name': 'Lake Tanganyika ',
          'image': 'assets/images/tanganyika.jpg',
          'description': 'Lake Tanganyika, located in Kigoma, Tanzania, is renowned for its breathtaking beauty and captivating wildlife. As the worlds second deepest lake and the longest freshwater lake, it is a popular tourist destination offering a plethora of attractions and activities for visitors to explore\n\n'
                          'One of the main attractions of Lake Tanganyika is its crystal-clear turquoise waters, stretching as far as the eye can see. This natural wonder provides a perfect setting for a variety of water-based activities, such as swimming, snorkeling, and diving. The lake boasts an incredible diversity of fish species, making it a haven for underwater enthusiasts.\n\n'
                          'For wildlife enthusiasts, the surrounding areas of Lake Tanganyika offer abundant opportunities for wildlife spotting. The Mahale Mountains National Park, located on the eastern shore, is home to a significant population of chimpanzees. Here, visitors can embark on guided trekking tours to witness these fascinating creatures in their natural habitat.\n\n'
                          'Additionally, other wildlife species, such as leopard, buffalo, and various bird species, can also be spotted within the park.'
                          'The historic town of Kigoma, situated on the eastern shore of the lake, is another must-visit attraction. Here, tourists can immerse themselves in the rich cultural heritage of the region by exploring traditional markets, visiting historical sites like the Livingstone Museum, or taking part in traditional dances and music performances.'
        },
      ],
      'unpopular': [
        {
          'name': 'Kigoma Railway Station Museum ',
          'image': 'assets/images/kigoma.jpg',
          'description': 'Kigoma Railway Station Museum is one of the top attractions in Kigoma, Tanzania. Located in the heart of the city, this museum showcases the rich history and heritage of the regions railway industry.\n\n'
                          'Once a bustling and important railway station, this historic building has been transformed into a remarkable museum that offers a fascinating insight into the development of the Kigoma railway line. Visitors can explore the museums exhibits, which include photographs, artifacts, and informative displays that depict the construction and operations of the railway.\n\n'
                          'One of the highlights of the museum is the well-preserved old locomotive on display, providing visitors with an up-close look at the machinery that was used during this era. Additionally, there is a collection of vintage railway equipment and tools that offer a glimpse into the daily lives of those who worked on the railway.'
        },  

        {
          'name': 'Katavi National Park',
          'image': 'assets/images/katavi.jpg',
          'description': 'Katavi National Park, located in the western region of Tanzania, was originally designated as a game reserve before being officially established as a national park in 1974. Initially covering an area of 1,823 square kilometers, the park was significantly expanded in 1997 to encompass 4,471 square kilometers.\n\n'
                          'Situated approximately 40 kilometers south of Mpanda town, it ranks as Tanzanias third-largest national park, following the renowned Ruaha and Serengeti parks. The area is historically significant as it was originally home to the Rungwa, Manda, and Kimbu peoples, who were the first custodians of this land, contributing to the areas cultural heritage.'
        },
      ]
    },

     {
      'name': 'Zanzibar',
      'image': 'assets/images/zanzibar.jpg',
      'description': 'Zanzibar is a group of islands near Tanzania, famous for white sandy beaches, clear blue water, and interesting history. The main island has Stone Town, an old city with narrow streets, busy markets, and beautiful old buildings. The beaches in Nungwi and Paje are perfect for swimming, snorkeling, or just relaxing under the sun.',
      'popular': [
        {
          'name': 'Stone Town',
          'image': 'assets/images/stone town.jpg',
          'description': 'Are you planning a trip to Zanzibar and wondering what are the top attractions to visit? Look no further than Stone Town, the heart and soul of Zanzibar Island. This UNESCO World Heritage Site is a fascinating blend of cultures, with influences from Persia, Arabia, India, and Europe\n\n'
                          'Wandering through the narrow, winding streets of Stone Town, you will feel like you have stepped back in time. Immerse yourself in history as you explore the old fortifications, mosques, and historic buildings, adorned with intricately carved wooden doors. Do not miss the iconic House of Wonders, an impressive palace-turned-museum that offers insight into the islands rich history.\n\n'
                          'A visit to Stone Town would not be complete without a trip to the bustling marketplace, known as Darajani Market. Lose yourself in the vibrant colors, exotic spices, and the hustle and bustle of local life. It is the perfect place to try some traditional Zanzibari street food and shop for unique souvenirs to bring back home.\n\n'
        },   

          {
            'name': 'Forodhani Gardens',
          'image': 'assets/images/forodhanii.jpg',
          'description': 'Forodhani Gardens is one of the top attractions in Zanzibar, Tanzania. Located in Stone Town, the capital city of Zanzibar, this beautiful seaside park offers a unique blend of natural beauty and cultural experiences.\n\n'
                          'One of the main highlights of Forodhani Gardens is its vibrant night market. As the sun sets, locals and tourists flock to this popular gathering spot to indulge in a variety of delicious street food. From freshly grilled seafood and Zanzibari snacks to mouthwatering Swahili dishes, the night market is a culinary paradise that will delight any food lover.\n\n'
                            'Aside from its food stalls, Forodhani Gardens is also known for its stunning waterfront promenade. Visitors can take a leisurely stroll along the ocean, enjoying the cool sea breeze and admiring the picturesque view of the Indian Ocean. The gardens are also an ideal spot to relax, with plenty of benches and shaded areas to sit and take in the surroundings.\n\n'
                            'For those interested in Zanzibars rich history and culture, Forodhani Gardens is surrounded by historical landmarks. The Old Fort, also known as Ngome Kongwe, is located just a stones throw away. This well-preserved fortress built in the 17th century offers a glimpse into Zanzibars past and often hosts cultural events and exhibitions.'
          },

        {
          'name': 'Nungwi Beach ',
          'image': 'assets/images/nungwi.jpg',
          'description': 'Nungwi Beach, located in Zanzibar, Tanzania, is one of the top attractions on the island. Known for its stunning white sand and crystal-clear turquoise water, it offers a perfect tropical getaway for beach enthusiasts.\n\n'
                        'Nungwi Beach is beloved by travelers for its breathtaking sunsets, which paint the sky in vibrant shades of orange and pink. It provides a serene and relaxing environment, ideal for sunbathing, swimming, and diving. The beachs calm and clear waters make it a popular spot for snorkeling and exploring the vibrant marine life below.\n\n'
                        'Apart from its natural beauty, Nungwi Beach offers a range of activities and attractions for visitors. Experience traditional sailing on a dhow boat or go deep-sea fishing for an adventurous day out on the Indian Ocean. Visit the nearby Nungwi Village to immerse yourself in the local culture and witness the traditional lifestyle of the Zanzibari people.\n\n'
                        'One of the highlights of Nungwi Beach is the Mnarani Marine Turtle Conservation Pond. Here, visitors can learn about the conservation efforts being made to protect endangered sea turtles and even have the chance to release baby turtles into the ocean, an unforgettable experience for both children and adults.'
        },

        {
          'name': 'Jozani Chwaka Bay National Park ',
          'image': 'assets/images/jozani.jpg',
          'description': 'Jozani Chwaka Bay National Park is a must-visit attraction in Zanzibar, Tanzania, known for its rich biodiversity and stunning natural beauty. Located in the central-eastern part of the island, this national park offers a unique experience for travelers looking to explore Zanzibars diverse ecosystems.\n\n'
                        ' Mangrove Forest: Jozani Chwaka Bay National Park is famous for its extensive mangrove forest, which is home to a variety of plant and animal species. Visitors can take guided walks along the well-marked boardwalks, allowing them to discover the fascinating flora and fauna that thrive in this unique habitat.\n\n'
                        ' Red Colobus Monkeys: One of the main highlights of the park is its population of endangered red colobus monkeys. These playful and curious primates are found only in Zanzibar and are a delight to observe in their natural environment. With the help of knowledgeable guides, visitors can learn about their behavior, habitat, and conservation efforts.\n\n'
                        'Wildlife Spotting: Beyond the red colobus monkeys, Jozani Chwaka Bay National Park is home to other wildlife species, including vervet monkeys, bushbabies, and various bird species. It provides an excellent opportunity for birdwatching and wildlife spotting, making it a paradise for nature enthusiasts and photographers alike.'
        },
      ],

      'unpopular': [
        {
          'name': 'Kendwa Beach',
          'image': 'assets/images/kendwa.jpg',
          'description': 'Kendwa Beach is one of the top attractions in Zanzibar, Tanzania. Located on the northwest coast of the island, this picturesque stretch of white sand and turquoise waters is a paradise for beach lovers and sun-seekers.\n\n'
                          'One of the main highlights of Kendwa Beach is its crystal-clear waters, which are ideal for swimming, snorkeling, and diving. The calm tides and gentle waves make it a safe and enjoyable experience for visitors of all ages. The beach is also popular for various water sports activities such as jet skiing, paddleboarding, and sailing.\n\n'
                          'Aside from its natural beauty, Kendwa Beach offers stunning views, especially during sunset. Watching the golden rays of the sun disappear into the Indian Ocean is a magical experience that should not be missed. The beach is also known for its vibrant nightlife, with beach bars and clubs hosting lively parties and events.\n\n'
                          'Visitors can also indulge in local cuisine as there are several beachside restaurants offering fresh seafood and traditional Zanzibari dishes. It is a great opportunity to savor the flavors of Zanzibar while enjoying the serene beach atmosphere.'
        },
        {
          'name': 'Prison Island',
          'image': 'assets/images/prison.jpg',
          'description': 'Prison Island, also known as Changuu Island, is one of the top attractions in Zanzibar, Tanzania. Located just a short boat ride from Stone Town, this historical site offers a unique experience for visitors.\n\n'
                        'One of the main highlights of Prison Island is the former prison complex that once held rebellious slaves. Today, visitors can explore the ruins of this prison and learn about Zanzibars dark history related to the slave trade. The preserved cells and informational signs provide a glimpse into the islands past.\n\n'
                        'Aside from its historical significance, Prison Island is also famous for its giant tortoises. These majestic creatures, some of which are over a century old, roam freely around the island. Travelers can get up close and personal with these gentle giants, feed them, and even have the chance to hold or ride them. It is a memorable experience that appeals to both adults and children alike.\n\n'
                        'In addition to interacting with the tortoises and exploring the ruins, visitors can enjoy the islands beautiful white sandy beaches. The crystal-clear waters surrounding the island make it perfect for swimming, snorkeling, and sunbathing. The vibrant marine life makes it a popular spot for diving enthusiasts as well.'
        },
      ]
    },
    // Add more zones following the same structure
  ];

  void navigateToZoneDetails(BuildContext context, Map<String, dynamic> zoneData) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ZoneDetailsPage(zoneData: zoneData),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TANZANIA ZONES'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => TourismDashboardApp(),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Visit The Various Regions Of Tanzania',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: zones.length,
                itemBuilder: (context, index) {
                  final zone = zones[index];
                  return Card(
                    elevation: 4,
                    margin: const EdgeInsets.only(bottom: 20),
                    child: InkWell(
                      onTap: () => navigateToZoneDetails(context, zone),
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                            child: Image.asset(
                              zone['image'],
                              width: double.infinity,
                              height: 400,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              zone['name'],
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
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