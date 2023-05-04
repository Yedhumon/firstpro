import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
class search1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(10),
  child: Container(


    child: Column(
      children: [
        Padding(padding: EdgeInsets.all(5),
          child:  TextFormField(
            decoration: InputDecoration(
                labelText: "Book Name",
                hintText: "Enter Book Name",
                border: OutlineInputBorder()
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Author Name",
                  hintText: "Enter Author Name",
                  border: OutlineInputBorder()
              ),
            )
        ),
        Padding(padding: EdgeInsets.all(5),
          child: TextFormField(
            decoration: InputDecoration(
                labelText: "Publishing Year",
                hintText: "Enter Publishing Year(Optional)",
                border: OutlineInputBorder()
            ),
          ),
        )
        ,Padding(padding: EdgeInsets.all(5),
          child: TextFormField(
            decoration: InputDecoration(
                labelText: "Catagory",
                hintText: "Enter Catagory(eg: Story, Poem, Novel)",
                border: OutlineInputBorder()
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
            child:


            ElevatedButton(onPressed: (){},
                child: Text("Submit"))
        ),


    ImageSlideshow(
        width: double.infinity,
        disableUserScrolling: true,
        indicatorColor: Colors.blue,
        height: 250,
        initialPage: 0,
        children: [
          Image.asset("L15.jpg"),
          Image.asset("l13.jpg"),
          Image.asset("L14.jpg"),
          Image.asset("L12.jpg"),
          Image.asset("L11.jpg"),

        ],

        autoPlayInterval: 3000,
        isLoop: true,


      ),

]
  )


  ),
  
  );

  }
}