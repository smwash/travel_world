import 'package:flutter/material.dart';
import 'package:travel_world/constants.dart';
import 'package:travel_world/widgets/destinationCategory.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.short_text, color: Colors.black87, size: 35.0),
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage(
                        'images/women-s-white-and-black-button-up-collared-shirt-774909.jpg'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'My travel',
                  style: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 1.1,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat-SemiBold'),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Travels in the last month',
                    style: TextStyle(fontSize: 18.0, color: Colors.black54),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                        fontSize: 16.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            ListBuilder(),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Destinations',
                      style: TextStyle(
                          fontSize: 25.0,
                          letterSpacing: 1.1,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat-SemiBold'),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Destinations int he last month',
                        style: TextStyle(fontSize: 16.5, color: Colors.black45),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'January 2019',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: kPrimaryColor,
                                fontSize: 15.0),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: kPrimaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 12.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 10),
                                blurRadius: 6.0),
                          ],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Icon(
                          Icons.airplanemode_active,
                          color: kPrimaryColor,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 13.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 10),
                                blurRadius: 6.0),
                          ],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: kPrimaryColor,
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  'Fri, January 18',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Peru -PER',
                              style: TextStyle(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
