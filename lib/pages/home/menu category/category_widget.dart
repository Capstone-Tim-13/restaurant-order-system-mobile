import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Category extends StatelessWidget {
  final String imagepath;
  final String title;
  const Category({
    super.key,
    required this.imagepath, required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Card(
     child: Container(
       width: 194,
       height:60,
       decoration:BoxDecoration (
       color: Color(0XFFFFFFFF),
       borderRadius: BorderRadius.circular(10)
       ),
       child: Row(
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 8.5, bottom: 8.5, left: 22),
             child: Image.asset(imagepath,
             height: 43,
             width: 62,
             ),
           ),
           SizedBox(
             width: 10,
           ),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 20, bottom: 20),
                 child: Text(title,
                 style: GoogleFonts.poppins(
                   fontWeight: FontWeight.w500,
                   fontSize: 13, ),
                   ),
               ),
             ],
           )
         ],
       ),),);
  }
}
