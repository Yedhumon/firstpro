import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10,
              bottom: 5,
              child: Container(
            width: 150,
                height: 600,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset("L1.jpg",fit: BoxFit.fitHeight,),
          )),
          Positioned(
            left: 180,
              bottom: 5,
              child: Container(
            width: 250,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Image.asset("L9.jpg",fit: BoxFit.fitHeight,),
          )),
          Positioned(
            left: 450,
              bottom: 5,
              child: Container(
                width: 150,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Image.asset("L6.jpg",fit: BoxFit.fitHeight,),

          )),
          Positioned(
              left: 500,
              top: 50,
              child: Container(
                width: 500,
                height: 400,
                child: Text("A library is a collection of materials, books or media that are accessible for use and not just for display purposes. A library provides physical (hard copies) or digital access (soft copies) materials, and may be a physical location or a virtual space, or both. A library's collection can include printed materials and other physical resources in many formats such as DVD, CD and cassette as well as access to information, music or other content held on bibliographic databases.",style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic,color: Colors.white),)),
          ),
          Positioned(
              left: 600,
              bottom: 5,
              child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(
              height: 250,
              width: 500,
            ),

            child:  ImageSlideshow(
              width: double.infinity,
              disableUserScrolling: true,
              indicatorColor: Colors.blue,
              height: 300,
              initialPage: 0,
              children: [
                Image.asset("L2.jpg"),
                Image.asset("l3.jpg"),
                Image.asset("L4.jpg"),
                Image.asset("L5.jpg"),
                Image.asset("L1.jpg"),

              ],

              autoPlayInterval: 3000,
              isLoop: true,


            ),


          ))
        ]
      ),
    );

  }
}