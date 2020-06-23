import 'package:flutter/material.dart';
import 'package:travel_world/model/destination.dart';

class ListBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.26,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: places.length,
          itemBuilder: (context, index) {
            var height = MediaQuery.of(context).size.height;
            Destination place = places[index];
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      place.imageUrl,
                      width: MediaQuery.of(context).size.width * 0.33,
                      height: MediaQuery.of(context).size.height * 0.26,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 8.0,
                    left: 10.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          place.destinationname,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          place.time,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                              color: Colors.white70),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
