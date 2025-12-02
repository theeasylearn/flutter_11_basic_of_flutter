import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
class CameraGallaryImage extends StatefulWidget {

  @override
  State<CameraGallaryImage> createState() => _CameraGallaryImageState();
}

class _CameraGallaryImageState extends State<CameraGallaryImage> {
  XFile? imageFile = null;
  final ImagePicker _picker = ImagePicker();  // Picker instance
  Future<void> _takePhoto() async {
    try {
      final XFile? photo = await _picker.pickImage(
        source: ImageSource.camera,
        preferredCameraDevice: CameraDevice.rear,
        // Use front or rear
        imageQuality: 85,
        // Optional: reduce file size
        maxWidth: 1920,
        // Optional: resize
        maxHeight: 1080,
      );

      if (photo != null) {
        setState(() {
          imageFile = photo;
        });
      }
    } on PlatformException catch (e) {
      if (mounted) {
        String message = 'Failed to take photo';
        if (e.code == 'camera_access_denied') {
          message = 'Camera permission denied';
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message), backgroundColor: Colors.red),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
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
              child: Padding(padding: EdgeInsets.all(10),
              child: Card(
                  elevation: 10,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                          SizedBox(
                            width: double.infinity,
                            height: 400,
                            child: DisplayTextOrImage(),
                          ),
                          ElevatedButton(onPressed: () async {
                              try {
                                final XFile? pickedFile = await _picker.pickImage(
                                  source: ImageSource.gallery,  // Use ImageSource.camera for camera
                                );
                                if (pickedFile != null) {
                                  setState(() {
                                    imageFile = pickedFile;
                                  });
                                }
                              } catch (e) {
                                if (mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Error picking image: $e')),
                                  );
                                }
                              }
                            },
                              child: Text("Select Photo")
                          ),
                        ElevatedButton(onPressed: () => _takePhoto() ,
                            child: Text("Capture photo"))
                      ],
                  ),
              ),
              ),

          ),
      ),
    );
  }

  Widget DisplayTextOrImage() {
    if (imageFile == null) {
      return Center(
        child: Image.asset("images/picture.png",height: 200,width: 200,),
      );
    } else {
      return Image.file(
        File(imageFile!.path),
        fit: BoxFit.cover,
      );
    }
  }

}
