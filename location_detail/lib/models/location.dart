import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(
        1,
        'Kiyomizu-dera',
        'assets/images/Kiyomizu-dera.jpg',
        [
          LocationFact('Summary',
              'Kiyomuzu-dera, officially Otawa-san kiyomuzu-dera, is an independent Buddhist temple in eastern kyoto'),
          LocationFact('Architectural Style', 'Japansese Buddist architecture'),
        ],
      ),
      Location(
        2,
        'Mount Fuji',
        'assets/images/mt-fuji.jpg',
        [
          LocationFact('Summary',
              'Japan\'s Mt. Fuji is an active volcano 100 kilometers southwest of tokyo, Commonly called "Fuji-san"'),
          LocationFact('Did you know',
              'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujiro...'),
        ],
      ),
      Location(
        3,
        'Arashiyama Bamboo Groove',
        'assets/images/arashiyama-bamboo-grove.jpg',
        [
          LocationFact('Summary',
              'While we could go about the eternal glow and seemingly endless heights of this bamboo groove on the outer '),
          LocationFact('How do we get there',
              'Kyoto airport, with serval terminals, is located 16 kilometers south of the city and is also known as kyoto'),
        ],
      ),
    ];
  }

  static Location? fetchByID(int locationID) {
    // fetch all locations, iterate them and when we find the location
    // and when we find the location with the id we want, return immediately

    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
