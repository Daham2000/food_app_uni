import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchFoodCard extends StatelessWidget {
  final String img;
  final String description;
  final String price;
  final String title;

  const SearchFoodCard(
      {Key? key,
      required this.img,
      required this.description,
      required this.price,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = 90;

    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black,
        width: 1,
      )),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: width * 0.3,
            child: Image.network(img),
          ),
          const SizedBox(
            width: 5.0,
          ),
          Container(
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.roboto(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: width * 0.5,
                      child: Text(
                        description,
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.roboto(
                          fontSize: 11.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      price,
                      textAlign: TextAlign.end,
                      style: GoogleFonts.roboto(
                        fontSize: 11.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
