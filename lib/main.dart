import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const url =
    'https://imgd.aeplcdn.com/1200x900/n/cw/ec/14054/huracan-evo-exterior-right-front-three-quarter-3.jpeg?isig=0&q=80';
const url3 =
    'https://whc.unesco.org/uploads/thumbs/site_0798_0006-1000-627-20120827171714.jpg';
const sundarban =
'''The Sundarbans mangrove forest, one of the largest such forests in the world (140,000 ha), lies on the delta of the Ganges, Brahmaputra and Meghna rivers on the Bay of Bengal. It is adjacent to the border of India’s Sundarbans World Heritage site inscribed in 1987. The site is intersected by a complex network of tidal waterways, mudflats and small islands of salt-tolerant mangrove forests, and presents an excellent example of ongoing ecological processes. The area is known for its wide range of fauna, including 260 bird species, the Bengal tiger and other threatened species such as the estuarine crocodile and the Indian python.''';
void main() {
  runApp(MaterialApp(
      // home: Scaffold(
      //   appBar: AppBar(
      //       backgroundColor: Colors.black,
      //       title: Text(
      //         'Homepage',
      //         style: TextStyle(color: Colors.white),
      //       )),
      //     //Center can only take 1 child widget
      //   // body: Center(
      //   //   child: Image.network(url,width: 300,height: 300, fit: BoxFit.cover,),
      //   // ),
      //
      //     //Colum and row Widgets
      //   body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Image.network(url, width:double.infinity,height:300),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Icon(Icons.share, size: 50,color: Colors.orange,),
      //           Icon(Icons.linked_camera, size: 50,color: Colors.orange,),
      //           Icon(Icons.dashboard_customize_outlined, size: 50,color: Colors.orange,)
      //         ]
      //       ),
      //       Text('My new Car', style: TextStyle(fontSize: 30,)),
      //     ],
      //   )

      home: Scaffold(
    body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Image.network(
            url3,
            width: double.infinity,
          height: 200,
          fit: BoxFit.fill,
        ),
        Padding(padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('The Sundarbans',style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20),),
                Text('The Sundarbans', style: TextStyle(
                  fontSize:16, color: Colors.grey
                ),)
              ],
            ),
            Spacer(),
              Icon(Icons.favorite, color: Colors.yellow,),
              Text('4.5')
          ],
        )),
            Padding(padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.call,color: Colors.blue,size: 30,),
                    Text('Call',style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),)
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.favorite,color: Colors.blue,size: 30,),
                    Text('Save',style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),)
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share,color: Colors.blue,size: 30,),
                    Text('Share',style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),)
                  ],
                )
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(sundarban,style: TextStyle(fontSize: 18),),
            )
            
          ],
    )),
  )));
}
