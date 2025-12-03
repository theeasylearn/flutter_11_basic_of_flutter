import 'dart:io';

import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:url_launcher/url_launcher.dart';

// https://pub.dev/packages/location
class getUserLocation extends StatefulWidget {
  @override
  State<getUserLocation> createState() => _getUserLocationState();
}

class _getUserLocationState extends State<getUserLocation> {
  final Location _location = Location();
  LocationData? _locationData;
  bool isLocationFetched = false;
  String _message = 'Press the button to fetch your location.';

  Future<void> _getLocation() async {
    // Step 1: Check if location service is enabled
    bool serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _location.requestService();
      if (!serviceEnabled) {
        setState(() {
          _message = 'Location service is disabled.';
        });
        return;
      }
    }

    // Step 2: Check permission status
    PermissionStatus permissionGranted = await _location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await _location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        setState(() {
          _message = 'Location permission denied.';
        });
        ;
      }
    }

    // Step 3: Fetch the current location
    try {
      LocationData locationData = await _location.getLocation();
      setState(() {
        _locationData = locationData;
        _message = "Latitude " +
            locationData.latitude.toString() +
            "\n Longitude" +
            locationData.longitude.toString() +
            "\n Altitude " +
            locationData.altitude.toString() +
            "\n accurecy " +
            locationData.accuracy.toString();
        isLocationFetched = true;
      });
    } catch (e) {
      setState(() {
        _message = 'Error fetching location: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Capture Image"),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.80,
          height: MediaQuery.of(context).size.height * 0.70,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _getLocation();
                      },
                      child: Text("fetch my current location")),
                  ElevatedButton(
                      onPressed: () async {
                        final double lat = _locationData!.latitude!;
                        final double lng = _locationData!.longitude!;

                        // This URL opens Google Maps app (if installed) or web fallback
                        final url = Uri.parse(
                          'https://www.google.com/maps/search/?api=1&query=$lat,$lng',
                        );
                        // Alternative (shows pin + label):
                        // 'https://www.google.com/maps?q=$lat,$lng(I+Am+Here)&z=16';


                        try {
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url, mode: LaunchMode.externalApplication);
                          } else {
                            throw 'Could not launch $url';
                          }
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Could not open Maps: $e')),
                          );
                        }
                      },
                      child: Text("Display user location on map")),
                  FittedBox(
                    child: Text("your location \n $_message"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
