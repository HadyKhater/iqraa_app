import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomProfileImage extends StatefulWidget {
  const CustomProfileImage({super.key});

  @override
  State<CustomProfileImage> createState() => _CustomProfileImageState();
}

class _CustomProfileImageState extends State<CustomProfileImage> {
  Uint8List? image;
  File? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            image != null
                ? CircleAvatar(
                    radius: 65.0.r, backgroundImage: MemoryImage(image!))
                : CircleAvatar(
                    radius: 65.0.r,
                    backgroundImage: const NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/149/149071.png'),
                  ),
            SizedBox(
              height: 12.0.h,
            ),
            CustomText(
                title: 'هادي خاطر',
                fontSize: 24.0.sp,
                fontWeight: FontWeight.w700,
                colorText: kSecondColor)
          ],
        ),
        Positioned(
          child: GestureDetector(
            onTap: () {
              showImagePickerOption(context);
            },
            child: Container(
              width: 25.0.w,
              height: 25.0.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: kPrimaryColor),
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ),
          top: 90,
          left: 105,
        ),
      ],
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [
                kPrimaryColor,
                Colors.purple
              ], // Define your gradient colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4.5,
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    pickImageFromGallery();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SizedBox(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.image,
                            size: 60,
                            color: Colors.white,
                          ),
                          CustomText(
                              title: 'الصور',
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.w600,
                              colorText: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    pickImageFromCamira();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SizedBox(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.camera_alt_rounded,
                            size: 60,
                            color: Colors.white,
                          ),
                          CustomText(
                              title: 'الكاميرا',
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.w600,
                              colorText: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
// Gallery
  Future pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.pop(context);
  }
//Camira
  Future pickImageFromCamira() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.pop(context);
  }
}
