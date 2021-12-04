import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black87,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.search,
                  color: Colors.white,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Search',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.film,
                  color: Colors.white,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Coming soon',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.download_circle,
                  color: Colors.white,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Downloads',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.list_bullet,
                  color: Colors.white,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Categories',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )),
          ]),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              backgroundColor: Colors.black,
              leading: Image.network(
                'https://www.edigitalagency.com.au/wp-content/uploads/Netflix-logo-red-black-png.png',
                scale: 1,
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right:3.0),
                  child: MaterialButton(onPressed: (){},
                  child: Text('TV Shows',style: TextStyle(color: Colors.white,fontSize: 15),),
                  
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:3.0),
                  child: MaterialButton(onPressed: (){},
                  child: Text('Movies',style: TextStyle(color: Colors.white,fontSize: 15),),
                  
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:3.0),
                  child: MaterialButton(onPressed: (){},
                  child: Text('My List',style: TextStyle(color: Colors.white,fontSize: 15),),
                  
                  ),
                ),
              ],
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 380,
                  child: Image.network('https://m.media-amazon.com/images/I/81jearr3JXL._SL1425_.jpg',),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(onPressed: null,
                      child: Column(children: <Widget>[
                        Icon(Icons.add,color: Colors.white,size: 42,),
                        Text("Add to List",style: TextStyle(color: Colors.white,fontSize: 12),)
                      ],),
                      ),
                      ElevatedButton(onPressed: null, child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.play_arrow,color: Colors.black,size: 35,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Play",style: TextStyle(color: Colors.black,fontSize: 15),),
                              ),
                            ],
                          ),
                        ),
                      )),
                      MaterialButton(onPressed: null,
                      child: Column(children: <Widget>[
                        Icon(CupertinoIcons.info,color: Colors.white,size: 42,),
                        Text("Info",style: TextStyle(color: Colors.white,fontSize: 12),)
                      ],),
                      ),
                    ],
                  ),
                ),
              )
              
        ],
      ),
    );
  }
}
