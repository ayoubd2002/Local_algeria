class hotelmodel {
  final String location, hotelname,hotelimage, desc;
  final int distance,stars,price,numberofreview;
  


  hotelmodel(this.stars, this.numberofreview, {
    required this.location,
    required this.hotelname,
    required this.hotelimage,
    required this.desc,
    required this.distance,
    required this.price,
  });
}