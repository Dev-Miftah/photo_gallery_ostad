import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_gallery_ostad/Constant/colors.dart';
import 'package:photo_gallery_ostad/Gallery_Data/gallery_model.dart';
import 'package:photo_gallery_ostad/Screens/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColors,
        centerTitle: true,
        title: const Text(
          'Photo Gallery',
          style: TextStyle(
            color: whiteColors,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: const Color(0xFF7ACA5E),
                borderRadius: BorderRadius.circular(10.0)),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                color: whiteColors,
              ),
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert_sharp,
            color: whiteColors,
          )
        ],
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GridView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: galleryData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: orientation == Orientation.landscape ? 4 : 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 25),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(galleryModel: galleryData[index]),
                      ));
                },
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        // image: NetworkImage(galleryData[index].imagePath!),
                        image: CachedNetworkImageProvider(
                            galleryData[index].imagePath!),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.25), BlendMode.darken),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.50),
                          spreadRadius: 0,
                          blurRadius: 30,
                          offset: const Offset(0, 15),
                          blurStyle: BlurStyle.normal,
                        )
                      ],
                      color: Colors.black),
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 15),
                    child: Text(
                      galleryData[index].galleryName!,
                      style: const TextStyle(
                        fontSize: 20,
                        color: whiteColors,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
