import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            snap: false,
            backgroundColor: Colors.black,
            title: Container(
              height: 100,
              width: 120,
              child: Image.asset(
                'assets/img/Logo.png',
                height: 50,
              ),
            ),
            actions: [
              Icon(Icons.connected_tv, size: 25, color: Colors.white),
              SizedBox(width: 20),
              Icon(Icons.notifications_none, size: 25, color: Colors.white),
              SizedBox(width: 15),
              Icon(Icons.search_rounded, size: 25, color: Colors.white),
              SizedBox(width: 10),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Column(
                children: [
                  CupertinoButton( 
                    padding: EdgeInsets.all(0),
                    onPressed: () {

                  },child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Img[index]['img']),
                            fit: BoxFit.cover)),
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(Img[index]['logo']),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "आख़िर किसे Society में देखकर बदल गए Jetha के तेवर? | Taarak Mehta Ka Ooltah Chashmah | 4 May 2024",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  height: 1
                                ),
                              ),

                              Text(
                                "Nayan desai official .245 views.22hours ago",
                                overflow: TextOverflow.ellipsis,
                                style:
                                    TextStyle(
                                        height: 1.8,
                                        fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.more_vert_rounded,
                          size: 22,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
              childCount: Img.length, // Assuming 20 items for demonstration
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 55,
        decoration: BoxDecoration(color: Colors.black, boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 0.5,
          )
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(height: 5,),
                Icon(Icons.home_outlined,color: Colors.white,size: 30,),
                Text("Home",style: TextStyle(
                    color: Colors.white,
                    fontSize: 10
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
