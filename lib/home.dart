import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_using_api/models/news_headline.dart';
import 'package:news_app_using_api/news_view_model/news_view_model.dart';
import 'package:news_app_using_api/repository/respository.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;

    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          ),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Today News',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: height * .5,
              width: width,
              color: Colors.amber,
              child: FutureBuilder<List<Articles>>(
                  future: NewsRespository().fetchNewsHeadline(),
                  builder: (BuildContext context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: SpinKitCircle(color: Colors.blue, size: 20),
                      );
                    } else {
                      var res = snapshot.data;
                      return ListView.builder(
                          itemCount: res!.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    child: CachedNetworkImage(
                                        imageUrl:
                                            res[index].urlToImage.toString()),
                                  )
                                ],
                              ),
                            );
                          });
                    }
                    ;
                  }),
            )
          ],
        ));
  }
}
