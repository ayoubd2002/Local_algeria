class placeinfo {
  final String location, name, image, desc;
  final int distance, days;

  placeinfo({
    required this.location,
    required this.name,
    required this.image,
    required this.desc,
    required this.distance,
    required this.days,
  });
}

List places = [
  placeinfo(
      location: 'algeria',
      name: 'algeria',
      image: 'assets/alg.jpg',
      desc:
          'Towering over Algiers, Maqam Echahid, aptly named the Martyrs Memorial, a landmark etched in both concrete and memory. Its three colossal palm fronds, reaching  meters skyward, symbolize the unity of industry, culture, and agriculture that form the backbone of modern Algeria But their soaring elegance belies a deeper purpose',
      distance: 200,
      days: 1),
  placeinfo(
      location: 'algeria',
      name: 'oran',
      image: 'assets/hotel.jfif',
      desc: 'this is makaam al chahid ',
      distance: 200,
      days: 1),
  placeinfo(
      location: 'algeria',
      name: 'annaba',
      image: 'assets/forests.jpeg',
      desc: 'this is makaam al chahid ',
      distance: 200,
      days: 1),
  placeinfo(
      location: 'algeria',
      name: 'setif',
      image: 'assets/Kyoto-Japan.jpeg',
      desc: 'this is makaam al chahid ',
      distance: 200,
      days: 1),
];
