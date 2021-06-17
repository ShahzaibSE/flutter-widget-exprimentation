import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  const PostCard({ Key? key }) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top:20,bottom:20),
        child: Center(
            child: Card(
              child: Column(
                children: [
                    Container( 
                      // padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(right: 20),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/myDP.jpg'),
                                  maxRadius: 30,
                                )
                              ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text('Shahzaib Noor', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.grey
                                    ))
                                  ),
                                  Container(
                                    child: Text('Smoothie', style: TextStyle(
                                      color: Colors.grey[400],
                                      fontWeight: FontWeight.bold
                                    ),)
                                  )
                                ]
                              )
                            ),
                        ]
                      ),
                      Container(
                          padding: const EdgeInsets.only(bottom:20),
                          child: IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.favorite_rounded)
                          )
                      )
                    ]
                  )
                 ),
                 Container(
                   padding: const EdgeInsets.all(20),
                   child: Stack(
                     children: [
                      //  Expanded(
                      //    child: Container(
                      //      child: Image(image: AssetImage('assets/smoothie.jpeg'), width: 200, height: 200),
                      //    )
                      //  ),
                      //  Expanded(
                      //    child: Container(
                      //      child: Image(image: AssetImage('assets/smoothie.jpeg'), width: 200, height: 200),
                      //    )
                      //  )
                      Align(
                        child: Container(color: Colors.red, width: 100, height: 100),
                        alignment: Alignment.bottomCenter,
                      ),
                      Positioned(
                        child:Container(color: Colors.blue, width: 100, height: 100)
                      )
                     ]
                   )
                 )
                ]
              )
            )
          )
        );
  }
}