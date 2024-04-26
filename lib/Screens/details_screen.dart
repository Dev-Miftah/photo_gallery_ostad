import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_gallery_ostad/Gallery_Data/suggestion_model.dart';
import '../Constant/colors.dart';
import '../Gallery_Data/gallery_model.dart';

class DetailsScreen extends StatefulWidget {
  final GalleryModel galleryModel;

  DetailsScreen({required this.galleryModel});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColors,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          widget.galleryModel.galleryName!,
          style: const TextStyle(
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
            child: Center(
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new),
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
        if (orientation == Orientation.portrait) {
          return PortraitOrientation(context, widget.galleryModel);
        } else {
          return LandscapeOrientation(context, widget.galleryModel);
        }
      }),
    );
  }
}

Widget PortraitOrientation(BuildContext context, galleryModel) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          child: Container(
            width: 390,
            height: 325,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(galleryModel.imagePath!),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.50),
                    spreadRadius: 0,
                    blurRadius: 35,
                    offset: const Offset(5, 12),
                    blurStyle: BlurStyle.normal,
                  )
                ],
                color: Colors.black),
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Text(
            galleryModel.galleryTitle!,
            style: const TextStyle(
              fontSize: 24,
              color: blackColors,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Text(
            galleryModel.galleryDescription!,
            style: const TextStyle(
              fontSize: 15,
              color: blackColors,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 60),
                backgroundColor: themeColors,
                foregroundColor: Colors.white,
                textStyle:
                const TextStyle(fontSize: 20, letterSpacing: 0.5),
                elevation: 15,
              ),
              child: const Text(
                'See More',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              )),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Text(
            'Suggestions',
            style: TextStyle(
              fontSize: 20,
              color: themeColors,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 12),
            child: Row(
                children: suggestionData.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: NetworkImage(e.imagePath!),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.25),
                                BlendMode.darken),
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
                          e.galleryName!,
                          style: const TextStyle(
                            fontSize: 20,
                            color: whiteColors,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList()),
          ),
        )
      ],
    ),
  );
}

Widget LandscapeOrientation(BuildContext context, galleryModel) {
  return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(
                width: 370,
                height: 298,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage(galleryModel.imagePath!),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.50),
                        spreadRadius: 0,
                        blurRadius: 35,
                        offset: const Offset(5, 12),
                        blurStyle: BlurStyle.normal,
                      )
                    ],
                    color: Colors.black),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 10,
                    ),
                    child: Text(
                      galleryModel.galleryTitle!,
                      style: const TextStyle(
                        fontSize: 24,
                        color: blackColors,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      galleryModel.galleryDescription!,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontSize: 15,
                        color: blackColors,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width, 60),
                          backgroundColor: themeColors,
                          foregroundColor: Colors.white,
                          textStyle:
                          const TextStyle(fontSize: 20, letterSpacing: 0.5),
                          elevation: 15,
                        ),
                        child: const Text(
                          'See More',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Text(
                      'Suggestions',
                      style: TextStyle(
                        fontSize: 20,
                        color: themeColors,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Row(
                          children: suggestionData.map((e) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                      image: NetworkImage(e.imagePath!),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.25),
                                          BlendMode.darken),
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
                                    e.galleryName!,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: whiteColors,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).toList()),
                    ),
                  )
                ],
              ),
            )
          ]));
}
