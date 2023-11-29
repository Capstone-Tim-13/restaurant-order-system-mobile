import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class AppetizerItemsWidget extends StatelessWidget {
  final String imagePath;
  final String nameFood;
  final String description;
  final String price;

  
  const AppetizerItemsWidget({
    Key? key,
    required this.imagePath,
    required this.nameFood,
    required this.description,
    required this.price,
    }): super(key: key);

  @override
  Widget build(BuildContext context) {
      double screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 21),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: screenwidth,
              height: 120,
              decoration: BoxDecoration(
                color: Color(0xFFFEFEFE),
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        imagePath,
                        height: 110,
                        width: 110,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: screenwidth,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                          
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: Text(
                                        nameFood,
                                        style: TextStyle(
                                          fontSize: 16,
                                          
                                          //fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                  ),
                                    
                                   SvgPicture.asset(
                          "assets/svgs/heart.svg",
                          height: 18,
                          width: 20,
                          // ignore: deprecated_member_use
                          color: Colors.grey[300],
                     )
                                ],
                              ),
                                 Text(
                                 description,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF010F07).withOpacity(0.5),
                                    //fontWeight: FontWeight.normal,
                                  ),
                                ),
                                
                                
                                Row(
                                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 62),
                                    child: Text(price,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color:  Color(0xff783525),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    ),
                                  ),
                                 // SizedBox(width: 62),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 63,
                                      height: 26,
                                      decoration: BoxDecoration(
                                        color: Color(0xff783525), 
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: const Center(
                                        child: Text('+ Add',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white
                                        ),),
                                      ),
                                    ),
                                  )
                                                                 
                                 ],
                                                                 ),
                              ]
                             ),
                      ),
                         ),
                        
                  ),
                       
              
                  
                ],
               ),
            ),
          ),
        ],
      ),
    );
  }
}

