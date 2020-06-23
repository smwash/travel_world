import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Destination {
  String imageUrl;
  String destinationname;
  String destinationDesc;
  IconData rating;
  String time;

  Destination(
      {this.time,
      this.destinationDesc,
      this.destinationname,
      this.imageUrl,
      this.rating});
}

List<Destination> places = [
  Destination(
    imageUrl: 'images/baloonland.jpg',
    destinationname: 'Rio de Janeiro',
    destinationDesc:
        'Lorem ipsum dolor sit amet, consectetu,Lorem ipsum dolor sit amet, consectetu sit amet, consectetu',
    rating: (Icons.star),
    time: 'Jan 18, 2018',
  ),
  Destination(
    imageUrl: 'images/mountains.jpg',
    destinationname: 'Nairobi',
    destinationDesc:
        'Lorem ipsum dolor sit amet, consectetu,Lorem ipsum dolor sit amet, consectetu sit amet, consectetu',
    rating: (Icons.star),
    time: 'Dec 20, 2019',
  ),
  Destination(
    imageUrl: 'images/waterfall.jpg',
    destinationname: 'Bali',
    destinationDesc:
        'Lorem ipsum dolor sit amet, consectetu,Lorem ipsum dolor sit amet, consectetu sit amet, consectetu',
    rating: (Icons.star),
    time: 'June 15, 2019',
  ),
  Destination(
    imageUrl: 'images/valley.jpg',
    destinationname: 'Carribean',
    destinationDesc:
        'Lorem ipsum dolor sit amet, consectetu,Lorem ipsum dolor sit amet, consectetu sit amet, consectetu',
    rating: (Icons.star),
    time: 'Sep 10, 2018',
  ),
  Destination(
    imageUrl: 'images/sunset.jpg',
    destinationname: 'New York City',
    destinationDesc:
        'Lorem ipsum dolor sit amet, consectetu,Lorem ipsum dolor sit amet, consectetu sit amet, consectetu',
    rating: (Icons.star),
    time: 'May 20, 2017',
  ),
];
