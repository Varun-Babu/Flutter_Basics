import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const url =
    'https://imgd.aeplcdn.com/1200x900/n/cw/ec/14054/huracan-evo-exterior-right-front-three-quarter-3.jpeg?isig=0&q=80';
const url3 =
    'https://whc.unesco.org/uploads/thumbs/site_0798_0006-1000-627-20120827171714.jpg';
const sundarban =
    '''The Sundarbans mangrove forest, one of the largest such forests in the world (140,000 ha), lies on the delta of the Ganges, Brahmaputra and Meghna rivers on the Bay of Bengal. It is adjacent to the border of India’s Sundarbans World Heritage site inscribed in 1987. The site is intersected by a complex network of tidal waterways, mudflats and small islands of salt-tolerant mangrove forests, and presents an excellent example of ongoing ecological processes. The area is known for its wide range of fauna, including 260 bird species, the Bengal tiger and other threatened species such as the estuarine crocodile and the Indian python.''';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                url3,
                width: double.infinity,
                height: 200,
                fit: BoxFit.fill,
              ),
              Positioned.fill(
                child: Center(
                    child: Text('Visit now',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              ),
              Positioned(
                right: 10,
                bottom: 10,
                child: IconButton.filled(icon: Icon(
                  Icons.travel_explore, color: Colors.white,
                ), onPressed: (){},) ,
              )
            ],
          ),
          _header(),
          _actions(),
          _body()
        ],
      )),
    );
  }

  Padding _body() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        sundarban,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Padding _actions() {
    return Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(
                  Icons.call,
                  color: Colors.blue,
                  size: 30,
                ),
                Text(
                  'Call',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.blue,
                  size: 30,
                ),
                Text(
                  'Save',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.share,
                  color: Colors.blue,
                  size: 30,
                ),
                Text(
                  'Share',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ));
  }

  Padding _header() {
    return Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The Sundarbans',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'The Sundarbans',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )
              ],
            ),
            Spacer(),
            Icon(
              Icons.favorite,
              color: Colors.yellow,
            ),
            Text('4.5')
          ],
        ));
  }
}
